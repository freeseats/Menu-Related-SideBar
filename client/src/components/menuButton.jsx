import React from 'react';

// Actual menu button
// maybe add currentMenu to params?
const MenuButton = (props) => {
  console.log('menu button', props.menu.single_menu);
  const styles = {
    fontFamily: 'Brandon, Lato,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol',
    outline: 'none',
    boxShadow: 'none',
    marginRight: '16px',
    backgroundColor: '#fff',
    marginTop: '16px',
    fontSize: '14px',
    color: '#2d333',
    cursor: 'pointer',
    lineHeight: '20px',
    fontWeight: 500,
    border: '2px solid #da3743',
    borderRadius: '2px',
    padding: '8px 16px',
    display: 'inline-block',
    boxSizing: 'border-box'
  };

  return (
    <button style={styles} >{props.menu.single_menu}</button>
  );
};

export default MenuButton;