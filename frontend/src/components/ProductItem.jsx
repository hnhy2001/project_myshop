import React from "react";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";


const ProductItemStyle = styled.div`
  width: 380px;
  height: 390px;
  cursor: pointer;
  background-color: white;
  border-radius: 5px;
  align-items: center;
  &:hover {
    border: 1px solid #efefef;
  }
`;

export default function ProductItem(props) {
  const navigate = useNavigate();
  return (
    <ProductItemStyle onClick={() => navigate("/" + props.id)}>
      <img
        alt="item"
        src={"http://127.0.0.1:8000/static" +props.avatar}
        style={{ width: "100%", height: "80%", objectFit: "cover" }}
      />
      <p style={{ padding: "2px 10px", margin: 0 }}>
        {/* {props.name.length > 98 ? props.name.slice(0, 90) + "..." : props.name} */}
        {props.name}
      </p>
      <p style={{ padding: "2px 10px", margin: 0, fontWeight: "600" }}>
        {props.price + " đ"}
      </p>
    </ProductItemStyle>
  );
}
