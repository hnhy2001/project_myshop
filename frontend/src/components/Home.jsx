import React, { useEffect} from "react";
import styled from "styled-components";
import ProductItem from "./ProductItem";
import {useStore} from "../hooks/store"
import { getRequest } from "../hooks/api";
import { Spin } from "antd";

const HomeStyle = styled.div`
  max-width: 80vw;
  display: flex;
  flex-wrap: wrap;
  gap: 110px;
  margin: 0 auto;
  padding-top: 20px;
`;

export default function Home() {
  const [products, setProducts, loading, setLoading] = useStore(state=> [state.products, state.setProducts,state.loading,state.setLoading])
  useEffect(()=>{
    const getProducts = async () => {
      setLoading(true)
      await getRequest("/product/get_all/")
        .then((data) => {setProducts(data);setLoading(false)})
        .catch((err) => setLoading(false));
    };
    getProducts();
  },[setProducts, setLoading])
  return (
    <Spin spinning={loading}>
      {!loading?
        <HomeStyle>
     {
       products.map(e=><ProductItem key={e.id} id={e.id} name={e.product_name} avatar={e.avatar} price={e.product_price}/>)
     }
       </HomeStyle>
       :<div style={{height: "100vh"}}></div>
      }
   
    </Spin>
   
  );
}
