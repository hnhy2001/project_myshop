import React, { useState, useEffect } from "react";
import styled from "styled-components";
import { Button, Col, message, Row,Modal } from "antd";
import { useParams } from "react-router-dom";
import { getRequest, postRequest } from "../hooks/api";
import Login from "./Login";
import Register from "./Register";


const ProductDetailStyle = styled.div`
  max-width: 80vw;
  margin: 0 auto;
  margin-top: 20px;
  padding-top: 20px;
  height: calc(100vh - 20px);
  background-color: white;
  padding: 20px;
  border-radius: 5px;
`;

export default function ProductDetail() {
  const { id } = useParams();
  const [product,setProduct] = useState()
  const [visible, setVisible] = useState(false);
  const [isLogin, setIsLogin] = useState(true);
  const [isAdmin, setIsAdmin]= useState(false);
  const [userName, setUserName] = useState();
  useEffect(()=>{
    const getProduct = async () => {
      await getRequest("/product/" + id + "/")
        .then((data) => setProduct(data))
        .catch((err) => console.log());
    };
    getProduct();
  },[setProduct,id])

  const onCancel = () => {
    setVisible(false);
  };

  return (
    
    <ProductDetailStyle>
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
              <Button type="link" onClick={() => setIsLogin(true)}>
                Login
              </Button>
            </p>
          </>
        )}
      </Modal>
      <Row style={{ height: "100%" }}>
        <Col span={8}>
          <img
            alt="item"
            src={product?.avatar.slice(0,21)+"/static" + product?.avatar.slice(21,)}
            style={{ width: "90%", height: "80%", objectFit: "cover" }}
          />
          <div style={{ marginTop: "20px", alignItem: "center" }}>
            <Button style={{backgroundColor: "#f0aa14"}} block onClick={async ()=>{
              const uid = localStorage.getItem("id");
              if(!uid){
                setVisible(true);
                // window.location.reload(false);
                return;
              }
              await postRequest("/user/cart/",{
                user_id: localStorage.getItem("id"),
                product_id: id,
              })
              message.success("Đã thêm sản phẩm vào giỏ hàng")
            }}>
              Thêm vào giỏ hàng
            </Button>
          </div>
        </Col>
        <Col span={16} style={{ paddingLeft: "20px" }}>
          <p style={{ padding: "2px 10px", fontSize: "30px" }}>
            {product?.product_name}
          </p>
          <p
            style={{
              padding: "2px 10px",
              margin: 0,
              fontWeight: "600",
              fontSize: "20px",
            }}
          >
            {product?.product_price + " đ"}
          </p>
          <p
            style={{
              padding: "2px 10px",
              margin: 0,
              fontWeight: "350",
              fontSize: "20px",
            }}
          >
            {product?.content}
          </p>
        </Col>
      </Row>
    </ProductDetailStyle>
  );
}
