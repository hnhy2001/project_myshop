import React from "react";
import { Button, Divider, Form, Input, message } from "antd";
import { postRequest } from "../hooks/api";
import styled from "styled-components";

const RegisterStyle = styled.div`
  background-color: white;
  border-radius: 10px;
  padding: 20px;
  margin-top: 20px;
  text-align: center;
`;

export default function Register() {
  const [form] = Form.useForm();
  const handleRegister = async () => {
    console.log(form.getFieldsValue());
    await postRequest("/user/logup/", form.getFieldsValue())
      .then((data) => message.success("Tạo tài khoản thành công"))
      .catch((err) => message.error("Tài khoản đã tồn tại"));
  };

  return (
    <RegisterStyle>
      <h1 style={{ fontWeight: "750" }}></h1>
      <Button  block style={{ marginBottom: "10px", backgroundColor: "#f0aa14"}}>
        Register with Facebook
      </Button>
      <Button block>Register with Google</Button>
      <Divider />
      <Form layout="vertical" form={form}>
        <Form.Item
          label={<span style={{ fontWeight: "500" }}>User Name</span>}
          name="username"
        >
          <Input placeholder="VD: Dương Tùng Anh" />
        </Form.Item>
        <Form.Item
          label={<span style={{ fontWeight: "500" }}>Phone</span>}
          name="phone"
        >
          <Input placeholder="VD: 0988489JQK"/>
        </Form.Item>
        <Form.Item
          label={<span style={{ fontWeight: "500" }}>Gmail</span>}
          name="Gmail"
        >
          <Input placeholder="VD: tunganhdng@gmail.com" />
        </Form.Item>
        <Form.Item
          label={<span style={{ fontWeight: "500" }}>Password</span>}
          name="password"
        >
          <Input.Password placeholder="VD: Nhập mật khẩu" />
        </Form.Item>
        <Form.Item>
          <Button style={{backgroundColor: "#f0aa14"}} onClick={handleRegister}>
            Register
          </Button>
        </Form.Item>
      </Form>
    </RegisterStyle>
  );
}
