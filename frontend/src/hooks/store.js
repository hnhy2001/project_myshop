import create from 'zustand'

export const useStore = create((set) => ({
  loading: false,
  products: [],
  setProducts: (value)=> set({products: value}),
  setLoading: (value)=> set({loading: value})
}))