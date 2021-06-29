const Star = ({ size = 32, fill = "var(--star-color-filled)", ...props }) => (
  <svg x="0px" y="0px" width={`${size}px`} height={`${size}px`} viewBox={`0 0 ${size} ${size}`} fill="none" {...props}>
    <path
      d="M14.5026 3.59429L11.102 10.4893L3.49358 11.5985C2.12917 11.7964 1.58236 13.4785 2.57182 14.4419L8.07635 19.8058L6.77443 27.383C6.54008 28.7526 7.98261 29.7785 9.19079 29.138L15.9972 25.5603L22.8037 29.138C24.0119 29.7733 25.4544 28.7526 25.2201 27.383L23.9181 19.8058L29.4227 14.4419C30.4121 13.4785 29.8653 11.7964 28.5009 11.5985L20.8925 10.4893L17.4919 3.59429C16.8826 2.36527 15.1171 2.34965 14.5026 3.59429Z"
      fill={fill}
    />
  </svg>
)

export default Star