import React, { useState, useEffect } from "react";
import styled from "styled-components";
import { Button, Col, message, Row } from "antd";
import { useParams } from "react-router-dom";
import { getRequest, postRequest } from "../hooks/api";

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
  useEffect(()=>{
    const getProduct = async () => {
      await getRequest("/product/" + id + "/")
        .then((data) => setProduct(data))
        .catch((err) => console.log());
    };
    getProduct();
  },[setProduct,id])
  return (
    <ProductDetailStyle>
      <Row style={{ height: "100%" }}>
        <Col span={8}>
          <img
            alt="item"
            src={product?.avatar.slice(0,21)+"/static" + product?.avatar.slice(21,)}
            style={{ width: "100%", height: "90%", objectFit: "cover" }}
          />
          <div style={{ marginTop: "20px", alignItem: "center" }}>
            <Button type="primary" block onClick={async ()=>{
              await postRequest("/user/cart/",{
                user_id: localStorage.getItem("id"),
                product_id: id,
              })
              message.success("Nam có người yêu")
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
