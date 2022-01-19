import { Button, message } from "antd";
import { DeleteOutlined } from "@ant-design/icons";
import React from "react";
import styled from "styled-components";
import { postRequest } from "../hooks/api";

const CartItemStle = styled.div`
  display: flex;
  flex-direction: row;
  weight: 100%;
  justify-content: space-between;
  background-color: white;
  padding: 10px;
  border-radius: 5px;
`;

export default function CartItem(props) {
  return (
    <CartItemStle>
      <div
        style={{ display: "flex", flexDirection: "row", alignItems: "center" }}
      >
        <img
          alt="item"
          src={"http://127.0.0.1:8000/static" +props.avatar}
          style={{ width: "30px", height: "30px", objectFit: "cover" }}
        />
        <p style={{ padding: "2px 10px" }}>
          {props.name}
        </p>
        <p
          style={{
            fontWeight: "600",
          }}
        >
          {props.price + " đ"}
        </p>
      </div>
      <div>
        <Button type="primary" danger onClick={()=>{
          postRequest("/user/hiden_detail/",{
            id : localStorage.getItem("id"),
            product_id: props.id
        })
        .then(data=>{
          message.success("Đã xóa sản phẩm khỏi giỏ hàng");
          props.getProduct()
        })
        .catch(err=>console.log(err))
        }}>
          <DeleteOutlined />
        </Button>
      </div>
    </CartItemStle>
  );
}
