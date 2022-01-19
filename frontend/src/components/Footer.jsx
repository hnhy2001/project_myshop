import React from "react";
import visa from "./image/Visa-Logo.jpg";
import master from "./image/logo mastercard.jpg";

export default function Footer() {
  return (
      
    
      <div className="footer" style={{backgroundColor:"#efefef"}}>
        <div className="infomation" style={{
          display:"flex",
          paddingLeft:"230px",
          height:"230px",
          
        }}>
        <div style={{
          paddingRight:"100px",
          paddingTop:"30px"
        }}>
          <h2 style={{
            borderBottom:"4px solid #f0aa14",
            display:"inline-block",
          }}>Về Chúng Tôi</h2>
          <ul style={{
            listStyle:"none",
            marginRight:"100px",
            marginLeft:"-40px"
          }}>
            <li>Giới thiệu cửa hàng</li>
            <li>Tuyển dụng</li>
            <li>Chương trình đại lý</li>
            <li>Sơ đồ website</li>
            <li>Chính sách bảo mật</li>
          </ul>
        </div>
        <div style={{
          paddingRight:"100px",
          paddingTop:"30px"
        }}>
        <h2 style={{
            
            borderBottom:"4px solid #f0aa14",
            display:"inline-block",
          }}>Trợ Giúp</h2>
          <ul style={{
            listStyle:"none",
            marginLeft:"-40px"
          }}>
            <li>Quy định sử dụng</li>
            <li>Hướng dẫn mua hàng</li>
            <li>Phương thức thanh toán</li>
            <li>Phương thức vận chuyển</li>
            <li>Các câu hỏi thường gặp</li>
          </ul>
        </div>
        <div style={{
          paddingRight:"100px",
          paddingTop:"30px"
        }}>
        <h2 style={{
            
            borderBottom:"4px solid #f0aa14",
            display:"inline-block",
          }}>Tin Tức Mỗi Ngày</h2>
          <ul style={{
            listStyle:"none",
            marginLeft:"-40px"
          }}>
            <li>Tin tức</li>
            <li>Phát triển</li>
            <li>Đánh giá</li>
            <li>Giải đáp</li>
            
          </ul>
        </div>
        <div>
        <h2 style={{
            
            borderBottom:"4px solid #f0aa14",
            paddingTop:"30px",
          }}>Thanh Toán An Toàn</h2>
          <img src={visa}
           style={{ width: "100px", cursor: "pointer", }}/>
          <img src={master}
           style={{ width: "100px", cursor: "pointer", paddingLeft:"10px" }}/>
        </div>
        </div>
        <div style={{
          textAlign:"center",
          backgroundColor:"#f0aa14"
        }}>
          <p>&copy; Copyright 2021</p>
          <p> Designed By Group-11</p>
        </div>
      </div>
    
  
  );
}
