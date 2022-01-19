import { Table, Input, Button, Space, message } from 'antd';
import Highlighter from 'react-highlight-words';
import { SearchOutlined } from '@ant-design/icons';
import React from 'react';
import { getRequest, postRequest } from '../hooks/api';

export default class Admin extends React.Component {
  state = {
    searchText: '',
    searchedColumn: '',
    order: []
  };

  componentDidMount = async ()=>{
      await getRequest("/order/")
      .then(data => {
        let dt = data.results.map(e=> (
            {
                id: e.id,
                name: e.users.username,
                phone: e.users.phone,
                price: e.order_price,
                user_id: e.users.id
            }
        ))
        this.setState({order: dt})
      })
      .catch(err=>console.log(err))
  }
  getColumnSearchProps = dataIndex => ({
    filterDropdown: ({ setSelectedKeys, selectedKeys, confirm, clearFilters }) => (
      <div style={{ padding: 8 }}>
        <Input
          ref={node => {
            this.searchInput = node;
          }}
          placeholder={`Search ${dataIndex}`}
          value={selectedKeys[0]}
          onChange={e => setSelectedKeys(e.target.value ? [e.target.value] : [])}
          onPressEnter={() => this.handleSearch(selectedKeys, confirm, dataIndex)}
          style={{ marginBottom: 8, display: 'block' }}
        />
        <Space>
          <Button
            type="primary"
            onClick={() => this.handleSearch(selectedKeys, confirm, dataIndex)}
            icon={<SearchOutlined />}
            size="small"
            style={{ width: 90 }}
          >
            Search
          </Button>
          <Button onClick={() => this.handleReset(clearFilters)} size="small" style={{ width: 90 }}>
            Reset
          </Button>
          <Button
            type="link"
            size="small"
            onClick={() => {
              confirm({ closeDropdown: false });
              this.setState({
                searchText: selectedKeys[0],
                searchedColumn: dataIndex,
              });
            }}
          >
            Filter
          </Button>
        </Space>
      </div>
    ),
    filterIcon: filtered => <SearchOutlined style={{ color: filtered ? '#1890ff' : undefined }} />,
    onFilter: (value, record) =>
      record[dataIndex]
        ? record[dataIndex].toString().toLowerCase().includes(value.toLowerCase())
        : '',
    onFilterDropdownVisibleChange: visible => {
      if (visible) {
        setTimeout(() => this.searchInput.select(), 100);
      }
    },
    render: text =>
      this.state.searchedColumn === dataIndex ? (
        <Highlighter
          highlightStyle={{ backgroundColor: '#ffc069', padding: 0 }}
          searchWords={[this.state.searchText]}
          autoEscape
          textToHighlight={text ? text.toString() : ''}
        />
      ) : (
        text
      ),
  });

  handleSearch = (selectedKeys, confirm, dataIndex) => {
    confirm();
    this.setState({
      searchText: selectedKeys[0],
      searchedColumn: dataIndex,
    });
  };

  handleReset = clearFilters => {
    clearFilters();
    this.setState({ searchText: '' });
  };

  render() {
    const columns = [
      {
        title: 'Name',
        dataIndex: 'name',
        key: 'name',
        width: '30%',
        ...this.getColumnSearchProps('name'),
      },
      {
        title: 'Phone',
        dataIndex: 'phone',
        key: 'phone',
        width: '20%',
        ...this.getColumnSearchProps('age'),
      },
      {
        title: 'Price',
        dataIndex: 'price',
        key: 'price',
        ...this.getColumnSearchProps('address'),
        sorter: (a, b) => a.price - b.price,
        sortDirections: ['descend', 'ascend'],
      },
      {
          title: "Action",
          key: "action",
          render: (text, record) => (
            <Space size="middle">
              <Button type='primary' onClick={()=>{
                  console.log(text)
                   postRequest("/notication/hiden_noti/", {
                       id: text.id,
                       user_id: text.user_id
                   })
                   .then(data=> {message.success("Đơng hàng đã được chấp nhận");
                    getRequest("/order/")
                   .then(data => {
                     let dt = data.results.map(e=> (
                         {
                             id: e.id,
                             name: e.users.username,
                             phone: e.users.phone,
                             price: e.order_price,
                             user_id: e.users.id
                         }
                     ))
                     this.setState({order: dt})
                   })
                   .catch(err=>console.log(err))
                })
                   .catch(err=>console.log(err))
              }}>Chấp nhận</Button>
              <Button type='primary' danger onClick={()=>{
                   postRequest("/notication/delete_noti/", {
                       id: text.id,
                       user_id: text.user_id
                   })
                   .then(data=> {message.warning("Đơng hàng đã bị từ chối");
                    getRequest("/order/")
                   .then(data => {
                     let dt = data.results.map(e=> (
                         {
                             id: e.id,
                             name: e.users.username,
                             phone: e.users.phone,
                             price: e.order_price,
                             user_id: e.users.id
                         }
                     ))
                     this.setState({order: dt})
                   })
                   .catch(err=>console.log(err))
                })
                   .catch(err=>console.log(err))
              }}>Từ chối</Button>
            </Space>
          )
      }
      
    ];
    return <div style={{ padding: "10px"}}>
                 <Table columns={columns} dataSource={this.state.order} />
        </div>;
  }
}
