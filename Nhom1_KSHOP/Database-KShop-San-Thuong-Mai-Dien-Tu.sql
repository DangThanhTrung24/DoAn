USE [kshop_main]
GO
/****** Object:  Table [dbo].[acl_permissions]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acl_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[display_name] [nvarchar](500) NULL,
	[guard_name] [nvarchar](500) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acl_role_has_permissions]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acl_role_has_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acl_roles]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acl_roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[display_name] [nvarchar](500) NULL,
	[guard_name] [nvarchar](500) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acl_user_has_permissions]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acl_user_has_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acl_user_has_roles]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acl_user_has_roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acl_users]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acl_users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](191) NOT NULL,
	[password] [nvarchar](500) NOT NULL,
	[last_name] [nvarchar](255) NOT NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[gender] [bit] NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[birthday] [datetime] NULL,
	[avatar] [nvarchar](500) NULL,
	[code] [nvarchar](255) NULL,
	[job_title] [nvarchar](255) NULL,
	[department] [nvarchar](255) NULL,
	[manager_id] [bigint] NULL,
	[phone] [nvarchar](25) NULL,
	[address1] [nvarchar](500) NULL,
	[address2] [nvarchar](500) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[postal_code] [nvarchar](15) NULL,
	[country] [nvarchar](255) NULL,
	[remember_token] [nvarchar](255) NULL,
	[active_code] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[store_id] [bigint] NULL,
	[ward] [nvarchar](255) NULL,
	[sodu] [decimal](19, 4) NOT NULL,
	[info_receive_money] [nvarchar](max) NULL,
	[sodu_hold] [decimal](19, 4) NOT NULL,
	[pay_info_next] [nvarchar](255) NULL,
	[sodu_ngoai] [decimal](19, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[money_orders]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[money_orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NOT NULL,
	[employee_id] [bigint] NOT NULL,
	[total_money] [decimal](19, 4) NOT NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[money_sends]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[money_sends](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[employee_id] [bigint] NOT NULL,
	[image] [nvarchar](max) NULL,
	[note] [nvarchar](max) NULL,
	[info_banking] [nvarchar](255) NOT NULL,
	[total_money] [decimal](19, 4) NOT NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_categories]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category_code] [nvarchar](50) NOT NULL,
	[category_name] [nvarchar](500) NOT NULL,
	[description] [nvarchar](4000) NULL,
	[image] [nvarchar](4000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[level] [varchar](10) NULL,
	[parent_id] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_customer_vouchers]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_customer_vouchers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[customer_id] [bigint] NOT NULL,
	[voucher_id] [bigint] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[is_used] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_customers]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_customers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](191) NOT NULL,
	[password] [nvarchar](500) NOT NULL,
	[last_name] [nvarchar](255) NOT NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[gender] [bit] NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[birthday] [datetime] NULL,
	[avatar] [nvarchar](500) NULL,
	[code] [nvarchar](255) NOT NULL,
	[company] [nvarchar](255) NULL,
	[phone] [nvarchar](25) NULL,
	[billing_address] [nvarchar](500) NULL,
	[shipping_address] [nvarchar](500) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[postal_code] [nvarchar](15) NULL,
	[country] [nvarchar](255) NULL,
	[remember_token] [nvarchar](255) NULL,
	[activate_code] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[ward] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_export_details]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_export_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[export_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[unit_price] [decimal](19, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_exports]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_exports](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[store_id] [bigint] NOT NULL,
	[employee_id] [bigint] NOT NULL,
	[export_date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_import_details]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_import_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[import_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[unit_price] [decimal](19, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_imports]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_imports](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[store_id] [bigint] NOT NULL,
	[employee_id] [bigint] NOT NULL,
	[import_date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_order_details]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_order_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[unit_price] [decimal](19, 4) NOT NULL,
	[discount_percentage] [float] NOT NULL,
	[discount_amout] [float] NOT NULL,
	[order_detail_status] [nvarchar](50) NULL,
	[date_allocated] [datetime] NULL,
	[order_detail_name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_orders]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[employee_id] [bigint] NOT NULL,
	[customer_id] [bigint] NOT NULL,
	[order_date] [datetime] NOT NULL,
	[shipped_date] [nvarchar](100) NULL,
	[ship_name] [nvarchar](50) NOT NULL,
	[ship_address1] [nvarchar](500) NOT NULL,
	[ship_address2] [nvarchar](500) NULL,
	[ship_city] [nvarchar](255) NOT NULL,
	[ship_state] [nvarchar](255) NULL,
	[ship_postal_code] [nvarchar](50) NULL,
	[ship_country] [nvarchar](255) NOT NULL,
	[shipping_fee] [decimal](19, 4) NOT NULL,
	[payment_type_id] [bigint] NOT NULL,
	[paid_date] [datetime] NULL,
	[order_status] [nvarchar](50) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[order_note] [nvarchar](500) NULL,
	[discount_amount] [float] NOT NULL,
	[ship_phone] [nvarchar](25) NOT NULL,
	[ship_ward] [nvarchar](255) NULL,
	[id_order_ghn] [nvarchar](255) NULL,
	[is_mo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_payment_types]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_payment_types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[payment_code] [nvarchar](50) NOT NULL,
	[payment_name] [nvarchar](500) NOT NULL,
	[description] [nvarchar](4000) NULL,
	[image] [nvarchar](4000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_product_discounts]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_product_discounts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[discount_name] [nvarchar](500) NOT NULL,
	[discount_amount] [float] NOT NULL,
	[is_fixed] [bit] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_product_images]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_product_images](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[image] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_product_reviews]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_product_reviews](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[customer_id] [bigint] NOT NULL,
	[rating] [float] NOT NULL,
	[comment] [nvarchar](4000) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_product_vouchers]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_product_vouchers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[voucher_id] [bigint] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_products]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_code] [nvarchar](500) NOT NULL,
	[product_name] [nvarchar](500) NOT NULL,
	[image] [nvarchar](4000) NULL,
	[short_description] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[standard_cost] [decimal](19, 4) NOT NULL,
	[list_price] [decimal](19, 4) NOT NULL,
	[quantity_per_unit] [nvarchar](50) NULL,
	[discontinued] [bit] NOT NULL,
	[is_featured] [bit] NOT NULL,
	[is_new] [bit] NOT NULL,
	[category_id] [bigint] NULL,
	[supplier_id] [bigint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[user_id] [bigint] NULL,
	[type_list] [nvarchar](500) NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[height] [decimal](18, 4) NOT NULL,
	[length] [decimal](18, 4) NOT NULL,
	[weight] [decimal](18, 4) NOT NULL,
	[width] [decimal](18, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_products_type]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_products_type](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](500) NULL,
	[name] [nvarchar](500) NOT NULL,
	[description] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_products_type_item]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_products_type_item](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_type_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[image] [nvarchar](500) NULL,
	[list_imgs] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_seller]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_seller](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](25) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[customer_id] [bigint] NOT NULL,
	[category_id] [bigint] NOT NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
	[type] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_stores]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_stores](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[store_code] [nvarchar](50) NOT NULL,
	[store_name] [nvarchar](500) NOT NULL,
	[description] [nvarchar](4000) NULL,
	[image] [nvarchar](4000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[address] [nvarchar](4000) NULL,
	[phone] [nvarchar](25) NULL,
	[background] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_suppliers]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_suppliers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[supplier_code] [nvarchar](50) NOT NULL,
	[supplier_name] [nvarchar](500) NOT NULL,
	[description] [nvarchar](4000) NULL,
	[image] [nvarchar](4000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_users_cart]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_users_cart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[customer_id] [bigint] NOT NULL,
	[shop_product_vouchers_id] [bigint] NULL,
	[is_discount] [bit] NOT NULL,
	[is_checked] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[type_item_id] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_vouchers]    Script Date: 12/11/2022 2:36:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_vouchers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[voucher_code] [nvarchar](500) NOT NULL,
	[voucher_name] [nvarchar](500) NOT NULL,
	[description] [nvarchar](4000) NULL,
	[uses] [int] NOT NULL,
	[max_uses] [int] NOT NULL,
	[max_uses_user] [int] NOT NULL,
	[type] [bit] NOT NULL,
	[discount_amount] [float] NOT NULL,
	[is_fixed] [bit] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[price] [decimal](19, 4) NOT NULL,
	[min_pro] [decimal](19, 4) NOT NULL,
	[max_disa] [decimal](19, 4) NOT NULL,
	[use_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[acl_permissions] ON 

INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (1, N'backend-view', N'Xem chức năng Quản trị Hệ thống', N'we', CAST(N'2019-12-09T03:10:11.000' AS DateTime), CAST(N'2019-12-09T03:10:11.000' AS DateTime))
INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (2, N'suppliers-view', N'Xem chức năng Nhà cung cấp', N'we', CAST(N'2022-09-12T16:29:29.000' AS DateTime), NULL)
INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (3, N'Full Control', N'Toàn quyền kiểm soát', N'we', CAST(N'2022-04-29T00:00:00.000' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (4, N'Write', N'Chỉnh sửa, tạo mới dữ liệu', N'we', CAST(N'2022-04-29T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (5, N'List folder contents', N'Liệt kê nội dung folder', N'we', CAST(N'2022-04-29T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (6, N'Read and Execute', N'Đọc nội dung một số file và cho phép thực thi nếu đó là file chương trình', N'we', CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[acl_permissions] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (7, N'Modify', N'Chỉnh sửa, tạo mới dữ liệu, Liệt kê nội dung folder, đọc và thực thi file chương trình ', N'we', CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[acl_permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[acl_role_has_permissions] ON 

INSERT [dbo].[acl_role_has_permissions] ([id], [role_id], [permission_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[acl_role_has_permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[acl_roles] ON 

INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (1, N'administrator', N'Quản trị Hệ thống', N'we', CAST(N'2019-12-09T03:10:11.000' AS DateTime), CAST(N'2019-12-09T03:10:11.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (2, N'thukho', N'Thủ kho', N'we', CAST(N'2019-12-09T03:10:11.000' AS DateTime), CAST(N'2019-12-09T03:10:11.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (3, N'ketoan', N'Kế toán', N'we', CAST(N'2022-09-16T15:58:13.000' AS DateTime), CAST(N'2022-09-16T15:58:15.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (4, N'customer', N'Khách hàng tạo shop', N'we', CAST(N'2022-09-16T14:09:53.000' AS DateTime), CAST(N'2022-09-16T14:09:56.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (5, N'Customer advisor', N'Nhân viên tư vấn khách hàng', N'we', CAST(N'2019-12-09T03:10:11.000' AS DateTime), CAST(N'2019-12-09T03:10:11.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (6, N'Customer service', N'Nhân viên chăm sóc khách hàng', N'we', CAST(N'2019-12-09T03:10:11.000' AS DateTime), CAST(N'2019-12-09T03:10:11.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (7, N'Admin Money', N'Admin duyệt đơn & tiền', N'we', CAST(N'2022-09-16T15:58:13.000' AS DateTime), CAST(N'2022-09-16T15:58:15.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (8, N'Assistant Manager', N'Trợ lý quản lý', N'we', CAST(N'2022-09-16T14:09:53.000' AS DateTime), CAST(N'2022-09-16T14:09:56.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (9, N'Close a sale', N'Nhân viên chốt đơn', N'we', CAST(N'2022-09-16T14:09:53.000' AS DateTime), CAST(N'2022-09-16T14:09:56.000' AS DateTime))
INSERT [dbo].[acl_roles] ([id], [name], [display_name], [guard_name], [created_at], [updated_at]) VALUES (10, N'Vendor Store', N'Shop', N'web', CAST(N'2022-11-10T20:16:39.193' AS DateTime), CAST(N'2022-11-10T20:16:39.193' AS DateTime))
SET IDENTITY_INSERT [dbo].[acl_roles] OFF
GO
SET IDENTITY_INSERT [dbo].[acl_user_has_roles] ON 

INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (2, 1, 1)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (3, 1, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (4, 3, 4)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (5, 3, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (6, 9, 4)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (7, 9, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (12, 16, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (13, 16, 4)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (14, 2, 7)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (15, 17, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (16, 17, 4)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (17, 18, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (18, 18, 4)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (19, 19, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (20, 19, 4)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (21, 20, 10)
INSERT [dbo].[acl_user_has_roles] ([id], [user_id], [role_id]) VALUES (22, 20, 4)
SET IDENTITY_INSERT [dbo].[acl_user_has_roles] OFF
GO
SET IDENTITY_INSERT [dbo].[acl_users] ON 

INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', N'Hồ Hoàng', N'Phú', 0, N'admin@admin', NULL, N'avatars/null.jpg', N'060932', N'Developer', N'IT Software', NULL, N'0357337812', N'20/5 Tổ 44 KP3', NULL, N'TP Hồ Chí Minh', N'Quận 12', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), NULL, 1, N'Phường Tân Chánh Hiệp', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (2, N'admin1', N'202cb962ac59075b964b07152d234b70', N'Tui là Nhân', N'Viên', 0, N'staff1@fpt.edu.vn', NULL, N'staff1.jpg', NULL, N'Developer', N'IT Software', NULL, N'0915300200', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', NULL, N'TP Hồ Chí Minh', N'Quận 12', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), NULL, NULL, N'Phường Thạnh Lộc', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (3, N'khadet', N'202cb962ac59075b964b07152d234b70', N'Đặng Ngọc Minh', N'Thư', 0, N'dangkhadet02@gmail.com', NULL, N'thu.jpg', NULL, N'Developer', N'IT Software', NULL, N'0915300200', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', NULL, N'TP Hồ Chí Minh', N'Quận 12', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), NULL, 2, N'Phường Thạnh Lộc', CAST(0.0000 AS Decimal(19, 4)), N'Thư Đặng Ngọc Minh|CK|09912949128512|MBBank', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (4, N'staff3', N'123', N'Nguyễn Thị', N'Tèo', 0, N'teont@fpt.edu.vn', NULL, N'teont.jpg', NULL, N'Housewife', N'My Home', NULL, N'0915333222', N'Tô ký, An Phú Đông, Quận 12', NULL, N'Tp HCM', NULL, N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), NULL, NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (5, N'staff4', N'123', N'Nguyễn Như', N'Huỳnh', 0, N'huynhnn@fpt.edu.vn', NULL, N'huynhnn.jpg', NULL, N'Housewife', N'My Home', NULL, N'0945832910', N'Quốc lộ 1A, Tân Thới Hiệp, Quận 12', NULL, N'Tp HCM', NULL, N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), NULL, NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (6, N'staff2', N'123', N'Đàm Vĩnh', N'Biệt', 0, N'bietdv@fpt.edu.vn', NULL, N'bietdv.jpg', NULL, N'Tester', N'IT Software', NULL, N'0945833910', N'Quốc lộ 1A, Tân Thới Hiệp, Quận 12', NULL, N'Tp HCM', NULL, N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), NULL, NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (8, N'hydrax123gpyw', N'e974ec0d55b28af8e343de1c6612e26e', N'Phú', N'Hồ Hoàng', 1, N'hydrax123@gmail.com', CAST(N'2002-09-16T00:00:00.000' AS DateTime), NULL, N'060932', NULL, NULL, 1, N'0314124511', N'Hẻm 16', N'Hẻm 16', N'Hồ Chí Minh', N'Quận 12', N'99999', N'Việt Nam', NULL, NULL, 1, NULL, NULL, 4, N'Phường Tân Chánh Hiệp', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (9, N'kodokumbhh', N'750d85eee19bbf1e5efa93f8b42ff486', N'Phú', N'Hồ Hoàng', 1, N'ho.hoangphudt169@gmail.com', CAST(N'2002-09-16T00:00:00.000' AS DateTime), NULL, N'0999999999', NULL, NULL, 1, N'0357337812', N'18H đường Trần Hưng Đạo 27', N'Quận 12, Tp Hồ Chí Minh', N'Hồ Chí Minh', N'Quận Gò Vấp', N'99999', N'Việt Nam', NULL, NULL, 1, CAST(N'2022-09-16T16:16:00.000' AS DateTime), CAST(N'2022-12-02T10:01:34.400' AS DateTime), 5, N'Phường 10', CAST(122000.0000 AS Decimal(19, 4)), N'Hồ Hoàng Phú|MOMO|0357337812|', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(800000.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (16, N'zhhphu690001aebe5', N'af9d9e8eba742facfa90b7dfb7870db5', N'Phú', N'Hồ Hoàng', 1, N'zhhphu690001a@gmail.com', CAST(N'2006-01-02T00:00:00.000' AS DateTime), NULL, N'098765876123', NULL, NULL, 1, N'0357337812', N'45B TCH', N'Địa chỉ thanh toán', N'Đồng Tháp', N'Thành phố Cao Lãnh', N'99999', N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-05T18:13:39.957' AS DateTime), CAST(N'2022-12-05T18:16:59.597' AS DateTime), 12, N'Phường Hoà Thuận', CAST(0.0000 AS Decimal(19, 4)), N'Hồ Hoàng Phú|CK|9812987190250|MBBank', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (17, N'Huyqj6m', N'2d61f6a472944ea5de7b7876742dcd81', N'Hoàng', N'Huy', 1, N'Huy@gmail.c', CAST(N'2022-11-28T00:00:00.000' AS DateTime), NULL, N'123123123123', NULL, NULL, 1, N'0765230162', N'123', N'123', N'Hồ Chí Minh', N'Quận 6', N'99999', N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-09T21:01:30.730' AS DateTime), CAST(N'2022-12-09T21:01:30.730' AS DateTime), 13, N'Phường 11', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (18, N'huyletran0015o4u', N'48eeef020ceccd3a328137c4924f090d', N'Hoàng', N'Huy', 1, N'huyletran001@gmail.com', CAST(N'2022-11-30T00:00:00.000' AS DateTime), NULL, N'123123123123', NULL, NULL, 1, N'0765230162', N'123', N'123', N'Hồ Chí Minh', N'Huyện Cần Giờ', N'99999', N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-09T21:22:19.143' AS DateTime), CAST(N'2022-12-09T21:22:19.143' AS DateTime), 14, N'Xã Lý Nhơn', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (19, N'huyletran007hot5', N'036732506083b20310c8b6369f12eced', N'Huy', N'Huy', 1, N'huyletran007@gmail.com', CAST(N'2002-02-16T00:00:00.000' AS DateTime), NULL, N'079202019957', NULL, NULL, 1, N'0765230162', N'240', N'240', N'Hồ Chí Minh', N'Quận 6', N'99999', N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-09T22:05:43.200' AS DateTime), CAST(N'2022-12-09T22:10:29.423' AS DateTime), 15, N'Phường 11', CAST(0.0000 AS Decimal(19, 4)), N'Huy Huy|CK|1018032534|Vietcombank', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
INSERT [dbo].[acl_users] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [job_title], [department], [manager_id], [phone], [address1], [address2], [city], [state], [postal_code], [country], [remember_token], [active_code], [status], [created_at], [updated_at], [store_id], [ward], [sodu], [info_receive_money], [sodu_hold], [pay_info_next], [sodu_ngoai]) VALUES (20, N'huylekkk2', N'28633310132d830383d69334e943f43e', N'Nguyen', N'Join', 1, N'huyle', CAST(N'2022-11-30T00:00:00.000' AS DateTime), NULL, N'123123123123', NULL, NULL, 1, N'076523162', N'123', N'123', N'Hòa Bình', N'Huyện Lạc Thủy', N'99999', N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-11T14:13:03.740' AS DateTime), CAST(N'2022-12-11T14:14:08.640' AS DateTime), 16, N'Xã Yên Bồng', CAST(0.0000 AS Decimal(19, 4)), N'Lê Trần Hoàng Huy|CK|1018032534|Vietcombank', CAST(0.0000 AS Decimal(19, 4)), NULL, CAST(0.0000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[acl_users] OFF
GO
SET IDENTITY_INSERT [dbo].[money_orders] ON 

INSERT [dbo].[money_orders] ([id], [order_id], [employee_id], [total_money], [status], [created_at], [updated_at]) VALUES (1, 121, 2, CAST(11174000.0000 AS Decimal(19, 4)), 1, CAST(N'2022-12-07T13:38:37.417' AS DateTime), CAST(N'2022-12-07T13:38:37.417' AS DateTime))
INSERT [dbo].[money_orders] ([id], [order_id], [employee_id], [total_money], [status], [created_at], [updated_at]) VALUES (2, 119, 2, CAST(101234000.0000 AS Decimal(19, 4)), 0, CAST(N'2022-12-07T13:39:25.023' AS DateTime), CAST(N'2022-12-07T13:39:25.023' AS DateTime))
SET IDENTITY_INSERT [dbo].[money_orders] OFF
GO
SET IDENTITY_INSERT [dbo].[money_sends] ON 

INSERT [dbo].[money_sends] ([id], [user_id], [employee_id], [image], [note], [info_banking], [total_money], [status], [created_at]) VALUES (10, 9, 2, N'https://i.ibb.co/1Ks20RY/matt-popovich-0-FZr-PECK5cg-unsplash.jpg', N'Ghi chú: Xác nhận chuyển khoản thanh toán nhận tiền đến: Hồ Hoàng Phú', N'Hồ Hoàng Phú|MOMO|0357337812|', CAST(1200000.0000 AS Decimal(19, 4)), 1, CAST(N'2022-12-07T13:12:53.430' AS DateTime))
INSERT [dbo].[money_sends] ([id], [user_id], [employee_id], [image], [note], [info_banking], [total_money], [status], [created_at]) VALUES (11, 3, 2, N'https://i.ibb.co/N1404Wc/one-piece-movie-15-film-red.webp', N'Ghi chú: Xác nhận chuyển khoản thanh toán nhận tiền đến: Store Pro', N'Thư Đặng Ngọc Minh|CK|09912949128512|MBBank', CAST(33522000.0000 AS Decimal(19, 4)), 1, CAST(N'2022-12-07T13:16:02.017' AS DateTime))
INSERT [dbo].[money_sends] ([id], [user_id], [employee_id], [image], [note], [info_banking], [total_money], [status], [created_at]) VALUES (12, 3, 2, N'https://i.ibb.co/P4rQkPS/diagram.png', N'Ghi chú: Xác nhận chuyển khoản thanh toán nhận tiền đến: Store Pro', N'Thư Đặng Ngọc Minh|CK|09912949128512|MBBank', CAST(11174000.0000 AS Decimal(19, 4)), 1, CAST(N'2022-12-10T13:39:34.293' AS DateTime))
SET IDENTITY_INSERT [dbo].[money_sends] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_categories] ON 

INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (52, N'CAT10', N'Thời trang', N'Thời trang nam nữ', N'images/2-1.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (53, N'CAT11', N'Nhà và vườn', N'Nhà và vườn', N'images/2-2.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (54, N'CAT12', N'Thiết bị điện tử', N'Thiết bị điện tử', N'images/2-6.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (55, N'CAT13', N'Đồ nội thất', N'Đồ nội thất', N'images/7-8.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (56, N'CAT14', N'Sức khoẻ và sắc đẹp', N'Sức khoẻ và sắc đẹp', N'images/3-10.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (57, N'CAT15', N'Ý tưởng quà tặng', N'Ý tưởng quà tặng', NULL, NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (58, N'CAT16', N'Đồ chơi và games', N'Đồ chơi và games', N'images/2-5_1.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (59, N'CAT17', N'Nấu nướng', N'Nấu nướng', N'images/7-2.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (60, N'CAT18', N'Điện thoại thông minh', N'Điện thoại thông minh', N'images/3-3.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (61, N'CAT19', N'Cameras và hình ảnh', N'Cameras và hình ảnh', N'images/5-6.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (62, N'CAT20', N'Phụ kiện', N'Phụ kiện', N'images/5-7.jpg', NULL, NULL, N'0', N'0')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (63, N'CAT21', N'Hàng mới', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (64, N'CAT22', N'Bán chạy', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (65, N'CAT23', N'Xu hướng', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (66, N'CAT24', N'Quần áo', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (67, N'CAT25', N'Giày', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (68, N'CAT26', N'Túi', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (69, N'CAT27', N'Phụ kiện', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (70, N'CAT28', N'Trang sức và đồng hồ', N'Nam', NULL, NULL, NULL, N'2', N'139')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (71, N'CAT29', N'Hàng mới', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (72, N'CAT30', N'Bán chạy', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (73, N'CAT31', N'Xu hướng', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (74, N'CAT32', N'Quần áo', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (75, N'CAT33', N'Giày', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (76, N'CAT34', N'Túi', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (77, N'CAT35', N'Phụ kiện', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (78, N'CAT36', N'Trang sức và đồng hồ', N'Nữ', NULL, NULL, NULL, N'2', N'140')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (79, N'CAT37', N'Giường khung và đế', N'Phòng ngủ', NULL, NULL, NULL, N'2', N'141')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (80, N'CAT38', N'Tủ quần áo', N'Phòng ngủ', NULL, NULL, NULL, N'2', N'141')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (81, N'CAT39', N'Bàn đầu giường', N'Phòng ngủ', NULL, NULL, NULL, N'2', N'141')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (82, N'CAT40', N'Giường và đầu giường cho trẻ em', N'Phòng ngủ', NULL, NULL, NULL, N'2', N'141')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (83, N'CAT41', N'Tủ', N'Phòng ngủ', NULL, NULL, NULL, N'2', N'141')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (84, N'CAT42', N'Ghế văn phòng', N'Văn phòng', NULL, NULL, NULL, N'2', N'142')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (85, N'CAT43', N'Bàn', N'Văn phòng', NULL, NULL, NULL, N'2', N'142')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (86, N'CAT44', N'Tủ sách', N'Văn phòng', NULL, NULL, NULL, N'2', N'142')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (87, N'CAT45', N'Tủ hồ sơ', N'Văn phòng', NULL, NULL, NULL, N'2', N'142')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (88, N'CAT46', N'Bàn phòng tắm', N'Văn phòng', NULL, NULL, NULL, N'2', N'142')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (89, N'CAT47', N'Bàn cà phê', N'Phòng khách', NULL, NULL, NULL, N'2', N'143')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (90, N'CAT48', N'Ghế', N'Phòng khách', NULL, NULL, NULL, N'2', N'143')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (91, N'CAT49', N'Bàn', N'Phòng khách', NULL, NULL, NULL, N'2', N'143')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (92, N'CAT50', N'Giường futons và sofa', N'Phòng khách', NULL, NULL, NULL, N'2', N'143')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (93, N'CAT51', N'Tủ và rương', N'Phòng khách', NULL, NULL, NULL, N'2', N'143')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (94, N'CAT52', N'Bộ đồ ăn', N'Nhà bếp và phòng ăn', NULL, NULL, NULL, N'2', N'144')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (95, N'CAT53', N'Tủ lưu trữ nhà bếp', N'Nhà bếp và phòng ăn', NULL, NULL, NULL, N'2', N'144')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (96, N'CAT54', N'Kệ bếp', N'Nhà bếp và phòng ăn', NULL, NULL, NULL, N'2', N'144')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (97, N'CAT55', N'Ghế ăn', N'Nhà bếp và phòng ăn', NULL, NULL, NULL, N'2', N'144')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (98, N'CAT56', N'Bàn ăn trong phòng', N'Nhà bếp và phòng ăn', NULL, NULL, NULL, N'2', N'144')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (99, N'CAT57', N'Ghế đẩu', N'Nhà bếp và phòng ăn', NULL, NULL, NULL, N'2', N'144')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (101, N'CAT59', N'Máy tính để bàn', N'Laptops và Computers', NULL, NULL, NULL, N'2', N'147')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (102, N'CAT60', N'Màn hình', N'Laptops và Computers', NULL, NULL, NULL, N'2', N'147')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (103, N'CAT61', N'Máy tính xách tay', N'Laptops và Computers', NULL, NULL, NULL, N'2', N'147')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (104, N'CAT62', N'Ổ cứng và bộ nhớ', N'Laptops và Computers', NULL, NULL, NULL, N'2', N'147')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (105, N'CAT63', N'Phụ kiện máy tính', N'Laptops và Computers', NULL, NULL, NULL, N'2', N'147')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (106, N'CAT64', N'Tivi', N'TV và Video', NULL, NULL, NULL, N'2', N'149')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (107, N'CAT65', N'Loa âm thanh gia đình', N'TV và Video', NULL, NULL, NULL, N'2', N'149')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (108, N'CAT66', N'Máy chiếu', N'TV và Video', NULL, NULL, NULL, N'2', N'149')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (109, N'CAT67', N'Thiết bị truyền phát đa phương tiện', N'TV và Video', NULL, NULL, NULL, N'2', N'149')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (110, N'CAT68', N'Máy ảnh SLR kỹ thuật số', N'Máy ảnh kỹ thuật số', NULL, NULL, NULL, N'2', N'148')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (111, N'CAT69', N'Máy ảnh thể thao và hành động', N'Máy ảnh kỹ thuật số', NULL, NULL, NULL, N'2', N'148')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (112, N'CAT70', N'Ống kính máy ảnh', N'Máy ảnh kỹ thuật số', NULL, NULL, NULL, N'2', N'148')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (113, N'CAT71', N'Máy in ảnh', N'Máy ảnh kỹ thuật số', NULL, NULL, NULL, N'2', N'148')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (114, N'CAT72', N'Thẻ nhớ kỹ thuật số', N'Máy ảnh kỹ thuật số', NULL, NULL, NULL, N'2', N'148')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (115, N'CAT73', N'Điện thoại của nhà cung cấp dịch vụ', N'Điện thoại di động', NULL, NULL, NULL, N'2', N'151')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (116, N'CAT74', N'Điện thoại được mở khoá', N'Điện thoại di động', NULL, NULL, NULL, N'2', N'151')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (117, N'CAT75', N'Vỏ điện thoại và di động', N'Điện thoại di động', NULL, NULL, NULL, N'2', N'151')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (118, N'CAT76', N'Bộ sạc', N'Điện thoại di động', NULL, NULL, NULL, N'2', N'151')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (119, N'CAT77', N'Sofa và ghế dài', N'Đồ nội thất', NULL, NULL, NULL, N'2', N'152')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (120, N'CAT78', N'Ghế bành', N'Đồ nội thất', NULL, NULL, NULL, N'2', N'152')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (121, N'CAT79', N'Khung giường', N'Đồ nội thất', NULL, NULL, NULL, N'2', N'152')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (122, N'CAT80', N'Bàn đầu giường', N'Đồ nội thất', NULL, NULL, NULL, N'2', N'152')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (123, N'CAT81', N'Khăn trải bàn', N'Đồ nội thất', NULL, NULL, NULL, N'2', N'152')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (124, N'CAT82', N'Bóng đèn', N'Thắp sáng', NULL, NULL, NULL, N'2', N'153')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (125, N'CAT83', N'Đèn bàn', N'Thắp sáng', NULL, NULL, NULL, N'2', N'153')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (126, N'CAT84', N'Đèn trần', N'Thắp sáng', NULL, NULL, NULL, N'2', N'153')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (127, N'CAT85', N'Đèn tường', N'Thắp sáng', NULL, NULL, NULL, N'2', N'153')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (128, N'CAT86', N'Đèn phòng tắm', N'Thắp sáng', NULL, NULL, NULL, N'2', N'153')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (129, N'CAT87', N'Phụ kiện trang trí', N'Vật dụng trong nhà', NULL, NULL, NULL, N'2', N'154')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (130, N'CAT88', N'Nến và giá đỡ', N'Vật dụng trong nhà', NULL, NULL, NULL, N'2', N'154')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (131, N'CAT89', N'Nước hoa tại nhà', N'Vật dụng trong nhà', NULL, NULL, NULL, N'2', N'154')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (132, N'CAT90', N'Gương', N'Vật dụng trong nhà', NULL, NULL, NULL, N'2', N'154')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (133, N'CAT91', N'Đồng hồ treo tường', N'Vật dụng trong nhà', NULL, NULL, NULL, N'2', N'154')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (134, N'CAT92', N'Nội thất sân vườn', N'Vườn và ngoài trời', NULL, NULL, NULL, N'2', N'155')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (135, N'CAT93', N'Máy cắt cỏ', N'Vườn và ngoài trời', NULL, NULL, NULL, N'2', N'155')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (136, N'CAT94', N'Máy rửa áp lực', N'Vườn và ngoài trời', NULL, NULL, NULL, N'2', N'155')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (137, N'CAT95', N'Dụng cụ làm vườn', N'Vườn và ngoài trời', NULL, NULL, NULL, N'2', N'155')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (138, N'CAT96', N'Ăn uống ngoài trời', N'Vườn và ngoài trời', NULL, NULL, NULL, N'2', N'155')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (139, N'CAT97', N'Nam', N'Title', NULL, CAST(N'2022-11-04T11:08:48.937' AS DateTime), CAST(N'2022-11-04T11:08:48.937' AS DateTime), N'1', N'52')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (140, N'CAT98', N'Nữ', N'Title', NULL, CAST(N'2022-11-04T11:09:36.170' AS DateTime), CAST(N'2022-11-04T11:09:36.170' AS DateTime), N'1', N'52')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (141, N'CAT99', N'Phòng ngủ', NULL, NULL, CAST(N'2022-11-04T11:10:14.980' AS DateTime), CAST(N'2022-11-04T11:10:14.980' AS DateTime), N'1', N'53')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (142, N'CAT100', N'Văn Phòng', NULL, NULL, CAST(N'2022-11-04T11:10:37.513' AS DateTime), CAST(N'2022-11-04T11:10:37.513' AS DateTime), N'1', N'53')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (143, N'CAT101', N'Phòng khách', NULL, NULL, CAST(N'2022-11-04T11:10:54.560' AS DateTime), CAST(N'2022-11-04T11:10:54.560' AS DateTime), N'1', N'53')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (144, N'CAT102', N'Nhà bếp và Phòng ăn', NULL, NULL, CAST(N'2022-11-04T11:11:08.163' AS DateTime), CAST(N'2022-11-04T11:11:08.163' AS DateTime), N'1', N'53')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (147, N'CAT103', N'Laptop và Computer', NULL, NULL, CAST(N'2022-11-04T11:14:20.390' AS DateTime), CAST(N'2022-11-04T11:14:20.390' AS DateTime), N'1', N'54')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (148, N'CAT104', N'Máy ảnh kỹ thuật số', NULL, NULL, CAST(N'2022-11-04T11:15:21.817' AS DateTime), CAST(N'2022-11-04T11:15:21.817' AS DateTime), N'1', N'54')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (149, N'CAT105', N'TV và Video', NULL, NULL, CAST(N'2022-11-04T11:15:35.007' AS DateTime), CAST(N'2022-11-04T11:15:35.007' AS DateTime), N'1', N'54')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (151, N'CAT106', N'Điện thoại di động', NULL, NULL, CAST(N'2022-11-04T11:16:07.443' AS DateTime), CAST(N'2022-11-04T11:16:07.443' AS DateTime), N'1', N'54')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (152, N'CAT107', N'Đồ nội thất', NULL, NULL, CAST(N'2022-11-04T11:16:17.630' AS DateTime), CAST(N'2022-11-04T11:16:17.630' AS DateTime), N'1', N'55')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (153, N'CAT108', N'Thắp sáng', NULL, NULL, CAST(N'2022-11-04T11:16:29.907' AS DateTime), CAST(N'2022-11-04T11:16:29.907' AS DateTime), N'1', N'55')
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (154, N'CAT109', N'Vật dụng trong nhà', NULL, NULL, CAST(N'2022-11-04T11:16:47.230' AS DateTime), CAST(N'2022-11-04T11:16:47.230' AS DateTime), N'1', N'55')
GO
INSERT [dbo].[shop_categories] ([id], [category_code], [category_name], [description], [image], [created_at], [updated_at], [level], [parent_id]) VALUES (155, N'CAT110', N'Vườn và ngoài trời', NULL, NULL, CAST(N'2022-11-04T11:17:04.000' AS DateTime), CAST(N'2022-11-04T11:17:04.000' AS DateTime), N'1', N'55')
SET IDENTITY_INSERT [dbo].[shop_categories] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_customer_vouchers] ON 

INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (13, 1, 2, CAST(N'2022-12-01T11:14:38.960' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (14, 9, 2, CAST(N'2022-12-01T11:14:38.960' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (15, 11, 2, CAST(N'2022-12-01T11:14:38.960' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (16, 10, 2, CAST(N'2022-12-01T12:12:26.293' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (19, 2, 3, CAST(N'2022-12-01T13:29:24.267' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (20, 3, 3, CAST(N'2022-12-01T13:44:55.963' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (21, 7, 3, CAST(N'2022-12-01T13:46:45.127' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (22, 5, 3, CAST(N'2022-12-01T13:46:45.127' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (23, 4, 3, CAST(N'2022-12-01T13:46:53.703' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (24, 3, 4, CAST(N'2022-12-01T13:47:17.047' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (25, 1, 4, CAST(N'2022-12-01T13:47:17.047' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (26, 2, 4, CAST(N'2022-12-01T13:47:17.047' AS DateTime), NULL, 0)
INSERT [dbo].[shop_customer_vouchers] ([id], [customer_id], [voucher_id], [created_at], [updated_at], [is_used]) VALUES (27, 10, 4, CAST(N'2022-12-01T13:47:51.077' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[shop_customer_vouchers] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_customers] ON 

INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (1, N'kodoku', N'e10adc3949ba59abbe56e057f20f883e', N'Phú', N'Hồ Hoàng', 1, N'ho.hoangphudt169@gmail.com', CAST(N'2002-09-16T00:00:00.000' AS DateTime), NULL, N'0357337812', N'c', N'0357337812', N'Quận 12, Tp Hồ Chí Minh', N'334 Chợ Giồng Găng', N'Đồng Tháp', N'Huyện Tân Hồng', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-09-16T00:00:00.000' AS DateTime), CAST(N'2022-12-09T00:00:00.000' AS DateTime), N'Xã Tân Phước')
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (2, N'customer1', N'123', N'Lê Thị', N'Riêng', 0, N'rienglt@gmail.com', CAST(N'2000-06-11T00:00:00.000' AS DateTime), N'rienglt.jpg', N'', N'FPT Software', N'0123456789', N'Tô ký, An Phú Đông, Quận 12', N'Tô ký, An Phú Đông, Quận 12', N'Tp HCM', N'', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T12:27:30.000' AS DateTime), CAST(N'2022-09-16T12:27:30.000' AS DateTime), NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (3, N'customer2', N'123', N'Dương Thị', N'Mười', 0, N'muoidt@gmail.com', CAST(N'1999-09-11T00:00:00.000' AS DateTime), N'muoidt.jpg', N'', N'FPT Software', N'0987654321', N'Tô ký, An Phú Đông, Quận 12', N'Tô ký, An Phú Đông, Quận 12', N'Tp HCM', N'', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T12:27:30.000' AS DateTime), CAST(N'2022-09-16T12:27:30.000' AS DateTime), NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (4, N'customer3', N'123', N'Hà Huy', N'Giáp', 0, N'giaphh@gmail.com', CAST(N'1998-06-21T00:00:00.000' AS DateTime), N'giaphh.jpg', N'', N'FPT Software', N'0987321654', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', N'Tp HCM', N'', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T12:27:30.000' AS DateTime), CAST(N'2022-09-16T12:27:30.000' AS DateTime), NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (5, N'customer4', N'123', N'Nguyễn', N'Oanh', 0, N'oanhn@gmail.com', CAST(N'2003-03-24T00:00:00.000' AS DateTime), N'oanhn.jpg', N'', N'FPT Software', N'0654321987', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', N'Tp HCM', N'', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T12:27:30.000' AS DateTime), CAST(N'2022-09-16T12:27:30.000' AS DateTime), NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (6, N'customer5', N'123', N'Trường', N'Chinh', 0, N'chinht@gmail.com', CAST(N'1989-05-11T00:00:00.000' AS DateTime), N'chinht.jpg', N'', N'FPT Software', N'0531246987', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', N'Thạnh Lộc 17, Thạnh Lộc, Quận 12', N'Tp HCM', N'', N'99999', N'Vietnam', NULL, NULL, 1, CAST(N'2022-09-16T12:27:30.000' AS DateTime), CAST(N'2022-09-16T12:27:30.000' AS DateTime), NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (7, N'dangkhadet02', N'202cb962ac59075b964b07152d234b70', N'Dết', N'Đặng Kha', 0, N'dangkhadet02', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2022-11-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (8, N'kodoku1', N'202cb962ac59075b964b07152d234b70', N'Phú', N'Hồ Hoàng', 0, N'kodoku1@gmail.com', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2022-11-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (9, N'kodoku169', N'202cb962ac59075b964b07152d234b70', N'Kodoku', N'Fujii', 0, N'kodoku169@gmail.com', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2022-11-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (10, N'phuvncom007', N'e10adc3949ba59abbe56e057f20f883e', N'Phú Store', N'Hoàng', 1, N'phuvncom007@gmail.com', CAST(N'2002-09-16T00:00:00.000' AS DateTime), NULL, N'91971297579', N'', N'0989899889', N'Địa chỉ thanh toán', N'127 Tô Ký', N'Hồ Chí Minh', N'Quận 12', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-11-10T00:00:00.000' AS DateTime), CAST(N'2022-11-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (11, N'hydrax123', N'e10adc3949ba59abbe56e057f20f883e', N'Phú', N'Hồ Hoàng', 1, N'hydrax123@gmail.com', CAST(N'2002-09-16T00:00:00.000' AS DateTime), NULL, N'060932', N'', N'0314124511', N'Hẻm 16', N'Hẻm 16', N'Hồ Chí Minh', N'Quận 12', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2022-11-23T00:00:00.000' AS DateTime), N'Phường Tân Chánh Hiệp')
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (12, N'zhhphu690001a', N'e10adc3949ba59abbe56e057f20f883e', N'Phú', N'Hồ Hoàng', 1, N'zhhphu690001a@gmail.com', CAST(N'2006-01-02T00:00:00.000' AS DateTime), NULL, N'060932', N'', N'0357337812', N'Địa chỉ thanh toán', N'45B TCH', N'Hồ Chí Minh', N'Quận 12', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-02T00:00:00.000' AS DateTime), CAST(N'2022-12-02T00:00:00.000' AS DateTime), N'Phường Tân Chánh Hiệp')
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (13, N'Huy', N'e10adc3949ba59abbe56e057f20f883e', N'Hoàng', N'Huy', 1, N'Huy@gmail.c', CAST(N'2022-11-28T00:00:00.000' AS DateTime), NULL, N'123123123123', N'Huy@gmail.c', N'0765230162', N'123', N'123', N'Hồ Chí Minh', N'Quận 6', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-09T00:00:00.000' AS DateTime), CAST(N'2022-12-09T00:00:00.000' AS DateTime), N'Phường 11')
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (14, N'huyletran001', N'e10adc3949ba59abbe56e057f20f883e', N'Hoàng', N'Huy', 1, N'huyletran001@gmail.com', CAST(N'2022-11-30T00:00:00.000' AS DateTime), NULL, N'123123123123', N'huyletran001@gmail.com', N'0765230162', N'123', N'123', N'Hồ Chí Minh', N'Huyện Cần Giờ', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-09T00:00:00.000' AS DateTime), CAST(N'2022-12-09T00:00:00.000' AS DateTime), N'Xã Lý Nhơn')
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (15, N'huyletran007', N'e10adc3949ba59abbe56e057f20f883e', N'Huy', N'Huy', 1, N'huyletran007@gmail.com', CAST(N'2002-02-16T00:00:00.000' AS DateTime), NULL, N'079202019957', N'huyletran007@gmail.com', N'0765230162', N'240', N'240', N'Hồ Chí Minh', N'Quận 6', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-09T00:00:00.000' AS DateTime), CAST(N'2022-12-09T00:00:00.000' AS DateTime), N'Phường 11')
INSERT [dbo].[shop_customers] ([id], [username], [password], [last_name], [first_name], [gender], [email], [birthday], [avatar], [code], [company], [phone], [billing_address], [shipping_address], [city], [state], [postal_code], [country], [remember_token], [activate_code], [status], [created_at], [updated_at], [ward]) VALUES (16, N'huyle', N'd576ff2585e84eb3c3898b10b6f0e913', N'Nguyen', N'Join', 1, N'huyle', CAST(N'2022-11-30T00:00:00.000' AS DateTime), NULL, N'123123123123', N'NoiThat', N'076523162', N'123', N'123', N'Hòa Bình', N'Huyện Lạc Thủy', NULL, N'Việt Nam', NULL, NULL, 1, CAST(N'2022-12-11T00:00:00.000' AS DateTime), CAST(N'2022-12-11T00:00:00.000' AS DateTime), N'Xã Yên Bồng')
SET IDENTITY_INSERT [dbo].[shop_customers] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_imports] ON 

INSERT [dbo].[shop_imports] ([id], [store_id], [employee_id], [import_date], [created_at], [updated_at]) VALUES (2, 1, 1, CAST(N'2022-11-10T00:00:00.000' AS DateTime), CAST(N'2022-11-10T20:54:28.017' AS DateTime), CAST(N'2022-11-10T20:54:28.017' AS DateTime))
SET IDENTITY_INSERT [dbo].[shop_imports] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_order_details] ON 

INSERT [dbo].[shop_order_details] ([id], [order_id], [product_id], [quantity], [unit_price], [discount_percentage], [discount_amout], [order_detail_status], [date_allocated], [order_detail_name]) VALUES (135, 119, 63, CAST(5.0000 AS Decimal(18, 4)), CAST(20240000.0000 AS Decimal(19, 4)), 0, 0, N'Chờ xác nhận', CAST(N'2022-12-06T09:10:41.067' AS DateTime), N'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QBMSV.006) Đen')
INSERT [dbo].[shop_order_details] ([id], [order_id], [product_id], [quantity], [unit_price], [discount_percentage], [discount_amout], [order_detail_status], [date_allocated], [order_detail_name]) VALUES (136, 121, 55, CAST(1.0000 AS Decimal(18, 4)), CAST(11190000.0000 AS Decimal(19, 4)), 0, 0, N'Chờ xác nhận', CAST(N'2022-12-06T17:38:19.717' AS DateTime), N'Laptop Asus VivoBook X415EA i3 1115G4/4GB/512GB/Win11 (EK1386W)')
INSERT [dbo].[shop_order_details] ([id], [order_id], [product_id], [quantity], [unit_price], [discount_percentage], [discount_amout], [order_detail_status], [date_allocated], [order_detail_name]) VALUES (137, 120, 60, CAST(1.0000 AS Decimal(18, 4)), CAST(23990000.0000 AS Decimal(19, 4)), 0, 0, N'Chờ xác nhận', CAST(N'2022-12-06T17:38:19.717' AS DateTime), N'iPhone 14 Xanh dương 512 GB')
INSERT [dbo].[shop_order_details] ([id], [order_id], [product_id], [quantity], [unit_price], [discount_percentage], [discount_amout], [order_detail_status], [date_allocated], [order_detail_name]) VALUES (138, 122, 63, CAST(2.0000 AS Decimal(18, 4)), CAST(20240000.0000 AS Decimal(19, 4)), 0, 0, N'Chờ xác nhận', CAST(N'2022-12-09T21:37:40.980' AS DateTime), N'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QBMSV.006) Đen')
INSERT [dbo].[shop_order_details] ([id], [order_id], [product_id], [quantity], [unit_price], [discount_percentage], [discount_amout], [order_detail_status], [date_allocated], [order_detail_name]) VALUES (139, 123, 63, CAST(2.0000 AS Decimal(18, 4)), CAST(20240000.0000 AS Decimal(19, 4)), 0, 0, N'Chờ xác nhận', CAST(N'2022-12-10T13:13:27.437' AS DateTime), N'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QBMSV.006) Đen')
INSERT [dbo].[shop_order_details] ([id], [order_id], [product_id], [quantity], [unit_price], [discount_percentage], [discount_amout], [order_detail_status], [date_allocated], [order_detail_name]) VALUES (140, 124, 63, CAST(2.0000 AS Decimal(18, 4)), CAST(20240000.0000 AS Decimal(19, 4)), 0, 0, N'Chờ xác nhận', CAST(N'2022-12-10T13:13:30.993' AS DateTime), N'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QBMSV.006) Đen')
SET IDENTITY_INSERT [dbo].[shop_order_details] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_orders] ON 

INSERT [dbo].[shop_orders] ([id], [employee_id], [customer_id], [order_date], [shipped_date], [ship_name], [ship_address1], [ship_address2], [ship_city], [ship_state], [ship_postal_code], [ship_country], [shipping_fee], [payment_type_id], [paid_date], [order_status], [created_at], [updated_at], [order_note], [discount_amount], [ship_phone], [ship_ward], [id_order_ghn], [is_mo]) VALUES (119, 9, 1, CAST(N'2022-12-06T09:10:41.003' AS DateTime), N'1670543999000', N'Hồ Hoàng Phú', N'334 Chợ Giồng Găng', NULL, N'Đồng Tháp', N'Huyện Tân Hồng', N'', N'Việt Nam', CAST(44000.0000 AS Decimal(19, 4)), 2, CAST(N'2022-12-06T09:10:41.003' AS DateTime), N'Complete', CAST(N'2022-12-06T09:10:41.003' AS DateTime), NULL, N'', 10000, N'0357337812', N'Xã Tân Phước ', N'GAHRU3K7', 1)
INSERT [dbo].[shop_orders] ([id], [employee_id], [customer_id], [order_date], [shipped_date], [ship_name], [ship_address1], [ship_address2], [ship_city], [ship_state], [ship_postal_code], [ship_country], [shipping_fee], [payment_type_id], [paid_date], [order_status], [created_at], [updated_at], [order_note], [discount_amount], [ship_phone], [ship_ward], [id_order_ghn], [is_mo]) VALUES (120, 1, 1, CAST(N'2022-12-06T17:38:19.643' AS DateTime), N'1670543999000', N'Hồ Hoàng Phú', N'334 Chợ Giồng Găng', NULL, N'Đồng Tháp', N'Huyện Tân Hồng', N'', N'Việt Nam', CAST(34000.0000 AS Decimal(19, 4)), 1, NULL, N'New', CAST(N'2022-12-06T17:38:19.643' AS DateTime), NULL, N'', 0, N'0357337812', N'Xã Tân Phước ', NULL, 0)
INSERT [dbo].[shop_orders] ([id], [employee_id], [customer_id], [order_date], [shipped_date], [ship_name], [ship_address1], [ship_address2], [ship_city], [ship_state], [ship_postal_code], [ship_country], [shipping_fee], [payment_type_id], [paid_date], [order_status], [created_at], [updated_at], [order_note], [discount_amount], [ship_phone], [ship_ward], [id_order_ghn], [is_mo]) VALUES (121, 3, 1, CAST(N'2022-12-06T17:38:19.643' AS DateTime), N'1670543999000', N'Hồ Hoàng Phú', N'334 Chợ Giồng Găng', NULL, N'Đồng Tháp', N'Huyện Tân Hồng', N'', N'Việt Nam', CAST(34000.0000 AS Decimal(19, 4)), 1, NULL, N'Complete', CAST(N'2022-12-06T17:38:19.643' AS DateTime), NULL, N'', 50000, N'0357337812', N'Xã Tân Phước ', N'GAHRU3K7', 1)
INSERT [dbo].[shop_orders] ([id], [employee_id], [customer_id], [order_date], [shipped_date], [ship_name], [ship_address1], [ship_address2], [ship_city], [ship_state], [ship_postal_code], [ship_country], [shipping_fee], [payment_type_id], [paid_date], [order_status], [created_at], [updated_at], [order_note], [discount_amount], [ship_phone], [ship_ward], [id_order_ghn], [is_mo]) VALUES (122, 9, 1, CAST(N'2022-12-09T21:37:40.880' AS DateTime), N'1670803199000', N'Hồ Hoàng Phú', N'334 Chợ Giồng Găng', NULL, N'Đồng Tháp', N'Huyện Tân Hồng', N'', N'Việt Nam', CAST(44000.0000 AS Decimal(19, 4)), 3, NULL, N'Complete', CAST(N'2022-12-09T21:37:40.880' AS DateTime), NULL, N'', 0, N'0357337812', N'Xã Tân Phước ', N'GAHRU3K7', 0)
INSERT [dbo].[shop_orders] ([id], [employee_id], [customer_id], [order_date], [shipped_date], [ship_name], [ship_address1], [ship_address2], [ship_city], [ship_state], [ship_postal_code], [ship_country], [shipping_fee], [payment_type_id], [paid_date], [order_status], [created_at], [updated_at], [order_note], [discount_amount], [ship_phone], [ship_ward], [id_order_ghn], [is_mo]) VALUES (123, 9, 1, CAST(N'2022-12-10T13:13:27.327' AS DateTime), N'1670889599000', N'Hồ Hoàng Phú', N'334 Chợ Giồng Găng', NULL, N'Đồng Tháp', N'Huyện Tân Hồng', N'', N'Việt Nam', CAST(44000.0000 AS Decimal(19, 4)), 1, NULL, N'New', CAST(N'2022-12-10T13:13:27.327' AS DateTime), NULL, N'', 0, N'0357337812', N'Xã Tân Phước ', NULL, 0)
INSERT [dbo].[shop_orders] ([id], [employee_id], [customer_id], [order_date], [shipped_date], [ship_name], [ship_address1], [ship_address2], [ship_city], [ship_state], [ship_postal_code], [ship_country], [shipping_fee], [payment_type_id], [paid_date], [order_status], [created_at], [updated_at], [order_note], [discount_amount], [ship_phone], [ship_ward], [id_order_ghn], [is_mo]) VALUES (124, 9, 1, CAST(N'2022-12-10T13:13:30.947' AS DateTime), N'1670889599000', N'Hồ Hoàng Phú', N'334 Chợ Giồng Găng', NULL, N'Đồng Tháp', N'Huyện Tân Hồng', N'', N'Việt Nam', CAST(44000.0000 AS Decimal(19, 4)), 1, NULL, N'Shop Confirmed', CAST(N'2022-12-10T13:13:30.947' AS DateTime), NULL, N'', 0, N'0357337812', N'Xã Tân Phước ', NULL, 0)
SET IDENTITY_INSERT [dbo].[shop_orders] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_payment_types] ON 

INSERT [dbo].[shop_payment_types] ([id], [payment_code], [payment_name], [description], [image], [created_at], [updated_at]) VALUES (1, N'TTTMSKNH', N'Thanh toán tiền mặt', N'Thanh toán bằng tiền mặt khi nhận hàng.', NULL, CAST(N'2022-09-24T00:33:13.000' AS DateTime), CAST(N'2022-09-24T00:33:13.000' AS DateTime))
INSERT [dbo].[shop_payment_types] ([id], [payment_code], [payment_name], [description], [image], [created_at], [updated_at]) VALUES (2, N'Paypal', N'Thanh toán Paypal', N'Thanh toán qua PayPal, bạn có thể thanh toán bằng giỏ hàng tín dụng của mình nếu bạn Không có tài khoản PayPal.', NULL, CAST(N'2022-09-24T00:33:37.000' AS DateTime), NULL)
INSERT [dbo].[shop_payment_types] ([id], [payment_code], [payment_name], [description], [image], [created_at], [updated_at]) VALUES (3, N'CKNH', N'Chuyển khoản ngân hàng', N'Thực hiện thanh toán của bạn trực tiếp vào tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng ID đơn đặt hàng của bạn làm tài liệu tham khảo thanh toán. ', NULL, CAST(N'2022-09-24T00:33:58.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[shop_payment_types] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_product_discounts] ON 

INSERT [dbo].[shop_product_discounts] ([id], [product_id], [discount_name], [discount_amount], [is_fixed], [start_date], [end_date]) VALUES (1, 14, N'Giảm giá dịp lễ Vua Hùng năm 2022', 10, 0, CAST(N'2022-09-01T00:00:00.000' AS DateTime), CAST(N'2022-03-31T23:59:59.000' AS DateTime))
INSERT [dbo].[shop_product_discounts] ([id], [product_id], [discount_name], [discount_amount], [is_fixed], [start_date], [end_date]) VALUES (2, 15, N'Giảm giá dịp lễ 08/03 năm 2022', 15, 0, CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-03-08T23:59:59.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[shop_product_discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_product_images] ON 

INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (32, 60, N'https://i.ibb.co/fNFT4q3/i-Phone-14-plus-thumb-den-600x600.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (33, 60, N'https://i.ibb.co/kXV8wSt/iphone-14-den-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (34, 60, N'https://i.ibb.co/L0DtPfX/iphone-14-den-3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (35, 60, N'https://i.ibb.co/7Rv9WCT/iphone-14-den-22.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (36, 60, N'https://i.ibb.co/dMgQKK2/iphone-14-trang-1-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (37, 60, N'https://i.ibb.co/CnRMrqD/iphone-14-trang-2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (38, 60, N'https://i.ibb.co/YjFFX4F/iphone-14-trang-3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (39, 60, N'https://i.ibb.co/2737f6x/iphone-14-xanh-duong-3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (40, 60, N'https://i.ibb.co/6rtRGTw/iphone-14-xanh-duong-1-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (41, 60, N'https://i.ibb.co/FbYGBgL/iphone-14-xanh-duong-4.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (42, 60, N'https://i.ibb.co/XWLfpJQ/iphone-14-do-1-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (43, 60, N'https://i.ibb.co/cg9Z4jX/iphone-14-do-2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (44, 60, N'https://i.ibb.co/PZVPY8Z/iphone-14-do-3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (52, 56, N'https://i.ibb.co/ssWqKVq/samsung-galaxy-a23-xanh-thumb-600x600.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (53, 56, N'https://i.ibb.co/BwHGZz9/matt-popovich-0-FZr-PECK5cg-unsplash.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (54, 49, N'https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-tim-thumb-600x600.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (55, 55, N'https://cdn.tgdd.vn/Products/Images/44/274920/asus-vivobook-x415ea-i3-ek1386w-220322-050907-600x600.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (60, 63, N'https://i.ibb.co/yq3Pt13/banner-acer-nitro-5-gaming-an515-45-r6ev-r5-5600h-8gb-600x600.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (61, 63, N'https://i.ibb.co/FBgbGgV/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-6-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (62, 63, N'https://i.ibb.co/5x584R1/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-ab-3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (63, 63, N'https://i.ibb.co/ckdn8SP/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-ab-12.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (64, 63, N'https://i.ibb.co/PhBrWSW/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-ab-2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (65, 63, N'https://i.ibb.co/kDdND0M/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-5-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (66, 63, N'https://i.ibb.co/n8P8qgn/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (67, 63, N'https://i.ibb.co/XzVp7wg/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-11-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (68, 63, N'https://i.ibb.co/JKNgYg6/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-9-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (69, 63, N'https://i.ibb.co/DPFwgbG/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-8-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (70, 63, N'https://i.ibb.co/TBkxCSC/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-10-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (71, 63, N'https://i.ibb.co/hgMR5rr/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-4-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (72, 63, N'https://i.ibb.co/MndG50Q/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-30.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (73, 63, N'https://i.ibb.co/zPjVJpp/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-7-1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (83, 65, N'https://i.ibb.co/zQPJSP3/Balboa-Counter-Stool1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (84, 65, N'https://i.ibb.co/r6nXHzn/Balboa-Counter-Stool2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (85, 65, N'https://i.ibb.co/B2JdqWS/Balboa-Side-Chair1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (86, 65, N'https://i.ibb.co/sCYG0SV/Balboa-Side-Chair2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (87, 65, N'https://i.ibb.co/jyYPB2M/Balboa-Counter-Stool3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (88, 64, N'https://i.ibb.co/NtNwnRC/8.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (89, 66, N'https://i.ibb.co/nb14VWr/Broderick-Daybed2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (90, 66, N'https://i.ibb.co/R65My3J/Broderick-Daybed1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (91, 66, N'https://i.ibb.co/MphVLtT/Broderick-Daybed3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (92, 67, N'https://i.ibb.co/gWj2T3H/washington-sofa1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (93, 67, N'https://i.ibb.co/PwbfWDT/washington-sofa2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (94, 67, N'https://i.ibb.co/MR3yv84/washington-sofa4.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (95, 67, N'https://i.ibb.co/vwRdjMN/washington-sofa3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (96, 67, N'https://i.ibb.co/wrZZFrf/washington-sofa5.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (97, 68, N'https://i.ibb.co/4pCRdS1/Venice-Rattan-Chair-Cushion1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (98, 68, N'https://i.ibb.co/KFhMLj2/Venice-Rattan-Chair-Cushion2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (99, 68, N'https://i.ibb.co/1rfrPWy/Venice-Rattan-Chair-Cushion3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (100, 69, N'https://i.ibb.co/jDgN29F/dallas-sofa1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (101, 69, N'https://i.ibb.co/M9fMGmC/dallas-sofa2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (102, 69, N'https://i.ibb.co/k8h1Yw7/dallas-sofa4.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (103, 69, N'https://i.ibb.co/MZz3NYd/dallas-sofa5.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (104, 69, N'https://i.ibb.co/DDJ2BrP/dallas-sofa3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (105, 70, N'https://i.ibb.co/bdwRfJP/Hanging-Rattan-Bench-Cushion.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (106, 70, N'https://i.ibb.co/hZqYJpk/Hanging-Rattan-Bench-Cushion1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (107, 70, N'https://i.ibb.co/7bqX9wt/Hanging-Rattan-Chair-Cushion1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (108, 70, N'https://i.ibb.co/dBkWNFx/Hanging-Rattan-Chair-Cushion2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (109, 70, N'https://i.ibb.co/XyNm4Br/Hanging-Rattan-Bench-Cushion2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (110, 70, N'https://i.ibb.co/M2q6F2P/Hanging-Rattan-Chair-Cushion.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (111, 71, N'https://i.ibb.co/WyccYcZ/Grady-Sleeper-King.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (112, 71, N'https://i.ibb.co/7nVBbkj/Grady-Sleeper-King1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (113, 71, N'https://i.ibb.co/9qyw6BS/Grady-Sofa1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (114, 72, N'https://i.ibb.co/jyJv9cn/gina-sofa1.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (115, 72, N'https://i.ibb.co/4jRg8Nv/gina-sofa2.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (116, 72, N'https://i.ibb.co/mX5FMnj/gina-sofa3.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (117, 72, N'https://i.ibb.co/Br6Mgbz/gina-sofa4.jpg')
INSERT [dbo].[shop_product_images] ([id], [product_id], [image]) VALUES (118, 72, N'https://i.ibb.co/189n7hs/gina-sofa5.jpg')
SET IDENTITY_INSERT [dbo].[shop_product_images] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_product_reviews] ON 

INSERT [dbo].[shop_product_reviews] ([id], [product_id], [customer_id], [rating], [comment], [created_at], [updated_at]) VALUES (1, 14, 1, 3, N'Chụp ảnh tốt, hình vi diệu... Có điều giá hơi chát, 4s ;P', CAST(N'2022-09-16T16:03:05.000' AS DateTime), NULL)
INSERT [dbo].[shop_product_reviews] ([id], [product_id], [customer_id], [rating], [comment], [created_at], [updated_at]) VALUES (2, 14, 1, 5, N'Sản phẩm mua mới cách đây 2 tháng, chưa thấy lỗi gì. Đóng gói khá cẩn thận, tốt.', CAST(N'2022-09-16T16:05:46.000' AS DateTime), NULL)
INSERT [dbo].[shop_product_reviews] ([id], [product_id], [customer_id], [rating], [comment], [created_at], [updated_at]) VALUES (3, 14, 1, 1, N'Mới mua về, đang khui hộp lỡ tay làm rớt có 1 cái, hư luôn, tệ hết sức, không bảo hành luôn. Cho 1 sao vì số t xui :(', CAST(N'2022-09-16T16:06:35.000' AS DateTime), NULL)
INSERT [dbo].[shop_product_reviews] ([id], [product_id], [customer_id], [rating], [comment], [created_at], [updated_at]) VALUES (4, 14, 1, 3, N'Có vẻ tốt, đợi thời gian nữa xem sao :V', CAST(N'2022-09-16T18:26:57.000' AS DateTime), NULL)
INSERT [dbo].[shop_product_reviews] ([id], [product_id], [customer_id], [rating], [comment], [created_at], [updated_at]) VALUES (5, 14, 1, 5, N'Tuyệt vời, mình mua được ngay lúc giảm giá còn 20%. Xài thoải mái, xứng đáng giá tiền sau khi giảm giá ;P', CAST(N'2022-09-16T19:42:06.000' AS DateTime), NULL)
INSERT [dbo].[shop_product_reviews] ([id], [product_id], [customer_id], [rating], [comment], [created_at], [updated_at]) VALUES (6, 60, 1, 5, N'hayy', CAST(N'2022-12-02T08:55:17.607' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[shop_product_reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_product_vouchers] ON 

INSERT [dbo].[shop_product_vouchers] ([id], [product_id], [voucher_id], [created_at], [updated_at]) VALUES (14, 55, 3, CAST(N'2022-12-01T13:22:36.363' AS DateTime), NULL)
INSERT [dbo].[shop_product_vouchers] ([id], [product_id], [voucher_id], [created_at], [updated_at]) VALUES (15, 55, 4, CAST(N'2022-12-01T13:47:17.070' AS DateTime), NULL)
INSERT [dbo].[shop_product_vouchers] ([id], [product_id], [voucher_id], [created_at], [updated_at]) VALUES (16, 63, 11, CAST(N'2022-12-01T17:59:52.533' AS DateTime), NULL)
INSERT [dbo].[shop_product_vouchers] ([id], [product_id], [voucher_id], [created_at], [updated_at]) VALUES (17, 64, 1, CAST(N'2022-12-07T21:24:42.127' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[shop_product_vouchers] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_products] ON 

INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (14, N'P16', N'Coat Pool Comfort Jacket', N'images/1-1-600x675.jpg', N'Coat Pool Comfort Jacket', N'Coat Pool Comfort Jacket', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 74, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (15, N'P17', N'Nồi cơm điện', N'images/2-1_1.jpg', N'Nồi', N'Nồi', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 59, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (16, N'P18', N'Máy ảnh pixel chuyên nghiệp', N'images/2-2_1.jpg', N'Máy ảnh', N'Máy ảnh', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 110, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (17, N'P19', N'Trang phục thể thao nữ', N'images/2-3_1.jpg', N'Trang phục', N'Trang phục', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 74, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (18, N'P20', N'Mũ cổ điển', N'images/3-1-2.jpg', N'Mũ', N'Mũ', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 77, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (19, N'P21', N'Túi xách nữ', N'images/3-2.jpg', N'Túi xách', N'Túi xách', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 76, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (20, N'P22', N'Iphone Apple', N'images/3-3.jpg', N'Iphone', N'Iphone', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 115, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (21, N'P23', N'Khăn tắm', N'images/3-4-2.jpg', N'Khăn', N'Khăn', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 62, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (22, N'P24', N'MacBook Apple', N'images/3-5.jpg', N'Laptop', N'Laptop', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 103, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (23, N'P25', N'Băng đô', N'images/3-6-2.jpg', N'Băng đô', N'Băng đô', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 62, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (24, N'P26', N'Loa Bluetool nhiều màu sắc', N'images/3-7.jpg', N'Loa Bluetool', N'Loa Bluetool', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3600000.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 54, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (25, N'P27', N'Balo trẻ trung', N'images/3-8-2.jpg', N'Balo', N'Balo', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 62, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (26, N'P28', N'USB', N'images/3-9.jpg', N'USB', N'USB', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 54, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (27, N'P29', N'Thuốc nhuộm tóc nữ', N'images/3-10.jpg', N'Thuốc nhuộm tóc', N'Thuốc nhuộm tóc', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 56, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (28, N'P30', N'Áo nam', N'images/4-1.jpg', N'Áo', N'Áo', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 66, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (29, N'P31', N'Túi xách nữ thời trang', N'images/4-2-2.jpg', N'Túi', N'Túi', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 76, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (30, N'P32', N'Giày trượt băng màu đen', N'images/4-3.jpg', N'Giày', N'Giày', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 56, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (31, N'P33', N'Áo khoác thể thao nữ', N'images/4-4-1.jpg', N'Áo', N'Áo', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 74, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (32, N'P34', N'Túi du lịch', N'images/4-5-1.jpg', N'Phụ kiện', N'Phụ kiện', CAST(2400000.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 0, 0, 62, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (33, N'P35', N'Giày da màu xám', N'images/4-6.jpg', N'Giày', N'Giày', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 52, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (34, N'P36', N'Đồng hồ nam màu đen', N'images/4-7.jpg', N'Đồng hồ', N'Đồng hồ', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 0, 0, 70, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (35, N'P39', N'Máy giặt', N'images/5-2-2.jpg', N'Máy giặt', N'Máy giặt', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 62, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (36, N'P40', N'TV HD', N'images/5-3.jpg', N'TV', N'TV', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 106, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (37, N'P43', N'Camera giám sát', N'images/5-6.jpg', N'Camera', N'Camera', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 61, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (38, N'P44', N'Tai nghe chụp tai bluetooth', N'images/5-7.jpg', N'Tai nghe', N'Tai nghe', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 54, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (39, N'P45', N'Sạc dự phòng Apple', N'images/5-8.jpg', N'Sạc', N'Sạc', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 54, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (40, N'P46', N'Sofa sang trọng màu trắng', N'images/6-1.jpg', N'Sofa', N'Sofa', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 92, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (41, N'P47', N'Ghế ăn nhà bếp', N'images/6-2-2.jpg', N'Ghế', N'Ghế', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 0, 0, 99, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (42, N'P48', N'Đèn bàn phòng ngủ', N'images/6-3-2.jpg', N'Đèn', N'Đèn', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 125, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (43, N'P49', N'Ghế kiểu mới', N'images/6-4.jpg', N'Ghế', N'Ghế', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 90, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (44, N'P50', N'Nồi chiên không dầu', N'images/6-5.jpg', N'Nồi', N'Nồi', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 0, 0, 59, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (45, N'P51', N'Chảo chống dính', N'images/6-7.jpg', N'Chảo', N'Chảo', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 59, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (46, N'P52', N'Máy xoay thịt', N'images/6-8-2.jpg', N'Auto', N'Auto', CAST(2983800.0000 AS Decimal(19, 4)), CAST(3729750.0000 AS Decimal(19, 4)), N'40', 0, 1, 0, 59, 18, CAST(N'2022-09-12T00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (48, N'dien-thoai-samsung-galaxy-s22-ultra-5g-128gb', N'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', N'https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-090222-104147-600x600.jpg', N'Mô tả ngắn', N'<p><strong>Mô tả sản phẩm</strong></p>', CAST(9000000.0000 AS Decimal(19, 4)), CAST(10005000.0000 AS Decimal(19, 4)), N'1 cái', 0, 0, 0, 60, 18, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (49, N'dien-thoai-iphone-14-pro-256gb', N'Điện thoại iPhone 14 Pro 256GB', N'https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-tim-thumb-600x600.jpg', N'Điện thoại iPhone 14 Pro 256GB', N'<p>Thông tin sản phẩm</p><h3>Apple trong sự kiện ngày 8/9 đã giới thiệu đến người tiêu dùng mẫu iPhone 14 Pro 256GB mang những cải tiến về mặt thiết kế cũng như cấu hình phần cứng, hứa hẹn một sản phẩm mạnh mẽ đáp ứng mọi nhu cầu của người dùng.</h3><p>Phúf</p><p>âf</p><blockquote><p>ák</p></blockquote>', CAST(45000000.0000 AS Decimal(19, 4)), CAST(33390000.0000 AS Decimal(19, 4)), N'1 cái', 0, 0, 0, 60, 18, CAST(N'2022-11-15T23:36:03.963' AS DateTime), CAST(N'2022-11-15T23:36:03.963' AS DateTime), 1, NULL, CAST(2.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (50, N'anker-powercore-a1263', N'Anker PowerCore A1263', N'https://cdn.tgdd.vn/Products/Images/57/208991/sac-du-phong-anker-powercore-a1263-190722-051423-600x600.jpg', N'Pin sạc dự phòng 10.000 mAh Anker PowerCore A1263', N'<h3>Sạc dự phòng Anker PowerCore A1263 có thiết kế đơn giản, kích thước nhỏ gọn (92 x 60 x 22 mm) giúp người dùng dễ dàng cầm nắm khối lượng nhẹ 180g</h3><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/57/208991/sac-du-phong-anker-powercore-a1263-1.jpg" alt="Sạc dự phòng Anker PowerCore A1263 có thiết kế nhỏ gọn"></span></p><h3>Pin dự phòng được trang bị hệ thống an toàn thông minh MultiProtect, giúp kiểm soát nhiệt độ viên pin tốt hơn, tránh tình trạng quá nhiệt</h3><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/57/208991/sac-du-phong-anker-powercore-a1263-2.jpg" alt="Sạc dự phòng Anker PowerCore A1263 có khả năng kiểm soát nhiệt độ tốt"></span></p><h3>Hỗ trợ công nghệ sạc nhanh độc quyền của Anker, giúp các thiết bị của bạn nhanh chóng đầy pin hơn</h3>', CAST(790000.0000 AS Decimal(19, 4)), CAST(395000.0000 AS Decimal(19, 4)), N'1 cái', 0, 0, 0, 62, 18, CAST(N'2022-11-10T00:00:00.000' AS DateTime), CAST(N'2022-11-10T00:00:00.000' AS DateTime), 1, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (55, N'laptop-asus-vivobook-x415ea-i3-1115g44gb512gbwin11-ek1386w', N'Laptop Asus VivoBook X415EA i3 1115G4/4GB/512GB/Win11 (EK1386W)', N'https://cdn.tgdd.vn/Products/Images/44/274920/asus-vivobook-x415ea-i3-ek1386w-220322-050907-600x600.jpg', N'Mang vẻ ngoài sang trọng, thanh lịch cùng hiệu năng ổn định đến từ chip Intel thế hệ 11 tân tiến, laptop Asus VivoBook X415EA i3 1115G4 (EK1386W) là sản phẩm đáp ứng tốt mọi tác vụ làm việc hay giải trí cơ bản của người dùng đúng chuẩn laptop học tập', N'<p>• Laptop Asus VivoBook mang diện mạo hài hoà về phong cách thiết kế với lớp <strong>vỏ nhựa</strong> cứng cáp phủ lớp sơn bạc hiện đại.&nbsp;Khối lượng <strong>1.6 kg</strong>&nbsp;cho phép bạn xếp gọn máy vào balo và sẵn sàng mang theo tới bất kỳ nơi nào mà không gặp trở ngại về cân nặng.</p><p>• Màn hình viền mỏng&nbsp;<strong>14 inch</strong>&nbsp;<strong>Full HD (1920 x 1080)</strong> phủ tấm nền <strong>LED Backlit&nbsp;</strong>mang lại chất lượng hiển thị sắc nét, màu sắc trung thực, độ tương phản cao và tiết kiệm năng lượng. Công nghệ <strong>Anti Glare</strong> giúp giảm hiện tượng chói, loá, bóng gương, bảo vệ thị giác người dùng.</p><p>• Được trang bị CPU&nbsp;<strong>Intel Core i3 Tiger Lake 1115G4</strong>&nbsp;cùng card tích hợp <strong>Intel UHD Graphics&nbsp;</strong>cho phép người dùng vận hành, xử lý hiệu quả công việc trên các ứng dụng của Office như Word, Excel,...</p><p>• <strong>RAM 4 GB</strong> trên <a href="https://www.thegioididong.com/laptop-asus" data-bs-original-title="" title="">laptop Asus</a> cho khả năng đa nhiệm ổn định nhiều tác vụ văn phòng cùng lúc. <strong>SSD 512 GB</strong> cung cấp không gian lưu trữ tốt, mang lại tốc độ đọc, ghi nhanh chóng.</p><p>• Đăng nhập nhanh chóng, bảo vệ dữ liệu <a href="https://www.thegioididong.com/laptop" data-bs-original-title="" title="">laptop</a> an toàn hơn nhờ bảo mật <strong>vân tay một chạm</strong>.&nbsp;<strong>VGA Webcam</strong> hỗ trợ gọi video, học trực tuyến tiện lợi cho người dùng cũng được tích hợp.</p><p>• Công nghệ&nbsp;<strong>SonicMaster audio&nbsp;</strong>tối ưu âm thanh dựa trên phần cứng trên máy tính&nbsp;giúp thiết bị phát ra âm thanh chất lượng tốt nhất trong mọi hoàn cảnh.</p><p>• Liên kết, truyền tải dữ liệu đến các thiết bị ngoại vi nhanh chóng nhờ các cổng giao tiếp: USB 3.2, 2 x USB 2.0, HDMI, USB Type-C.</p>', CAST(11490000.0000 AS Decimal(19, 4)), CAST(11190000.0000 AS Decimal(19, 4)), N'1 chiếc', 0, 0, 0, 54, 18, CAST(N'2022-12-01T21:50:34.800' AS DateTime), CAST(N'2022-12-01T21:50:34.800' AS DateTime), 3, NULL, CAST(100.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (56, N'samsung-galaxy-a23-6gb', N'Samsung Galaxy A23 6GB', N'https://i.ibb.co/ssWqKVq/samsung-galaxy-a23-xanh-thumb-600x600.jpg', N'Được Samsung cho ra mắt vào 03/2022 - Samsung Galaxy A23 6GB có một thiết kế trẻ trung cùng bộ thông số kỹ thuật khá ấn tượng trong tầm giá, đáp ứng nhu cầu sử dụng cả ngày một cách ổn định nhờ trang bị chipset đến từ nhà Qualcomm và một viên pin dung lượng khủng.', N'<h3>Trải nghiệm mượt mà trên mọi tác vụ</h3><p>Trang bị trong máy là bộ vi xử lý Snapdragon 680 8 nhân với mức xung nhịp tối đa lên đến 2.4 GHz, cho ra trải nghiệm theo mình đánh giá là khá mượt mà, thao tác công việc hàng ngày như nhắn tin, lướt web nhanh chóng, không thấy xuất hiện tình trạng giật lag.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084657.jpg" alt="Trang bị Snapdragon 680 - Samsung Galaxy A23 6GB"></span></p><p>Ở tựa game Liên Quân Mobile mình có trải nghiệm trên Galaxy A23 với mức cấu hình cao cùng chế độ 60 FPS cho ra trải nghiệm tạm ổn, hình ảnh nhân vật hiển thị rõ nét, chân thực.</p><p>Trường hợp drop FPS vẫn còn xuất hiện tuy nhiên không quá đáng kể, khung hình được giao động ổn định loanh quanh mức 55 - 60.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084700.jpg" alt="Cấu hình Liên Quân Mobile - Samsung Galaxy A23 6GB"></span></p><p>Trò chơi thứ 2 mình có thử qua là PUBG Mobile, ở mức đồ họa mượt và tốc độ khung hình cao cho ra những phút giây chiến game khá ổn, tình trạng giật lag, tụt khung hình vẫn xảy ra khi mình tham chiến ở các vị trí đông người với tốc độ khung hình dao động tầm 25 - 29 FPS.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084702.jpg" alt="Cấu hình PUBG Moblie - Samsung Galaxy A23 6GB"></span></p><p>Galaxy A23 sở hữu&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" data-bs-original-title="" title="">RAM 6 GB</a> giúp mình thao tác các công việc hàng ngày khá tốt, đa nhiệm mượt mà và không thấy xuất hiện việc tải lại ứng dụng khi mở nhiều app cùng một lúc. Để hỗ trợ cho các tác vụ nâng cao đòi hỏi RAM khủng, Samsung hỗ trợ cho máy tính năng “RAM Plus” giúp mở rộng bộ nhớ RAM lên đến 10 GB (6 GB mặc định + 4 GB mở rộng).</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084704.jpg" alt="Tính năng mở rộng RAM - Samsung Galaxy A23 6GB"></span></p><h3>Cùng bạn ghi lại mọi khoảnh khắc</h3><p>Máy trang bị cụm camera sau với camera chính 50 MP, camera góc siêu rộng 5 MP cùng cảm biến xóa phông, macro có cùng độ phân giải 2 MP, đem lại khả năng chụp ảnh sắc nét và hỗ trợ nhiều tính năng.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084707.jpg" alt="Trang bị 4 camera - Samsung Galaxy A23 6GB"></span></p><p>Khi mình chụp ảnh ngoài trời với Galaxy A23 cho thấy bức ảnh thu lại có độ chi tiết cao, màu sắc tươi tắn, xử lý ảnh lúc chụp ngược sáng khá tốt, tình trạng vỡ nét sau khi chỉnh sửa cũng được cải thiện đáng kể nhờ bức hình thu được có độ phân giải lên đến 50 MP.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084705.jpg" alt="Ảnh chụp vào ban ngày - Samsung Galaxy A23 6GB"></span></p><p>Khả năng thu sáng của máy khá tốt khi chụp trong môi trường thiếu sáng, tái hiện các vật thể xung quanh tương đối rõ, hiện tượng lóe sáng ở những vị trí như bóng đèn cũng được cải thiện, hiện tượng nhiễu ảnh gần như không xuất hiện trong quá trình mình sử dụng.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084709.jpg" alt="Ảnh chụp vào ban đêm - Samsung Galaxy A23 6GB"></span></p><p>Với ống kính selfie 8 MP giúp cho mình có được những bức ảnh tự chụp rõ nét, độ chân thực cao làm cho các khuyết điểm trên mặt mình được thu lại khá chi tiết, tuy nhiên khi sử dụng tính năng làm đẹp trên máy thì điều này được cải thiện rõ rệt, bức ảnh cho ra cực kỳ ổn áp.</p><h3>Vẻ ngoài trẻ trung, màn hình kích thước lớn</h3><p>Máy sử dụng lối thiết kế nguyên khối với bộ khung và mặt lưng được thiết kế từ nhựa giúp tối ưu khối lượng máy, mang lại cho mình cảm giác cầm nắm nhẹ nhàng, không gây mỏi tay quá nhiều khi sử dụng liên tục.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084712.jpg" alt="Thiết kế nguyên khối - Samsung Galaxy A23 6GB"></span></p><p>Mình khá thích thú với phần mặt lưng sáng bóng trông khá nổi bật khi cầm nắm sử dụng, tuy nhiên theo mình thì đây cũng là một điểm hạn chế bởi máy bám dấu vân tay khá nhiều.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084714.jpg" alt="Mặt lưng óng ánh - Samsung Galaxy A23 6GB"></span></p><p>Phím nguồn được tích hợp cảm biến vân tay với tốc độ phản hồi khá tốt, giúp mình mở khóa một cách dễ dàng và nhanh chóng chỉ với một tay rất thuận tiện.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084716.jpg" alt="Tích hợp vân tay cạnh viền - Samsung Galaxy A23 6GB"></span></p><p>Galaxy A23 được trang bị tấm nền PLS TFT LCD với kích thước 6.6 inch có độ phân giải Full HD+ (1080 x 2408 Pixels) mang lại trải nghiệm cho những phút giây giải trí như xem phim, chơi game rất tốt bởi hình ảnh được thể hiện chi tiết, màu sắc rực rỡ, độ tương phản cao.</p><p>Xem thêm:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-pls-tft-lcd-la-gi-1323627" data-bs-original-title="" title="">Màn hình PLS TFT LCD là gì?</a></p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084718.jpg" alt="Màn hình kích thước lớn - Samsung Galaxy A23 6GB"></span></p><p>Mình khá thích thú khi chuyển từ màn hình 60 Hz trên chiếc <a href="https://www.thegioididong.com/dtdd" data-bs-original-title="" title="">điện thoại</a> đang dùng sang màn hình 90 Hz trên Galaxy A23, với trải nghiệm hoàn toàn khác biệt, tốc độ phản hồi và vuốt chạm trông rất mượt mà và đã mắt.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084719.jpg" alt="Hỗ trợ tần số quét 120 Hz - Samsung Galaxy A23 6GB"></span></p><h3>Viên pin khủng 5000 mAh đáp ứng sử dụng cả ngày</h3><p>Để kiểm tra thời gian sử dụng trên chiếc máy, mình có sử dụng Galaxy A23 như một chiếc máy chính cho các tác vụ giải trí như xem YouTube, chơi game, lướt facebook cho ra thời lượng hơn 8 tiếng* rất ấn tượng.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084721.jpg" alt="Thời lượng sử dụng - Samsung Galaxy A23 6GB"></span></p><p>Máy hỗ trợ công nghệ sạc nhanh 25 W giúp tối ưu thời gian lấp đầy viên pin mất khoảng 1 giờ 35 phút* để nạp đầy từ 0 - 100%.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084723.jpg" alt="Thời gian sạc máy - Samsung Galaxy A23 6GB"></span></p><p>*Thời gian sử dụng/sạc có thể thay đổi tùy vào tác vụ sử dụng và nhiệt độ thiết bị</p><p>Qua những trải nghiệm của mình cho thấy máy hoàn toàn xứng đáng với mức giá mà nó trang bị, đáp ứng tốt các nhu cầu sử dụng cơ bản hàng ngày, hỗ trợ chơi được các tựa game hiện hành và khả năng chụp ảnh một cách sắc nét, xứng đáng là một sự lựa chọn đáng mua trong tầm giá.</p>', CAST(6190000.0000 AS Decimal(19, 4)), CAST(5590000.0000 AS Decimal(19, 4)), N'1 chiếc', 0, 0, 0, 60, 18, CAST(N'2022-11-14T00:00:00.000' AS DateTime), CAST(N'2022-11-14T00:00:00.000' AS DateTime), 1, NULL, CAST(20.0000 AS Decimal(18, 4)), CAST(0.8400 AS Decimal(18, 4)), CAST(16.5400 AS Decimal(18, 4)), CAST(195.0000 AS Decimal(18, 4)), CAST(7.6900 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (60, N'iphone-14-256gb', N'iPhone 14', N'https://i.ibb.co/fNFT4q3/i-Phone-14-plus-thumb-den-600x600.jpg', N'Mới đây thì tại sự kiện ra mắt sản phẩm mới thường niên đến từ nhà Apple thì chiếc điện thoại iPhone 14 256GB cũng đã chính thức lộ diện, thiết bị được nâng cấp toàn diện từ camera cho đến hiệu năng và hầu hết là những thông số hàng đầu trong giới smartphone. ', N'<h3>Đẳng cấp thiết kế dẫn đầu xu thế</h3><p>Được hoàn thiện với những vật liệu cao cấp khi mặt lưng làm từ kính cùng bộ khung nhôm chắc chắn, điều này làm cho chiếc máy của bạn trở nên sang trọng và đẳng cấp hơn.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035406.jpg" alt="Thiết kế cao cấp - iPhone 14 256GB"></span></p><p>Với kiểu dáng thiết kế phẳng nhờ thừa hưởng vẻ đẹp đến từ các thế hệ trước, vì thế <a href="https://www.thegioididong.com/dtdd-apple-iphone-14-series" data-bs-original-title="" title="">iPhone 14</a> vẫn giữ cho mình một nét đẹp rất hợp xu hướng và dẫn đầu xu thế.</p><h3>Trang bị công nghệ màn hình tân tiến</h3><p>iPhone 14 được sử dụng công nghệ màn hình OLED cao cấp, mang đến cho thiết bị khả năng tái hiện hình ảnh trung thực và độ chính xác màu cực cao.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035408.jpg" alt="Màn hình chất lượng - iPhone 14 256GB"></span></p><p>Màn hình mang đến cái nhìn trong trẻo và màu sắc bắt mắt giúp mọi tác vụ chơi game hay xem phim của bạn trở nên tuyệt vời hơn rất nhiều.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035410.jpg" alt="Trải nghiệm hình ảnh chất lượng - iPhone 14 256GB"></span></p><h3>Hỗ trợ chụp ảnh quay phim chuẩn điện ảnh</h3><p>Mặt sau của máy sẽ là cụm camera chất lượng với bộ đôi camera có chung độ phân giải 12 MP. Cùng với đó sẽ là thuật toán thông minh đến từ con chip trang bị giúp bạn có thể sở hữu được nhiều bức ảnh sắc nét và chất lượng.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035413.jpg" alt="TÍch hợp camera đôi - iPhone 14 256GB"></span></p><p>Để làm phong phú hơn cho bộ sưu tập của bạn thì Apple cũng đã bổ sung cho máy hàng loạt các tính năng chụp ảnh nghệ thuật, từ đó giúp bạn có thể làm mới được nhiều kiểu ảnh hơn trong cùng một khung cảnh.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035415.jpg" alt="Tích hợp hàng loạt những tính năng chụp ảnh - iPhone 14 256GB"></span></p><p>Ngoài ra máy còn có hỗ trợ thêm chế độ quay video đạt chuẩn lên tới 4K sắc nét, đây được xem là sự cải tiến về khả năng quay phim trên dòng điện thoại iPhone, mang đến cho người dùng những thước phim cực kỳ chất lượng.&nbsp;Với nhu cầu sử dụng cho việc quay chụp hơn thì người dùng có thể tham khảo thêm phiên bản&nbsp;iPhone 14 Pro Max.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035416.jpg" alt="Hỗ trợ chụp ảnh quay phim chất lượng - iPhone 14 256GB"></span></p><h3>Vi xử lý mạnh mẽ đến từ nhà Apple</h3><p>Được tích hợp con chip Apple A15 Bionic 6 nhân, đây được xem là bộ vi xử lý có hiệu năng khủng do nhà Apple tạo ra với hiệu năng hàng đầu thế giới khả năng cân tốt mọi nhu cầu sử dụng.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035418.jpg" alt="Hiệu năng mạnh mẽ - iPhone 14 256GB"></span></p><p>Không chỉ hỗ trợ tốt cho việc chơi game mà đây còn được xem là chipset có khả năng tối ưu được thời gian xử lý và xuất nội dung hình ảnh/video trong thời gian ngắn. Ngoài phiên bản 256GB bạn cũng có thể chọn iPhone 14 phiên bản tiêu chuẩn 128GB hoặc iPhone 14 512GB&nbsp;để phù hợp với nhu cầu lưu trữ của bản thân.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035419.jpg" alt="Hiệu năng mạnh mẽ - iPhone 14 256GB"></span></p><p>Các dòng sản phẩm đến từ Apple đã luôn là một trong những sự lựa chọn ưu tiên hàng đầu đối với người dùng và iPhone 14 cũng không là ngoại lệ, với bộ thông số hàng đầu giới smartphone hiện tại (09/2022) nên bạn có thể an tâm trong việc sử dụng máy cho 2 đến 3 năm tiếp theo.</p>', CAST(27990000.0000 AS Decimal(19, 4)), CAST(23990000.0000 AS Decimal(19, 4)), N'1 chiếc', 0, 0, 0, 60, 18, CAST(N'2022-11-15T22:11:08.000' AS DateTime), CAST(N'2022-11-15T00:00:00.000' AS DateTime), 1, NULL, CAST(20.0000 AS Decimal(18, 4)), CAST(0.7800 AS Decimal(18, 4)), CAST(14.6700 AS Decimal(18, 4)), CAST(172.0000 AS Decimal(18, 4)), CAST(7.1500 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (63, N'laptop-acer-nitro-5-gaming-an515-45-r6ev-r5-5600h8gb512gb144hz4gb-gtx1650win11-nhqbmsv006', N'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QBMSV.006)', N'https://i.ibb.co/yq3Pt13/banner-acer-nitro-5-gaming-an515-45-r6ev-r5-5600h-8gb-600x600.jpg', N'Phá cách với diện mạo mạnh mẽ đến từ laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) mang đến cho người dùng hiệu năng ổn định, hỗ trợ bạn trong mọi tác vụ hằng ngày hay chiến những trận game cực căng một cách mượt mà.', N'<h3>Kiểu dáng nổi bật, thu hút mọi ánh nhìn</h3><p><a href="https://www.thegioididong.com/laptop-acer-nitro">Laptop Acer Nitro</a>&nbsp;với tính bền bỉ vượt bậc khi được trang bị lớp <strong>vỏ nhựa</strong> chắc chắn cùng khối lượng không quá nặng cho một chiếc laptop gaming&nbsp;<strong>2.2 kg&nbsp;</strong>và dày&nbsp;<strong>23.9 mm, </strong>sẵn sàng cùng bạn đi đến bất kỳ đâu, phục vụ tốt cho cả nhu cầu công việc hay giải trí, cho phép bạn chiến game ở khắp mọi nơi trong cuộc hành trình.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-2.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Thiết kế"></span></p><p>Bàn phím <strong>Fullsize</strong> được thiết kế <strong>đèn nền chuyển màu RGB</strong>&nbsp;của&nbsp;<a href="https://www.thegioididong.com/laptop-acer">laptop Acer</a>&nbsp;được thiết kế tinh tế nhưng vẫn tôn lên nét mạnh mẽ của một chiếc gaming mạnh mẽ, với các phím có độ nảy tốt, cho bạn thoải mái sử dụng cả trong điều kiện ánh sáng kém mà không lo nhầm lẫn.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-7.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Bàn phím"></span></p><p>Dọc hai bên&nbsp;<a href="https://www.thegioididong.com/laptop">laptop</a>&nbsp;được trang bị các cổng giao tiếp thông dụng hỗ trợ tốt cho nhu cầu truyền xuất dữ liệu hay chia sẻ thông tin đến các thiết bị ngoại vi tương thích như 3 cổng USB 3.2, HDMI, Jack tai nghe 3.5 mm, LAN (RJ45) và USB Type-C.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-13.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Cổng kết nối"></span></p><p>Các chuẩn kết nối không dây&nbsp;<strong>Bluetooth 5.0</strong>&nbsp;và&nbsp;<strong>Wi-Fi 6 (802.11ax) </strong>cung cấp đường truyền ổn định trong suốt quá trình làm việc hay giải trí ở cả trong nhà, ngoài trời, nâng cao năng suất công việc của bạn.</p><h3>Đánh bại mọi đối thủ trong mọi trận chiến</h3><p><a href="https://www.thegioididong.com/laptop-ryzen-5">Laptop&nbsp;AMD Ryzen 5</a><strong> 5600H</strong> với&nbsp;<strong>6 nhân 12 luồng</strong>&nbsp;mang đến tốc độ cơ bản<strong>&nbsp;3.30 GHz</strong>&nbsp;và đạt tối đa lên đến&nbsp;<strong>4.2 GHz&nbsp;</strong>nhờ&nbsp;<strong>Turbo Boost</strong>, cùng bộ nhớ đệm <strong>16 MB</strong> mang đến hiệu suất công việc bất ngờ khi hỗ trợ trong mọi công việc văn phòng từ cơ bản đến nâng cao một cách hoàn mỹ với Word, Excel,... hay thậm chí còn xử lý các nhu cầu thiết kế đồ hoạ, thiết kế posters, banners,... ấn tượng.</p><p>Đem đến cho bạn một phiên bản laptop đa nhiệm hơn khi sở hữu&nbsp;<strong>RAM 8 GB</strong>&nbsp;chuẩn&nbsp;<strong>DDR4 2 khe (1 khe 8 GB + 1 khe rời)</strong>&nbsp;sở hữu tốc độ Bus RAM&nbsp;<strong>3200&nbsp;MHz&nbsp;</strong>cùng khả năng nâng cấp tối đa đến&nbsp;<strong>32 GB,</strong>&nbsp;hỗ trợ bạn tối ưu trong việc mở nhiều ứng dụng cùng lúc và chuyển đổi qua lại một cách trơn tru, mang đến hiệu quả cho công việc tốt hơn.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-4.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Cấu hình"></span></p><p>Không những hỗ trợ bạn tối đa trong việc chiến những trận game&nbsp;LOL, Total War: Warhammer,...&nbsp;đầy kịch tính một cách mượt mà với hình ảnh chuẩn xác,&nbsp;card đồ họa rời&nbsp;<strong>NVIDIA</strong>&nbsp;<strong>GeForce GTX</strong>&nbsp;<strong>1650 4 GB</strong>&nbsp;còn cho phép đồ họa hiển thị một cách rõ nét cùng sắc màu chân thật, hỗ trợ bạn làm công việc sáng tạo một cách hiệu quả hơn với các phần mềm thiết kế Lightroom, AI, Photoshop,...</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-5.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Card đồ hoạ"></span></p><p>Ổ cứng&nbsp;<strong>SSD 512 GB</strong>&nbsp;<strong>NVMe PCle,&nbsp;</strong>cùng khả năng tháo ra và lắp thanh khác tối đa<strong>&nbsp;1&nbsp;TB,&nbsp;</strong>vừa cung cấp không gian lưu trữ rộng lớn cho mọi loại dữ liệu yêu thích, vừa hỗ trợ mở máy hay vận hành các ứng dụng một cách nhanh chóng chỉ trong vài giây.</p><p>Tối ưu hơn khi thiết bị này còn được trang bị thêm khe cắm<strong>&nbsp;HDD SATA</strong>&nbsp;nâng cấp tối đa<strong>&nbsp;2 TB</strong>&nbsp;và khe cắm&nbsp;<strong>SSD M.2 PCIe</strong>&nbsp;mở rộng nâng cấp tối đa&nbsp;<strong>1 TB</strong>, đáp ứng tốt hơn cho mọi nhu cầu từ bạn, cho bạn thỏa thích tải mọi ứng dụng hay hàng loạt tựa game thịnh hành.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-6.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - SSD"></span></p><p>Hệ điều hành&nbsp;<strong>Windows 11 Home SL</strong> được tích hợp sẵn trong máy cho phép bạn tận hưởng những ứng dụng thông minh được cập nhật.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-12.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Windows 11"></span></p><h3>Không gian hình ảnh và âm thanh được cải thiện đáng kể</h3><p><a href="https://www.thegioididong.com/laptop-15-6-inch">Laptop màn hình 15.6 inch</a>&nbsp;mỏng 2 cạnh bên&nbsp;sở hữu độ phân giải<strong>&nbsp;Full HD (1920 x 1080) </strong>mang đến hình ảnh sắc nét, sống động đến từng chi tiết với khung hình chuẩn xác có tốc độ đọc nhanh vượt trội, chuyển động mượt mà nhờ<strong>&nbsp;</strong>tần số quét <strong>144 Hz</strong>,<strong>&nbsp;</strong>cho phép bạn chơi những tựa game hành động đầy hấp dẫn mà không lo xảy ra tình trạng giật, xé ảnh.</p><p>Không dừng lại ở đó khi thiết bị còn được trang bị <strong>màn hình TFT</strong> với khả năng dẫn ánh sáng tốt, ổn định và kiểm soát tốt hình ảnh, màu sắc hiển thị nhưng vẫn hạn chế tối đa lượng điện năng tiêu thụ nhờ&nbsp;công nghệ&nbsp;<strong>LED Backlit</strong>.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-9.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Màn hình"></span></p><p>Khung hình được mở rộng lên đến&nbsp;<strong>178 độ</strong>&nbsp;nhờ tấm nền&nbsp;<strong>IPS,</strong>&nbsp;mang đến hình ảnh hình ảnh sắc rõ với màu sắc được tái tạo chân thật cùng màn hình&nbsp;<a href="https://www.thegioididong.com/hoi-dap/cong-nghe-man-hinh-acer-comfyview-co-gi-dac-biet-1192380">Acer ComfyView</a>&nbsp;cho phép bạn làm việc hay giải trí ở bất kỳ điều kiện ánh sáng nào mà không lo mỏi mắt hay lóa mắt.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-10.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Tính năng khác"></span></p><p>Sự kết hợp hoàn mỹ của hai công nghệ âm thanh hiện đại<strong>&nbsp;Acer TrueHarmony</strong>&nbsp;và&nbsp;<strong>DTS:X Ultra Audio</strong>&nbsp;mang đến chất âm to rõ với âm vòm cao cấp, ít bị biến dạng cùng khả năng tái tạo âm thanh 3D với dải âm trầm rộng hơn, cho bạn tận hưởng không gian âm nhạc hay phim ảnh đầy thư giãn, thoải mái.</p><p><span class="image-inline ck-widget" contenteditable="false"><img src="https://cdn.tgdd.vn/Products/Images/44/263980/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-11.jpg" alt="Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) - Âm  thanh"></span></p><p>Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) là phiên bản&nbsp;<a href="https://www.thegioididong.com/laptop?g=laptop-gaming">laptop gaming</a>&nbsp;đáng được chọn mua khi sở hữu thiết kế độc đáo cùng hiệu năng mạnh mẽ, sẵn sàng cùng bạn chinh chiến mọi trận đấu gây cấn, giành chiến thắng cuối cùng.</p><p><br data-cke-filler="true"></p>', CAST(22490000.0000 AS Decimal(19, 4)), CAST(20240000.0000 AS Decimal(19, 4)), N'1 cái', 0, 0, 0, 54, 18, CAST(N'2022-12-01T13:54:15.643' AS DateTime), CAST(N'2022-12-01T13:54:15.643' AS DateTime), 9, NULL, CAST(98.0000 AS Decimal(18, 4)), CAST(2.3900 AS Decimal(18, 4)), CAST(36.3400 AS Decimal(18, 4)), CAST(2200.0000 AS Decimal(18, 4)), CAST(25.5000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (64, N'a', N'a', N'https://i.ibb.co/NtNwnRC/8.jpg', N'1', N'<p>11</p>', CAST(11111.0000 AS Decimal(19, 4)), CAST(11111.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 53, 18, CAST(N'2022-12-09T22:18:23.197' AS DateTime), CAST(N'2022-12-09T22:18:23.197' AS DateTime), 9, NULL, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(2.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (65, N'furnhughescounterstoolanglcropsh', N'Furn_Hughes_counter_stool_angl_Crop_SH', N'https://i.ibb.co/zQPJSP3/Balboa-Counter-Stool1.jpg', N'Furn_Hughes_counter_stool_angl_Crop_SH', N'<p>Furn_Hughes_counter_stool_angl_Crop_SHFurn_Hughes_counter_stool_angl_Crop_SH</p>', CAST(100000.0000 AS Decimal(19, 4)), CAST(200000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-09T22:16:35.937' AS DateTime), CAST(N'2022-12-09T22:16:35.937' AS DateTime), 9, NULL, CAST(100.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), CAST(50.0000 AS Decimal(18, 4)), CAST(2000.0000 AS Decimal(18, 4)), CAST(50.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (66, N'broderick-daybed', N'Broderick Daybed', N'https://i.ibb.co/nb14VWr/Broderick-Daybed2.jpg', N'Broderick Daybed', N'<p>Broderick Daybed</p>', CAST(100000.0000 AS Decimal(19, 4)), CAST(200000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-09T22:20:38.800' AS DateTime), CAST(N'2022-12-09T22:20:38.800' AS DateTime), 9, NULL, CAST(100.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), CAST(300.0000 AS Decimal(18, 4)), CAST(2000.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (67, N'washington-sofa', N'Washington Sofa', N'https://i.ibb.co/gWj2T3H/washington-sofa1.jpg', N'Washington Sofa', N'<p>Washington Sofa</p>', CAST(20000000.0000 AS Decimal(19, 4)), CAST(15000000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-11T14:26:19.707' AS DateTime), CAST(N'2022-12-11T14:26:19.707' AS DateTime), 20, NULL, CAST(100.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)), CAST(5000.0000 AS Decimal(18, 4)), CAST(60.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (68, N'venice-rattan-chair-cushion', N'Venice Rattan Chair Cushion', N'https://i.ibb.co/4pCRdS1/Venice-Rattan-Chair-Cushion1.jpg', N'Venice Rattan Chair Cushion', N'<p>Venice Rattan Chair Cushion</p>', CAST(12000000.0000 AS Decimal(19, 4)), CAST(10000000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-11T14:26:05.267' AS DateTime), CAST(N'2022-12-11T14:26:05.267' AS DateTime), 20, NULL, CAST(100.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), CAST(3000.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (69, N'dallas-sofa', N'Dallas Sofa', N'https://i.ibb.co/jDgN29F/dallas-sofa1.jpg', N'Dallas Sofa', N'<p>Dallas Sofa</p>', CAST(30000000.0000 AS Decimal(19, 4)), CAST(25000000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-11T14:25:55.727' AS DateTime), CAST(N'2022-12-11T14:25:55.727' AS DateTime), 20, NULL, CAST(10.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)), CAST(5000.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (70, N'hanging-rattan-bench-cushion', N'Hanging Rattan Bench Cushion', N'https://i.ibb.co/bdwRfJP/Hanging-Rattan-Bench-Cushion.jpg', N'Hanging Rattan Bench Cushion', N'<p>Hanging Rattan Bench Cushion</p>', CAST(13000000.0000 AS Decimal(19, 4)), CAST(11000000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-11T14:28:21.507' AS DateTime), CAST(N'2022-12-11T14:28:21.507' AS DateTime), 20, NULL, CAST(13.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), CAST(3000.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (71, N'grady-sleeper-king', N'Grady Sleeper King', N'https://i.ibb.co/WyccYcZ/Grady-Sleeper-King.jpg', N'Grady Sleeper King', N'<p>Grady Sleeper King</p>', CAST(43000000.0000 AS Decimal(19, 4)), CAST(40000000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-11T14:30:51.667' AS DateTime), CAST(N'2022-12-11T14:30:51.667' AS DateTime), 20, NULL, CAST(13.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), CAST(260.0000 AS Decimal(18, 4)), CAST(8000.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)))
INSERT [dbo].[shop_products] ([id], [product_code], [product_name], [image], [short_description], [description], [standard_cost], [list_price], [quantity_per_unit], [discontinued], [is_featured], [is_new], [category_id], [supplier_id], [created_at], [updated_at], [user_id], [type_list], [quantity], [height], [length], [weight], [width]) VALUES (72, N'gina-sofa', N'Gina Sofa', N'https://i.ibb.co/jyJv9cn/gina-sofa1.jpg', N'Gina Sofa', N'<p>Gina Sofa</p>', CAST(14500000.0000 AS Decimal(19, 4)), CAST(14000000.0000 AS Decimal(19, 4)), N'1', 0, 0, 0, 55, 18, CAST(N'2022-12-11T14:31:59.793' AS DateTime), CAST(N'2022-12-11T14:31:59.793' AS DateTime), 20, NULL, CAST(14.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)), CAST(4500.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[shop_products] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_products_type] ON 

INSERT [dbo].[shop_products_type] ([id], [image], [name], [description]) VALUES (1, NULL, N'Màu sắc', N'Xanh lá, Xanh Dương, Vàng, Đỏ, Trắng, Tím..')
INSERT [dbo].[shop_products_type] ([id], [image], [name], [description]) VALUES (2, NULL, N'Kích cỡ', N'Size S, Size M, Size L, Size XXL..')
INSERT [dbo].[shop_products_type] ([id], [image], [name], [description]) VALUES (3, NULL, N'Dung lượng', N'16GB, 64GB, 128GB, 512GB, 1TB..')
INSERT [dbo].[shop_products_type] ([id], [image], [name], [description]) VALUES (4, NULL, N'Chọn loại', N'Loại sản phẩm này, loại sản phẩm kia, loại sản phẩm nọ..')
INSERT [dbo].[shop_products_type] ([id], [image], [name], [description]) VALUES (5, NULL, N'Phiên bản', N'Giới hạn, đặc biệt, tiêu chuẩn..')
SET IDENTITY_INSERT [dbo].[shop_products_type] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_products_type_item] ON 

INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (3, 1, 56, N'ĐEN', N'https://i.ibb.co/ssWqKVq/samsung-galaxy-a23-xanh-thumb-600x600.jpg', N'0')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (5, 3, 60, N'128 GB', N'', N'')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (6, 3, 60, N'256 GB', N'', N'')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (7, 3, 60, N'512 GB', N'', N'')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (8, 1, 60, N'Đen', N'https://salt.tikicdn.com/cache/750x750/ts/product/98/8a/2b/20cdb4e6168b995e8b7a1f031559ea18.png.webp', N'0,1,2,3')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (9, 1, 60, N'Trắng', N'https://salt.tikicdn.com/cache/750x750/ts/product/f0/90/4c/5e740aa7f83eb0879f8cb5d3745f6be1.png.webp', N'4,5,6')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (10, 1, 60, N'Xanh dương', N'https://salt.tikicdn.com/cache/750x750/ts/product/8a/a7/3a/cf4b44016e715e1c62a5ce8ce3a2ff9e.png.webp', N'7,8,9')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (11, 1, 60, N'Đỏ', N'https://salt.tikicdn.com/cache/750x750/ts/product/df/ea/65/99d3f1d9cf0173f924c32934943800de.png.webp', N'10,11,12')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (19, 1, 56, N'Xanh lá', N'https://i.ibb.co/BwHGZz9/matt-popovich-0-FZr-PECK5cg-unsplash.jpg', N'1')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (20, 2, 56, N'Size 43', N'', N'')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (21, 2, 56, N'Size 44', N'', N'')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (31, 1, 63, N'Đen', N'https://i.ibb.co/n8P8qgn/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006-1.jpg', N'')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (32, 1, 65, N'Trắng', N'', N'0')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (33, 1, 65, N'Đen', N'', N'1')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (34, 1, 66, N'Xanh', N'', N'0')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (35, 1, 66, N'Trắng', N'', N'1')
INSERT [dbo].[shop_products_type_item] ([id], [product_type_id], [product_id], [name], [image], [list_imgs]) VALUES (36, 1, 66, N'Hồng', N'', N'2')
SET IDENTITY_INSERT [dbo].[shop_products_type_item] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_seller] ON 

INSERT [dbo].[shop_seller] ([id], [name], [code], [phone], [email], [customer_id], [category_id], [status], [created_at], [type]) VALUES (15, N'Hồ Hoàng Phú', N'0357337812', N'0357337812', N'ho.hoangphudt169@gmail.com', 1, 60, 1, CAST(N'2022-11-23T20:32:02.417' AS DateTime), N'CA_NHAN')
INSERT [dbo].[shop_seller] ([id], [name], [code], [phone], [email], [customer_id], [category_id], [status], [created_at], [type]) VALUES (19, N'ZShop', N'098765876123', N'0357337812', N'zhhphu690001a@gmail.com', 12, 52, 1, CAST(N'2022-12-05T17:35:30.007' AS DateTime), N'CA_NHAN')
INSERT [dbo].[shop_seller] ([id], [name], [code], [phone], [email], [customer_id], [category_id], [status], [created_at], [type]) VALUES (20, N'Huy Hoàng', N'123123123123', N'0765230162', N'Huy@gmail.c', 13, 52, 1, CAST(N'2022-12-09T21:00:36.580' AS DateTime), N'CA_NHAN')
INSERT [dbo].[shop_seller] ([id], [name], [code], [phone], [email], [customer_id], [category_id], [status], [created_at], [type]) VALUES (21, N'Huy Hoàng', N'123123123123', N'0765230162', N'huyletran001@gmail.com', 14, 52, 1, CAST(N'2022-12-09T21:21:36.297' AS DateTime), N'CA_NHAN')
INSERT [dbo].[shop_seller] ([id], [name], [code], [phone], [email], [customer_id], [category_id], [status], [created_at], [type]) VALUES (22, N'Huy Huy', N'079202019957', N'0765230162', N'huyletran007@gmail.com', 15, 52, 1, CAST(N'2022-12-09T22:05:09.570' AS DateTime), N'CA_NHAN')
INSERT [dbo].[shop_seller] ([id], [name], [code], [phone], [email], [customer_id], [category_id], [status], [created_at], [type]) VALUES (23, N'Join Nguyen', N'123123123123', N'0999999999', N'huylthps15571@fpt.edu.vn', 16, 55, 1, CAST(N'2022-12-11T14:12:37.883' AS DateTime), N'CA_NHAN')
SET IDENTITY_INSERT [dbo].[shop_seller] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_stores] ON 

INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (1, N'phu-store', N'Hoàng Phú SHOP', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Venenatis tellus in metus vulputate eu scelerisque felis. Vel pretium lectus quam id leo in vitae turpis massa. Nunc id cursus metus aliquam. Libero id faucibus nisl tincidunt eget. Aliquam id diam maecenas ultricies mi eget mauris. Volutpat ac tincidunt vitae semper quis lectus. Vestibulum mattis ullamcorper velit sed. A arcu cursus vitae congue mauris. A arcu cursus vitae congue mauris. Sagittis id consectetur purus ut. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Diam in arcu cursus euismod quis. Eget sit amet tellus cras adipiscing enim eu. In fermentum et sollicitudin ac orci phasellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. In dictum non consectetur a erat. Nunc scelerisque viverra mauris in aliquam sem fringilla.</p>', N'https://i.ibb.co/yRX39dh/1-Untitled.png', CAST(N'2022-12-02T09:15:12.757' AS DateTime), CAST(N'2022-12-02T09:15:12.757' AS DateTime), N'20/5 Tổ 44 KP3, Phường Tân Chánh Hiệp, Quận 12, TP Hồ Chí Minh', N'0314124511', N'https://i.ibb.co/zPRgJKc/ta-i-xu-ng-5.jpg')
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (2, N'store-pro', N'Store Pro', N'Mô tả của hàng của Store Pro', N'http://localhost:8080/admin/assets/images/users/4.jpg', CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2022-11-23T00:00:00.000' AS DateTime), N'nhà tao', N'0705287627', NULL)
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (4, N'TQ4MT76BFUU1', N'Hồ Hoàng Phú', NULL, N'https://img.icons8.com/cotton/100/000000/shop--v7.png', CAST(N'2022-11-23T17:40:02.330' AS DateTime), CAST(N'2022-11-23T17:40:02.330' AS DateTime), N'Hẻm 16, Phường Tân Chánh Hiệp, Quận 12, Hồ Chí Minh', N'0314124511', NULL)
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (5, N'C8PL4AASD4HA', N'Hồ Hoàng Phú', N'<h3><strong>Mô tả cửa hàng.</strong></h3><ol><li>a</li><li>b</li><li>c</li></ol><blockquote><p>Quotes store</p></blockquote>', N'https://img.icons8.com/cotton/100/000000/shop--v7.png', CAST(N'2022-12-01T20:31:42.880' AS DateTime), CAST(N'2022-12-01T20:31:42.880' AS DateTime), N'18H đường Trần Hưng Đạo 27, Phường 10, Quận Gò Vấp, Hồ Chí Minh', N'0314124511', N'https://i.ibb.co/Qk6gMDw/matt-popovich-0-FZr-PECK5cg-unsplash.jpg')
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (12, N'8F9VZXHHTUP1', N'ZShop', N'<p>Mô tả cửa hàng</p><p><strong>Vip</strong>.</p>', N'https://i.ibb.co/CHc4B88/2d712d57290d7bc81e4db7d6d2b4e82d.jpg', CAST(N'2022-12-05T18:21:24.477' AS DateTime), CAST(N'2022-12-05T18:21:24.477' AS DateTime), N'45B TCH, Phường Hoà Thuận, Thành phố Cao Lãnh, Đồng Tháp', N'0357337812', N'https://i.ibb.co/qsKnSCs/matt-popovich-0-FZr-PECK5cg-unsplash.jpg')
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (13, N'O9SILS0IQV4W', N'Huy Hoàng', NULL, N'https://img.icons8.com/cotton/100/000000/shop--v7.png', CAST(N'2022-12-09T21:01:30.710' AS DateTime), CAST(N'2022-12-09T21:01:30.710' AS DateTime), N'123, Phường 11, Quận 6, Hồ Chí Minh', N'0765230162', NULL)
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (14, N'0TD7NXETGOMJ', N'Huy Hoàng', NULL, N'https://img.icons8.com/cotton/100/000000/shop--v7.png', CAST(N'2022-12-09T21:22:19.123' AS DateTime), CAST(N'2022-12-09T21:22:19.123' AS DateTime), N'123, Xã Lý Nhơn, Huyện Cần Giờ, Hồ Chí Minh', N'0765230162', NULL)
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (15, N'BRC3NH7BIS1U', N'Huy Huy', NULL, N'https://img.icons8.com/cotton/100/000000/shop--v7.png', CAST(N'2022-12-09T22:05:43.173' AS DateTime), CAST(N'2022-12-09T22:05:43.173' AS DateTime), N'240, Phường 11, Quận 6, Hồ Chí Minh', N'0765230162', NULL)
INSERT [dbo].[shop_stores] ([id], [store_code], [store_name], [description], [image], [created_at], [updated_at], [address], [phone], [background]) VALUES (16, N'XSE1ETASMZ2A', N'Join Nguyen', N'<p>1</p>', N'https://i.ibb.co/fXnvFNY/Woodside-Table4.jpg', CAST(N'2022-12-11T14:34:46.210' AS DateTime), CAST(N'2022-12-11T14:34:46.210' AS DateTime), N'123, Xã Yên Bồng, Huyện Lạc Thủy, Hòa Bình', N'0999999999', N'https://i.ibb.co/myDZXNv/Avalon-Bed3.jpg')
SET IDENTITY_INSERT [dbo].[shop_stores] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_suppliers] ON 

INSERT [dbo].[shop_suppliers] ([id], [supplier_code], [supplier_name], [description], [image], [created_at], [updated_at]) VALUES (18, N'SUP1123', N'test', N'this test', N'suppliers/apple.jpg', CAST(N'2022-09-16T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[shop_suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_users_cart] ON 

INSERT [dbo].[shop_users_cart] ([id], [quantity], [product_id], [customer_id], [shop_product_vouchers_id], [is_discount], [is_checked], [created_at], [updated_at], [type_item_id]) VALUES (96, CAST(1.0000 AS Decimal(18, 4)), 60, 12, NULL, 0, 1, CAST(N'2022-12-02T07:00:00.000' AS DateTime), NULL, N'7,8')
INSERT [dbo].[shop_users_cart] ([id], [quantity], [product_id], [customer_id], [shop_product_vouchers_id], [is_discount], [is_checked], [created_at], [updated_at], [type_item_id]) VALUES (99, CAST(1.0000 AS Decimal(18, 4)), 56, 12, NULL, 0, 1, CAST(N'2022-12-02T07:00:00.000' AS DateTime), NULL, N'3,21')
SET IDENTITY_INSERT [dbo].[shop_users_cart] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_vouchers] ON 

INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (1, N'VOU1', N'VOUCHER1', N'<p>Voucher</p>', 4, 10, 1, 1, 50000, 1, CAST(N'2022-09-01T07:00:00.000' AS DateTime), CAST(N'2022-12-31T07:00:00.000' AS DateTime), CAST(N'2022-12-01T21:37:47.550' AS DateTime), NULL, NULL, CAST(1.0000 AS Decimal(19, 4)), CAST(100000000.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 9)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (2, N'COUP1', N'COUPON1', N'Coupon', 2, 20, 1, 1, 5, 0, CAST(N'2022-09-01T00:00:00.000' AS DateTime), CAST(N'2023-03-31T00:00:00.000' AS DateTime), CAST(N'2022-09-16T00:00:00.000' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 9)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (3, N'VOU2', N'VOUCHER2', N'Tưng bừng nhập học', 2, 10, 1, 1, 50000, 1, CAST(N'2022-09-01T00:00:00.000' AS DateTime), CAST(N'2022-12-30T00:00:00.000' AS DateTime), CAST(N'2022-08-25T00:00:00.000' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 3)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (4, N'VOU3', N'VOUCHER3', N'Đón chào sinh nhật KShop', 18, 20, 1, 1, 100000, 1, CAST(N'2022-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-13T00:00:00.000' AS DateTime), CAST(N'2022-09-01T00:00:00.000' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 3)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (5, N'COUP2', N'COUPON2', N'<p>Tri ân khách hàng</p>', 1, 20, 1, 1, 5, 0, CAST(N'2022-10-01T07:00:00.000' AS DateTime), CAST(N'2022-12-02T07:00:00.000' AS DateTime), CAST(N'2022-12-01T14:42:59.010' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 9)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (6, N'COUP3', N'COUPON3', N'Tri ân khách hàng', 100, 10, 1, 1, 10, 1, CAST(N'2022-10-01T00:00:00.000' AS DateTime), CAST(N'2022-11-02T23:59:59.000' AS DateTime), CAST(N'2022-09-26T15:07:31.000' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 9)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (7, N'COUP4', N'COUPON4', N'<p>Tri ân khách hàng</p>', 7, 10, 1, 1, 30000, 1, CAST(N'2022-10-01T07:00:00.000' AS DateTime), CAST(N'2023-11-02T07:00:00.000' AS DateTime), CAST(N'2022-12-01T21:49:19.973' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(20000000.0000 AS Decimal(19, 4)), CAST(0.0000 AS Decimal(19, 4)), 3)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (10, N'ASGOP01', N'ASGOP01', N'<p>Giảm giá cuối năm - Siêu sale 12/12.</p>', 9, 100, 1, 1, 10, 0, CAST(N'2022-12-01T07:00:00.000' AS DateTime), CAST(N'2023-01-01T07:00:00.000' AS DateTime), CAST(N'2022-12-01T14:43:23.350' AS DateTime), NULL, NULL, CAST(0.0000 AS Decimal(19, 4)), CAST(100000000.0000 AS Decimal(19, 4)), CAST(10000.0000 AS Decimal(19, 4)), 9)
INSERT [dbo].[shop_vouchers] ([id], [voucher_code], [voucher_name], [description], [uses], [max_uses], [max_uses_user], [type], [discount_amount], [is_fixed], [start_date], [end_date], [created_at], [updated_at], [deleted_at], [price], [min_pro], [max_disa], [use_by]) VALUES (11, N'SAGA', N'SAGA', N'<p>SAGA</p>', 1, 10, 1, 1, 10, 0, CAST(N'2022-12-01T07:00:00.000' AS DateTime), CAST(N'2022-12-10T07:00:00.000' AS DateTime), CAST(N'2022-12-06T16:26:49.787' AS DateTime), NULL, NULL, CAST(90000.0000 AS Decimal(19, 4)), CAST(120000.0000 AS Decimal(19, 4)), CAST(45000.0000 AS Decimal(19, 4)), 9)
SET IDENTITY_INSERT [dbo].[shop_vouchers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [email]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[acl_users] ADD  CONSTRAINT [email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [username]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[acl_users] ADD  CONSTRAINT [username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [category_code]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_categories] ADD  CONSTRAINT [category_code] UNIQUE NONCLUSTERED 
(
	[category_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [email_customer]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_customers] ADD  CONSTRAINT [email_customer] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [username_customer]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_customers] ADD  CONSTRAINT [username_customer] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [category_payment_code]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_payment_types] ADD  CONSTRAINT [category_payment_code] UNIQUE NONCLUSTERED 
(
	[payment_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [category_store_code]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_stores] ADD  CONSTRAINT [category_store_code] UNIQUE NONCLUSTERED 
(
	[store_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [category_suppliers_code]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_suppliers] ADD  CONSTRAINT [category_suppliers_code] UNIQUE NONCLUSTERED 
(
	[supplier_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [voucher_code]    Script Date: 12/11/2022 2:36:36 PM ******/
ALTER TABLE [dbo].[shop_vouchers] ADD  CONSTRAINT [voucher_code] UNIQUE NONCLUSTERED 
(
	[voucher_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[acl_permissions] ADD  DEFAULT (NULL) FOR [display_name]
GO
ALTER TABLE [dbo].[acl_permissions] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[acl_permissions] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[acl_roles] ADD  DEFAULT (NULL) FOR [display_name]
GO
ALTER TABLE [dbo].[acl_roles] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[acl_roles] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT ((0)) FOR [gender]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [birthday]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [avatar]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [job_title]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [department]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [manager_id]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [address1]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [address2]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [postal_code]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [country]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [active_code]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT (NULL) FOR [ward]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT ((0.0000)) FOR [sodu]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT ('0.0000') FOR [sodu_hold]
GO
ALTER TABLE [dbo].[acl_users] ADD  DEFAULT ((0.0000)) FOR [sodu_ngoai]
GO
ALTER TABLE [dbo].[money_orders] ADD  DEFAULT ((0.0000)) FOR [total_money]
GO
ALTER TABLE [dbo].[money_orders] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[money_orders] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[money_orders] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[money_sends] ADD  DEFAULT ((0.0000)) FOR [total_money]
GO
ALTER TABLE [dbo].[money_sends] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[money_sends] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_categories] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[shop_categories] ADD  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[shop_categories] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_categories] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_customer_vouchers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_customer_vouchers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_customer_vouchers] ADD  DEFAULT ((0)) FOR [is_used]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT ((0)) FOR [gender]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [birthday]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [avatar]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [company]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [billing_address]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [shipping_address]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [postal_code]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [country]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [activate_code]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_customers] ADD  DEFAULT (NULL) FOR [ward]
GO
ALTER TABLE [dbo].[shop_export_details] ADD  DEFAULT ((0.0000)) FOR [quantity]
GO
ALTER TABLE [dbo].[shop_export_details] ADD  DEFAULT ((0.0000)) FOR [unit_price]
GO
ALTER TABLE [dbo].[shop_exports] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_exports] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_import_details] ADD  DEFAULT ((0.0000)) FOR [quantity]
GO
ALTER TABLE [dbo].[shop_import_details] ADD  DEFAULT ((0.0000)) FOR [unit_price]
GO
ALTER TABLE [dbo].[shop_imports] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_imports] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_order_details] ADD  DEFAULT ((0.0000)) FOR [quantity]
GO
ALTER TABLE [dbo].[shop_order_details] ADD  DEFAULT ((0.0000)) FOR [unit_price]
GO
ALTER TABLE [dbo].[shop_order_details] ADD  DEFAULT ((0)) FOR [discount_percentage]
GO
ALTER TABLE [dbo].[shop_order_details] ADD  DEFAULT ((0)) FOR [discount_amout]
GO
ALTER TABLE [dbo].[shop_order_details] ADD  DEFAULT (NULL) FOR [order_detail_status]
GO
ALTER TABLE [dbo].[shop_order_details] ADD  DEFAULT (NULL) FOR [date_allocated]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (NULL) FOR [ship_address2]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (NULL) FOR [ship_state]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (NULL) FOR [ship_postal_code]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT ((0.0000)) FOR [shipping_fee]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT ((0)) FOR [payment_type_id]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (NULL) FOR [paid_date]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT ((0)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT ('') FOR [ship_phone]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT (NULL) FOR [ship_ward]
GO
ALTER TABLE [dbo].[shop_orders] ADD  DEFAULT ((0)) FOR [is_mo]
GO
ALTER TABLE [dbo].[shop_payment_types] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[shop_payment_types] ADD  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[shop_payment_types] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_payment_types] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_product_discounts] ADD  DEFAULT ((0)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[shop_product_discounts] ADD  DEFAULT ('0') FOR [is_fixed]
GO
ALTER TABLE [dbo].[shop_product_discounts] ADD  DEFAULT (getdate()) FOR [start_date]
GO
ALTER TABLE [dbo].[shop_product_discounts] ADD  DEFAULT (getdate()) FOR [end_date]
GO
ALTER TABLE [dbo].[shop_product_reviews] ADD  DEFAULT ((0)) FOR [customer_id]
GO
ALTER TABLE [dbo].[shop_product_reviews] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_product_reviews] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_product_vouchers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_product_vouchers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (NULL) FOR [short_description]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((0.0000)) FOR [standard_cost]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((0.0000)) FOR [list_price]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (NULL) FOR [quantity_per_unit]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((0)) FOR [discontinued]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ('0') FOR [is_featured]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ('0') FOR [is_new]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (NULL) FOR [category_id]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (NULL) FOR [supplier_id]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((0.0000)) FOR [quantity]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((1.0000)) FOR [height]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((1.0000)) FOR [length]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((1.0000)) FOR [weight]
GO
ALTER TABLE [dbo].[shop_products] ADD  DEFAULT ((1.0000)) FOR [width]
GO
ALTER TABLE [dbo].[shop_seller] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_stores] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[shop_stores] ADD  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[shop_stores] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_stores] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_suppliers] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[shop_suppliers] ADD  DEFAULT (NULL) FOR [image]
GO
ALTER TABLE [dbo].[shop_suppliers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_suppliers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_users_cart] ADD  DEFAULT ((0.0000)) FOR [quantity]
GO
ALTER TABLE [dbo].[shop_users_cart] ADD  DEFAULT ((0)) FOR [is_discount]
GO
ALTER TABLE [dbo].[shop_users_cart] ADD  DEFAULT ((0)) FOR [is_checked]
GO
ALTER TABLE [dbo].[shop_users_cart] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_users_cart] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0)) FOR [uses]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0)) FOR [max_uses]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0)) FOR [max_uses_user]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((1)) FOR [type]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ('1') FOR [is_fixed]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT (getdate()) FOR [start_date]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT (getdate()) FOR [end_date]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT (getdate()) FOR [deleted_at]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0.0000)) FOR [price]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0.0000)) FOR [min_pro]
GO
ALTER TABLE [dbo].[shop_vouchers] ADD  DEFAULT ((0.0000)) FOR [max_disa]
GO
ALTER TABLE [dbo].[acl_role_has_permissions]  WITH CHECK ADD  CONSTRAINT [FK_acl_role_has_permissions_acl_permissions] FOREIGN KEY([permission_id])
REFERENCES [dbo].[acl_permissions] ([id])
GO
ALTER TABLE [dbo].[acl_role_has_permissions] CHECK CONSTRAINT [FK_acl_role_has_permissions_acl_permissions]
GO
ALTER TABLE [dbo].[acl_role_has_permissions]  WITH CHECK ADD  CONSTRAINT [FK_acl_role_has_permissions_acl_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[acl_roles] ([id])
GO
ALTER TABLE [dbo].[acl_role_has_permissions] CHECK CONSTRAINT [FK_acl_role_has_permissions_acl_roles]
GO
ALTER TABLE [dbo].[acl_user_has_permissions]  WITH CHECK ADD  CONSTRAINT [FK_acl_model_has_permissions_acl_permissions] FOREIGN KEY([permission_id])
REFERENCES [dbo].[acl_permissions] ([id])
GO
ALTER TABLE [dbo].[acl_user_has_permissions] CHECK CONSTRAINT [FK_acl_model_has_permissions_acl_permissions]
GO
ALTER TABLE [dbo].[acl_user_has_permissions]  WITH CHECK ADD  CONSTRAINT [FK_acl_user_has_permissions_acl_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[acl_user_has_permissions] CHECK CONSTRAINT [FK_acl_user_has_permissions_acl_users]
GO
ALTER TABLE [dbo].[acl_user_has_roles]  WITH CHECK ADD  CONSTRAINT [FK_acl_model_has_roles_acl_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[acl_roles] ([id])
GO
ALTER TABLE [dbo].[acl_user_has_roles] CHECK CONSTRAINT [FK_acl_model_has_roles_acl_roles]
GO
ALTER TABLE [dbo].[acl_user_has_roles]  WITH CHECK ADD  CONSTRAINT [FK_acl_user_has_roles_acl_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[acl_user_has_roles] CHECK CONSTRAINT [FK_acl_user_has_roles_acl_users]
GO
ALTER TABLE [dbo].[acl_users]  WITH CHECK ADD  CONSTRAINT [FK_acl_users_shop_stores] FOREIGN KEY([store_id])
REFERENCES [dbo].[shop_stores] ([id])
GO
ALTER TABLE [dbo].[acl_users] CHECK CONSTRAINT [FK_acl_users_shop_stores]
GO
ALTER TABLE [dbo].[money_orders]  WITH CHECK ADD  CONSTRAINT [FK_money_orders_acl_users] FOREIGN KEY([employee_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[money_orders] CHECK CONSTRAINT [FK_money_orders_acl_users]
GO
ALTER TABLE [dbo].[money_orders]  WITH CHECK ADD  CONSTRAINT [FK_money_orders_shop_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[shop_orders] ([id])
GO
ALTER TABLE [dbo].[money_orders] CHECK CONSTRAINT [FK_money_orders_shop_orders]
GO
ALTER TABLE [dbo].[money_sends]  WITH CHECK ADD  CONSTRAINT [FK_money_orders_acl_users_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[money_sends] CHECK CONSTRAINT [FK_money_orders_acl_users_employee]
GO
ALTER TABLE [dbo].[money_sends]  WITH CHECK ADD  CONSTRAINT [FK_money_sends_acl_users_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[money_sends] CHECK CONSTRAINT [FK_money_sends_acl_users_user]
GO
ALTER TABLE [dbo].[shop_customer_vouchers]  WITH CHECK ADD  CONSTRAINT [FK_shop_customer_vouchers_shop_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[shop_customers] ([id])
GO
ALTER TABLE [dbo].[shop_customer_vouchers] CHECK CONSTRAINT [FK_shop_customer_vouchers_shop_customers]
GO
ALTER TABLE [dbo].[shop_customer_vouchers]  WITH CHECK ADD  CONSTRAINT [FK_shop_customer_vouchers_shop_vouchers] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[shop_vouchers] ([id])
GO
ALTER TABLE [dbo].[shop_customer_vouchers] CHECK CONSTRAINT [FK_shop_customer_vouchers_shop_vouchers]
GO
ALTER TABLE [dbo].[shop_export_details]  WITH CHECK ADD  CONSTRAINT [FK_shop_export_details_shop_exports] FOREIGN KEY([export_id])
REFERENCES [dbo].[shop_exports] ([id])
GO
ALTER TABLE [dbo].[shop_export_details] CHECK CONSTRAINT [FK_shop_export_details_shop_exports]
GO
ALTER TABLE [dbo].[shop_export_details]  WITH CHECK ADD  CONSTRAINT [FK_shop_export_details_shop_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_export_details] CHECK CONSTRAINT [FK_shop_export_details_shop_products]
GO
ALTER TABLE [dbo].[shop_exports]  WITH CHECK ADD  CONSTRAINT [FK_shop_exports_acl_users] FOREIGN KEY([employee_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[shop_exports] CHECK CONSTRAINT [FK_shop_exports_acl_users]
GO
ALTER TABLE [dbo].[shop_exports]  WITH CHECK ADD  CONSTRAINT [FK_shop_exports_shop_stores] FOREIGN KEY([store_id])
REFERENCES [dbo].[shop_stores] ([id])
GO
ALTER TABLE [dbo].[shop_exports] CHECK CONSTRAINT [FK_shop_exports_shop_stores]
GO
ALTER TABLE [dbo].[shop_import_details]  WITH CHECK ADD  CONSTRAINT [FK_shop_import_details_shop_imports] FOREIGN KEY([import_id])
REFERENCES [dbo].[shop_imports] ([id])
GO
ALTER TABLE [dbo].[shop_import_details] CHECK CONSTRAINT [FK_shop_import_details_shop_imports]
GO
ALTER TABLE [dbo].[shop_import_details]  WITH CHECK ADD  CONSTRAINT [FK_shop_import_details_shop_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_import_details] CHECK CONSTRAINT [FK_shop_import_details_shop_products]
GO
ALTER TABLE [dbo].[shop_imports]  WITH CHECK ADD  CONSTRAINT [FK_shop_imports_acl_users] FOREIGN KEY([employee_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[shop_imports] CHECK CONSTRAINT [FK_shop_imports_acl_users]
GO
ALTER TABLE [dbo].[shop_imports]  WITH CHECK ADD  CONSTRAINT [FK_shop_imports_shop_stores] FOREIGN KEY([store_id])
REFERENCES [dbo].[shop_stores] ([id])
GO
ALTER TABLE [dbo].[shop_imports] CHECK CONSTRAINT [FK_shop_imports_shop_stores]
GO
ALTER TABLE [dbo].[shop_order_details]  WITH CHECK ADD  CONSTRAINT [FK_shop_order_details_shop_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[shop_orders] ([id])
GO
ALTER TABLE [dbo].[shop_order_details] CHECK CONSTRAINT [FK_shop_order_details_shop_orders]
GO
ALTER TABLE [dbo].[shop_order_details]  WITH CHECK ADD  CONSTRAINT [FK_shop_order_details_shop_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_order_details] CHECK CONSTRAINT [FK_shop_order_details_shop_products]
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[shop_customers] ([id])
GO
ALTER TABLE [dbo].[shop_orders] CHECK CONSTRAINT [FK_orders_customers]
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[shop_orders] CHECK CONSTRAINT [FK_orders_employees]
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD  CONSTRAINT [FK_shop_orders_shop_payment_types] FOREIGN KEY([payment_type_id])
REFERENCES [dbo].[shop_payment_types] ([id])
GO
ALTER TABLE [dbo].[shop_orders] CHECK CONSTRAINT [FK_shop_orders_shop_payment_types]
GO
ALTER TABLE [dbo].[shop_product_discounts]  WITH CHECK ADD  CONSTRAINT [shop_product_discounts_ibfk_1] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_product_discounts] CHECK CONSTRAINT [shop_product_discounts_ibfk_1]
GO
ALTER TABLE [dbo].[shop_product_images]  WITH CHECK ADD  CONSTRAINT [FK_product_images_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_product_images] CHECK CONSTRAINT [FK_product_images_products]
GO
ALTER TABLE [dbo].[shop_product_reviews]  WITH CHECK ADD  CONSTRAINT [FK_product_reviews_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_product_reviews] CHECK CONSTRAINT [FK_product_reviews_products]
GO
ALTER TABLE [dbo].[shop_product_reviews]  WITH CHECK ADD  CONSTRAINT [FK_shop_product_reviews_shop_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[shop_customers] ([id])
GO
ALTER TABLE [dbo].[shop_product_reviews] CHECK CONSTRAINT [FK_shop_product_reviews_shop_customers]
GO
ALTER TABLE [dbo].[shop_product_vouchers]  WITH CHECK ADD  CONSTRAINT [FK_shop_product_vouchers_shop_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_product_vouchers] CHECK CONSTRAINT [FK_shop_product_vouchers_shop_products]
GO
ALTER TABLE [dbo].[shop_product_vouchers]  WITH CHECK ADD  CONSTRAINT [FK_shop_product_vouchers_shop_vouchers] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[shop_vouchers] ([id])
GO
ALTER TABLE [dbo].[shop_product_vouchers] CHECK CONSTRAINT [FK_shop_product_vouchers_shop_vouchers]
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[shop_categories] ([id])
GO
ALTER TABLE [dbo].[shop_products] CHECK CONSTRAINT [FK_products_categories]
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD  CONSTRAINT [FK_products_suppliers] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[shop_suppliers] ([id])
GO
ALTER TABLE [dbo].[shop_products] CHECK CONSTRAINT [FK_products_suppliers]
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD  CONSTRAINT [FK_shop_products_acl_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[acl_users] ([id])
GO
ALTER TABLE [dbo].[shop_products] CHECK CONSTRAINT [FK_shop_products_acl_users]
GO
ALTER TABLE [dbo].[shop_products_type_item]  WITH CHECK ADD  CONSTRAINT [FK_shop_products_type_item_shop_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_products_type_item] CHECK CONSTRAINT [FK_shop_products_type_item_shop_products]
GO
ALTER TABLE [dbo].[shop_products_type_item]  WITH CHECK ADD  CONSTRAINT [FK_shop_products_type_item_shop_products_type] FOREIGN KEY([product_type_id])
REFERENCES [dbo].[shop_products_type] ([id])
GO
ALTER TABLE [dbo].[shop_products_type_item] CHECK CONSTRAINT [FK_shop_products_type_item_shop_products_type]
GO
ALTER TABLE [dbo].[shop_seller]  WITH CHECK ADD  CONSTRAINT [FK_shop_seller_categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[shop_categories] ([id])
GO
ALTER TABLE [dbo].[shop_seller] CHECK CONSTRAINT [FK_shop_seller_categories]
GO
ALTER TABLE [dbo].[shop_seller]  WITH CHECK ADD  CONSTRAINT [FK_shop_seller_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[shop_customers] ([id])
GO
ALTER TABLE [dbo].[shop_seller] CHECK CONSTRAINT [FK_shop_seller_customers]
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD  CONSTRAINT [FK_users_carts_shop_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[shop_customers] ([id])
GO
ALTER TABLE [dbo].[shop_users_cart] CHECK CONSTRAINT [FK_users_carts_shop_customers]
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD  CONSTRAINT [FK_users_carts_shop_product_vouchers] FOREIGN KEY([shop_product_vouchers_id])
REFERENCES [dbo].[shop_product_vouchers] ([id])
GO
ALTER TABLE [dbo].[shop_users_cart] CHECK CONSTRAINT [FK_users_carts_shop_product_vouchers]
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD  CONSTRAINT [FK_users_carts_shop_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[shop_products] ([id])
GO
ALTER TABLE [dbo].[shop_users_cart] CHECK CONSTRAINT [FK_users_carts_shop_products]
GO
ALTER TABLE [dbo].[acl_permissions]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[acl_role_has_permissions]  WITH CHECK ADD CHECK  (([permission_id]>(0)))
GO
ALTER TABLE [dbo].[acl_role_has_permissions]  WITH CHECK ADD CHECK  (([role_id]>(0)))
GO
ALTER TABLE [dbo].[acl_role_has_permissions]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[acl_roles]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[acl_user_has_permissions]  WITH CHECK ADD CHECK  (([permission_id]>(0)))
GO
ALTER TABLE [dbo].[acl_user_has_permissions]  WITH CHECK ADD CHECK  (([user_id]>(0)))
GO
ALTER TABLE [dbo].[acl_user_has_permissions]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[acl_user_has_roles]  WITH CHECK ADD CHECK  (([role_id]>(0)))
GO
ALTER TABLE [dbo].[acl_user_has_roles]  WITH CHECK ADD CHECK  (([user_id]>(0)))
GO
ALTER TABLE [dbo].[acl_user_has_roles]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[acl_users]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[acl_users]  WITH CHECK ADD CHECK  (([manager_id]>(0)))
GO
ALTER TABLE [dbo].[acl_users]  WITH CHECK ADD CHECK  (([store_id]>(0)))
GO
ALTER TABLE [dbo].[money_orders]  WITH CHECK ADD CHECK  (([employee_id]>(0)))
GO
ALTER TABLE [dbo].[money_orders]  WITH CHECK ADD CHECK  (([order_id]>(0)))
GO
ALTER TABLE [dbo].[money_orders]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[money_sends]  WITH CHECK ADD CHECK  (([employee_id]>(0)))
GO
ALTER TABLE [dbo].[money_sends]  WITH CHECK ADD CHECK  (([user_id]>(0)))
GO
ALTER TABLE [dbo].[money_sends]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_categories]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_customer_vouchers]  WITH CHECK ADD CHECK  (([customer_id]>(0)))
GO
ALTER TABLE [dbo].[shop_customer_vouchers]  WITH CHECK ADD CHECK  (([voucher_id]>(0)))
GO
ALTER TABLE [dbo].[shop_customer_vouchers]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_customers]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_export_details]  WITH CHECK ADD CHECK  (([export_id]>(0)))
GO
ALTER TABLE [dbo].[shop_export_details]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_export_details]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_exports]  WITH CHECK ADD CHECK  (([employee_id]>(0)))
GO
ALTER TABLE [dbo].[shop_exports]  WITH CHECK ADD CHECK  (([store_id]>(0)))
GO
ALTER TABLE [dbo].[shop_exports]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_import_details]  WITH CHECK ADD CHECK  (([import_id]>(0)))
GO
ALTER TABLE [dbo].[shop_import_details]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_import_details]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_imports]  WITH CHECK ADD CHECK  (([employee_id]>(0)))
GO
ALTER TABLE [dbo].[shop_imports]  WITH CHECK ADD CHECK  (([store_id]>(0)))
GO
ALTER TABLE [dbo].[shop_imports]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_order_details]  WITH CHECK ADD CHECK  (([order_id]>(0)))
GO
ALTER TABLE [dbo].[shop_order_details]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_order_details]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD CHECK  (([customer_id]>(0)))
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD CHECK  (([employee_id]>(0)))
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD CHECK  (([payment_type_id]>(0)))
GO
ALTER TABLE [dbo].[shop_orders]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_payment_types]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_discounts]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_discounts]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_images]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_images]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_reviews]  WITH CHECK ADD CHECK  (([customer_id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_reviews]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_reviews]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_vouchers]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_vouchers]  WITH CHECK ADD CHECK  (([voucher_id]>(0)))
GO
ALTER TABLE [dbo].[shop_product_vouchers]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD CHECK  (([category_id]>(0)))
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD CHECK  (([supplier_id]>(0)))
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD CHECK  (([user_id]>(0)))
GO
ALTER TABLE [dbo].[shop_products]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_products_type]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_products_type_item]  WITH CHECK ADD CHECK  (([product_type_id]>(0)))
GO
ALTER TABLE [dbo].[shop_products_type_item]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_products_type_item]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_seller]  WITH CHECK ADD CHECK  (([category_id]>(0)))
GO
ALTER TABLE [dbo].[shop_seller]  WITH CHECK ADD CHECK  (([customer_id]>(0)))
GO
ALTER TABLE [dbo].[shop_seller]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_stores]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_suppliers]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD CHECK  (([customer_id]>(0)))
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD CHECK  (([product_id]>(0)))
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD CHECK  (([shop_product_vouchers_id]>(0)))
GO
ALTER TABLE [dbo].[shop_users_cart]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([discount_amount]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([max_uses]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([max_uses_user]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([use_by]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([type]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([uses]>(0)))
GO
ALTER TABLE [dbo].[shop_vouchers]  WITH CHECK ADD CHECK  (([id]>(0)))
GO
/****** Object:  StoredProcedure [dbo].[sp_SwipLoaiSanPhamDienTu]    Script Date: 12/11/2022 2:36:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SwipLoaiSanPhamDienTu] AS 
BEGIN
	SELECT TOP 8 * FROM shop_products where 
	(category_id < 152 and category_id > 144) or
	(category_id < 119 and category_id > 99) or
	category_id = 54
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SwipLoaiSanPhamNhavsbep]    Script Date: 12/11/2022 2:36:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SwipLoaiSanPhamNhavsbep] AS 
BEGIN
	SELECT * FROM shop_products where 
	(category_id < 147 and category_id > 140) or
	(category_id < 101 and category_id > 78) or
	category_id = 53
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SwipLoaiSanPhamTrangPhuc]    Script Date: 12/11/2022 2:36:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SwipLoaiSanPhamTrangPhuc] AS 
BEGIN
	SELECT TOP 8 * FROM shop_products where 
	(category_id < 79 and category_id > 65) or
	category_id = 52 or category_id = 139 or category_id = 140
END
GO
