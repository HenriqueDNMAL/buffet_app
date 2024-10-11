import React from 'react';

const OrderSummary = ({ order }) => {
  return (
    <div>
      <h3>Order Summary</h3>
      <ul>
        {order.items.map((item, index) => (
          <li key={index}>
            {item.name} - {item.quantity}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default OrderSummary;
