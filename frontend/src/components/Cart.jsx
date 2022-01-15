import React, {useState, useEffect} from "react";
import CartItem from "./CartItem";
import styled from "styled-components";
import { Row, Col, Button, Divider, message } from "antd";
import { postRequest } from "../hooks/api";

const CartStyle = styled.div`
  max-width: 80vw;
  margin: 0 auto;
  margin-top: 20px;
  padding-top: 20px;
  height: calc(100vh - 100px);
  padding: 20px;
  border-radius: 5px;
`;

export default function Cart() {
  const [products, setProducts] = useState([])
  useEffect(()=>{
    const getProducts = async () => {
      await postRequest("/user/get_cart/",{
         id: localStorage.getItem("id") 
      })
        .then((data) => setProducts(data.products))
        .catch((err) => console.log());
    };
    getProducts();
  },[setProducts])
  const getProduct = async()=>{
    await postRequest("/user/get_cart/",{
      id: localStorage.getItem("id") 
   })
     .then((data) => setProducts(data.products))
     .catch((err) => console.log());
  }
  let sumPrice = 0;
  products.map(e=> sumPrice+=e.product_price)
  return (
    <CartStyle>
      <Row style={{ height: "100%" }}>
        <Col
          span={16}
          style={{
            marginRight: "20px",
            display: "flex",
            flexDirection: "column",
            height: "100%",
          }}
        >
          <div
            style={{
              overflow: "auto",
              display: "flex",
              flexDirection: "column",
              gap: "10px",
            }}
          >
           {
             products.map(e=><CartItem getProduct={getProduct} key={e.id} id={e.id} name={e.product_name} avatar={e.avatar} price={e.product_price} content={e.content}/>)
           }
          </div>
        </Col>
        <Col
          span={7}
          style={{ backgroundColor: "white", padding: "20px", height: "100%" }}
        >
          <h1>Chào mừng đến MyShop</h1>
       
          <Divider />
          <h2>Tổng tiền sản phẩm</h2>
          <p style={{ fontSize: "20px" }}>{sumPrice + " đ"}</p>
          <Divider />
          <h2>Phí giao hàng</h2>
          <p style={{ fontSize: "20px" }}>10000 đ</p>
          <Divider />
          <h1>Tổng</h1>
          <p style={{ fontSize: "20px" }}>{sumPrice + 10000 + " đ"}</p>
          <Divider />
          <Button disabled={sumPrice===0?true:false} type="primary" block onClick={  ()=>{
            postRequest("/order/add_order/",{
              user_id: localStorage.getItem("id"),
              price: sumPrice + 10000,
            })
            .then(data=> message.success("Nam có người yêu"))
            .catch(err=> message.error(err))
             postRequest("/user/hiden_cart/",{
              id: localStorage.getItem("id")
            })
            .then(data=> {
              postRequest("/user/get_cart/",{
                id: localStorage.getItem("id") 
             })
               .then((data) => setProducts(data.products))
               .catch((err) => console.log());
            })
            .catch(err=> message.error(err))
            
          }}>
            Mua hàng
          </Button>
        </Col>
      </Row>
    </CartStyle>
  );
}
