<%-- 
    Document   : lienhe
    Created on : Apr 2, 2022, 9:58:42 AM
    Author     : l
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div class="grid">
        <div class="grid__row "> 
            <div class="gird__column--2-12">
                <div class="container__title">
                    <h1 class="container__giohang--title"><a href="<c:url value="/"/>" class="home__home">TRANG CHỦ /</a>Liên hệ</h1>
                </div>
                <div class="container--chitiet">
                    <div class="content">
                        <div class="left-side">
                            <div class="address details">
                                <i class="fas fa-map-marker-alt"></i>
                                <div class="topic">Địa chỉ</div>
                                <div class="text-one">34 Dương Thưởng, Phường Thanh Bình</div>
                                <div class="text-two">Thành Phố Đà Nẵng</div>
                            </div>
                            <div class="phone details">
                                <i class="fas fa-phone"></i>
                                <div class="topic">Số điện thoại</div>
                                <div class="text-one">0975664139</div>
                                <div class="text-two">0975113461</div>
                            </div>
                            <div class="email details">
                                <i class="fas fa-envelope"></i>
                                <div class="topic">Email</div>
                                <div class="text-one">shoplnt@gmaul.com</div>
                                <div class="text-two">luannhantanshop24@gmail.com</div>
                            </div>
                        </div>
                        <div class="right-side">
                            <div class="topic-text">Liên hệ đến chúng tôi</div>
                            <p class="title__customer">Mọi ý kiến đóng góp, liên hệ, khiếu nại khác vui lòng điền đầy đủ thông tin và gửi đến chúng tôi. 
                                Bộ phận hỗ trợ khách hàng sẽ phản hồi sớm nhất khi nhận được thông tin.</p>
                            <form action="#">
                                <div class="input-box">
                                    <input type="text" placeholder="Họ và tên...">
                                </div>
                                <div class="input-box">
                                    <input type="text" placeholder="Số điện thoại...">
                                </div>
                                <div class="input-box">
                                    <input type="text" placeholder="Địa chỉ email...">
                                </div>
                                <div class="input-box message-box">
                                    <textarea style="padding-top: 10px;" placeholder="Nội dung..."></textarea>
                                </div>
                                <div class="button">
                                    <input type="button" value="Gửi liên hệ">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>                   
            </div>
        </div> 
    </div>
</div>
