    <div id="sidebar">
       <div id="sidebar-wrapper"> 
        
        <h1 id="sidebar-title"><a href="#"></a></h1>
     
      
        <div id="profile-links">
             Xin chào, <a href="#" title="Edit your profile"><?php echo $this->Session->read('name'); ?></a><br />
            <br />
            <a href="<?php echo DOMAIN;?>" title="View the Site" target="_blank">Xem trang chủ</a> | <a href="<?php echo DOMAINAD?>login/logout" title="Sign Out">Thoát</a>
        </div>        
        <div id="list">
          <ul id="main-nav"> 
            
            <li id="arrayorder_1">
                <a href="<?php echo DOMAINAD?>home" class="nav-top-item no-submenu">
                    Trang chủ
                </a>       
            </li>
<!--             <li id="arrayorder_2">-->
<!--                <a href="#" class="nav-top-item"> -->
<!--                  Menu-->
<!--                </a>-->
<!--                <ul>-->
<!--                    <li><a href="<?php echo DOMAINAD?>menu/index">Danh sách menu</a></li>-->
<!--                    <li><a href="<?php echo DOMAINAD?>menu/add">Thêm mới menu</a></li>-->
<!--                </ul>-->
<!--            </li>-->
            <li id="arrayorder_2">
                <a href="#" class="nav-top-item"> 
                  Sản phẩm
                </a>
                <ul>
                    <li><a class="current" href="<?php echo DOMAINAD?>catproducts/index">Danh mục sản phẩm</a></li>
                    <li><a href="<?php echo DOMAINAD?>catproducts/add">Thêm mới danh mục</a></li>
                    <li><a href="<?php echo DOMAINAD?>products/index">Danh sách sản phẩm</a></li>
                    <li><a href="<?php echo DOMAINAD?>products/add">Thêm mới sản phẩm</a></li>
                </ul>
            </li>
           
           
			<!--
			<li id="arrayorder_5">
                <a href="#" class="nav-top-item"> 
					Chất liệu
                </a>
                <ul>
                    <li><a class="current" href="<?php echo DOMAINAD?>materials/index">Danh sách chất liệu</a></li>
                    <li><a href="<?php echo DOMAINAD?>materials/add">Thêm mới</a></li>
                </ul>
            </li>
			<li id="arrayorder_6">
                <a href="#" class="nav-top-item">
                    Kích thước
                </a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>origins">Danh sách</a></li>
                    <li><a href="<?php echo DOMAINAD?>origins/add">Thêm mới</a></li>
                </ul>
            </li>
<li id="arrayorder_8">
                <a href="#" class="nav-top-item">
                    Kiểu dáng
                </a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>styles">Danh sách</a></li>
                    <li><a href="<?php echo DOMAINAD?>styles/add">Thêm mới</a></li>
                </ul>
            </li>-->
            <li id="arrayorder_7">
                <a href="<?php echo DOMAINAD?>infomations" class="nav-top-item no-submenu">Đơn hàng</a>
            </li> 
            <li id="arrayorder_3">
                <a href="#" class="nav-top-item"> 
                  Tin tức (Modun)
                </a>
                <ul>
                    <li><a class="current" href="<?php echo DOMAINAD?>category/index">Danh mục tin tức</a></li>
                    <li><a href="<?php echo DOMAINAD?>category/add">Thêm mới danh mục tin</a></li>
                    <li><a href="<?php echo DOMAINAD?>news/index">Danh sách tin tức</a></li>
                    <li><a href="<?php echo DOMAINAD?>news/add">Thêm mới tin</a></li>
                </ul>
            </li><!--
			<li id="arrayorder_2">
                <a href="#" class="nav-top-item"> 
                 Quản lý thư viện ảnh
                </a>
                <ul>
                    <li><a class="current" href="<?php echo DOMAINAD?>album/index">Album</a></li>
                    <li><a href="<?php echo DOMAINAD?>album/add">Thêm mới Album</a></li>
                    <li><a href="<?php echo DOMAINAD?>gallery/index">Danh sách ảnh</a></li>
                    <li><a href="<?php echo DOMAINAD?>gallery/add">Thêm mới ảnh</a></li>
                </ul>
            </li> -->
             <!-- <li id="arrayorder_4">
                <a href="#" class="nav-top-item">
                    Quản lý góp ý
                </a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>comments">Danh sách góp y</a></li>
                   
                </ul>
            </li> -->
			
            <li id="arrayorder_4">
                <a href="#" class="nav-top-item">
                    Quang cao 
                </a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>advertisements">Danh sách quảng cáo</a></li>
                    <li><a href="<?php echo DOMAINAD?>advertisements/add">Thêm mới</a></li>
                </ul>
            </li> 
			  
			 <li id="arrayorder_4">
                <a href="#" class="nav-top-item">
                    Quản lý bình luận
                </a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>comments">Danh sách</a></li>
                    
                </ul>
            </li>
            <li id="arrayorder_4">
                <a href="#" class="nav-top-item">
                    Quản lý Slideshow
                </a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>slideshow">Ảnh slide</a></li>
                    <li><a href="<?php echo DOMAINAD?>slideshow/add">Thêm mới</a></li>
                </ul>
            </li>
			
           <!--
            <li id="arrayorder_3">
                <a href="#" class="nav-top-item">
                    Bộ sưu tập
               </a>
               <ul>
                   <li><a href="<?php echo DOMAINAD?>album">Danh sách Album</a></li>
                    <li><a href="<?php echo DOMAINAD?>album/add">Thêm Album</a></li>
                    <li><a href="<?php echo DOMAINAD?>gallery/index">Danh sách ảnh Ablum</a></li>
                    <li><a href="<?php echo DOMAINAD?>gallery/add">Thêm ảnh vào Ablum</a></li>
                </ul>
            </li>
             -->
           
            <li id="arrayorder_8">
                <a href="#" class="nav-top-item">Quản lý thành viên</a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>accounts">Thành viên</a></li>
                    
                </ul>
            </li>   
			
		<!--
             <li id="arrayorder_10">
                <a href="#" class="nav-top-item">Liên kết website</a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>weblinks">Danh sách link</a></li>
                    <li><a href="<?php echo DOMAINAD?>weblinks/add">Thêm mới</a></li>
                </ul>
            </li> -->
            <li id="arrayorder_9">
                <a href="#" class="nav-top-item">Hỗ trợ trực tuyến</a>
                <ul>
				<li><a href="<?php echo DOMAINAD?>helps/index">Danh sách hỗ trợ</a></li>
                    <li><a href="<?php echo DOMAINAD?>helps/add">Thêm</a></li>
                   
                </ul>
            </li><!--
            <li id="arrayorder_12">
                <a href="<?php echo DOMAINAD?>banners/edit/1" class="nav-top-item no-submenu">Banner</a>
            </li>  -->
			  <li id="arrayorder_8">
                <a href="#" class="nav-top-item">Tài khoản</a>
                <ul>
                    <li><a href="<?php echo DOMAINAD?>accounts/edit_pass/47">Đổi mật khẩu</a></li>
                    
                </ul>
            </li>
			
            <li id="arrayorder_7">
                <a href="<?php echo DOMAINAD?>settings/edit/1" class="nav-top-item no-submenu">Cấu hình website </a>
            </li> 
        </ul> 
        </div>
    </div>
    </div>
