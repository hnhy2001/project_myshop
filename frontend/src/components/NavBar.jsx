import React, { useState, useEffect } from "react";
import logo from "./image/logo.png";
import { Input, Button, Avatar, Modal, Tooltip, Popover, message } from "antd";
import {
  BellOutlined,
  ShoppingCartOutlined,
  LogoutOutlined,
} from "@ant-design/icons";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";
import Login from "./Login";
import Register from "./Register";
import { getRequest, postRequest } from "../hooks/api";
import { useStore } from "../hooks/store";
const NavBarStyle = styled.div`
  display: flex;
  max-width: 100vw;
  flex-direction: row;
  justify-content: space-between;
  margin: 0 auto;
  padding: 10px;
  background-color: #e8e8e8 ;  
  
`;

const { Search } = Input;
export default function NavBar() {
  const [visible, setVisible] = useState(false);
  const [content, setContent] = useState("Chưa có thông báo");
  const [isLogin, setIsLogin] = useState(true);
  const [userName, setUserName] = useState();
  const [isAdmin, setIsAdmin]= useState(false)
  const [setProducts,setLoading] = useStore(state=> [state.setProducts, state.setLoading])
  const navigate = useNavigate();

  useEffect(() => {
    const getUser = async () => {
      await getRequest("/user/" +localStorage.getItem("id") + "/")
        .then((data) => {setUserName(data.username)})
        .catch((err) => console.log());
    };
    getUser();
  }, []);

  const handleLogo = async() => {
    navigate("/");
    await getRequest("/product/get_all/")
        .then((data) => {setProducts(data);})
        .catch((err) => console.log());
  };

  const handleLogin = () => {
    setVisible(true);
  };

  const onCancel = () => {
    setVisible(false);
  };

  return (
    <NavBarStyle>
      <Modal visible={visible} footer={null} onCancel={onCancel}>
        {isLogin ? (
          <>
            <Login onCancel={onCancel} setUserName={setUserName} setIsAdmin={setIsAdmin}/>
            <p style={{ borderTop: "1px solid #efefef" }}>
              Do not have an account?
              <Button type="link" onClick={() => setIsLogin(false)}>
                Register
              </Button>
            </p>
          </>
        ) : (
          <>
            <Register onCancel={onCancel} />
            <p style={{ borderTop: "1px solid #efefef" }}>
              Do you already have an account?
              <Button type="link" style={{color:"#f0aa14"}} onClick={() => setIsLogin(true)}>
                Login
              </Button>
            </p>
          </>
        )}
      </Modal>
      <div style={{ display: "flex", alignItems: "center" }}>
        <img
          src={logo}
          alt="logo"
          style={{ width: "150px", marginRight: "40px", cursor: "pointer", height: "55px", }}
          onClick={handleLogo}
        />
        <Search
          placeholder="Search . . ."
          onSearch={async (value) => {
            setLoading(true)
            await postRequest("/product/search/",{
              content: value
            })
            .then(data => {setProducts(data);setLoading(false)})
            .catch(err=>{message.warning("Không tồn tại sản phẩm");setLoading(false)})
          }}
          style={{ width: "400px",}}
          
        />
      </div>
      {!userName ? (
        <div>
          <Button style={{backgroundColor: "#f0aa14", color:"white", marginTop:"10px",borderRadius:"10px"}} onClick={handleLogin}>
            Login/Register
          </Button>
        </div>
      ) : (
        <div style={{ display: "flex", alignItems: "center", gap: "2px" }}>
          <Tooltip placement="bottom" title={userName}>
            <Avatar
              size={35}
              style={{ marginRight: "10px", cursor: "pointer",backgroundColor: '#87d068' }}
              // src="https://getbootstrap.com.vn/blog/wp-content/uploads/2020/02/min-la-ai.jpg"
            >
              {userName?.toUpperCase()[0]}
            </Avatar>
          </Tooltip>
          {
            !isAdmin &&
            <>
          <Popover
            content={content}
            title="Thông báo"
            trigger="click"
          >
            <Button type="text" onClick={()=>{
              getRequest("/notication/")
              .then(data=>{
                  const notication = data.results.filter(e=>e.user == localStorage.getItem("id"))
                  let noti =[]
                  for (let index = notication.length-1; index >=0; index--) {
                    noti.push(<p>{notication[index].content}</p>)
                  }
                  let dt = (<div style={{height: "200px", overflowY: "auto"}}>
                    {noti}
                  </div>)
                  setContent(dt)
              })
              .catch(err=>console.log(err))
            }}>
                <BellOutlined style={{ fontSize: "25px" }} />
            </Button>
          </Popover>
          <Button type="text" onClick={() => navigate("/cart")}>
              <ShoppingCartOutlined style={{ fontSize: "27px" }} />
          </Button>
            </>
          }
          <Button type="text" onClick={()=>{
            setUserName(null);
            localStorage.clear()
            navigate("/")
          }}>
            <LogoutOutlined style={{ fontSize: "24px" }} />
          </Button>
        </div>
      )}
    </NavBarStyle>
  );
}
