<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>SignUp Page</title>
            <script>
                $(function () {

                    //뒤로가기
                    $("#back").on("click", function () {
                        location.href = "/";
                    })

                    //우편번호
                    document.getElementById("findAddressBtn").onclick = function () {
                        new daum.Postcode(
                            {
                                oncomplete: function (data) {
                                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                    document.getElementById("postcode").value = data.zonecode;
                                    document.getElementById("roadAddress").value = data.roadAddress;
                                    document.getElementById("jibunAddress").value = data.jibunAddress;

                                }
                            }).open();
                    }

                })
            </script>
        </head>

        <body>
            <form action="/member/signup" method="post">
                <h2>회원가입</h2>
                <div class="textForm">
                    <input id="id" type="text" name="id" placeholder="아이디">
                    </input>
                </div>
                <div class="textForm">
                    <input id="pw" name="pw" placeholder="비밀번호">
                </div>
                <div class="textForm">
                    <input id="pwCheck" name="pwCheck" placeholder="비밀번호 확인">
                </div>
                <div class="textForm">
                    <input id="name"  type="text" name="name" placeholder="이름">
                </div>
                <div class="textForm">
                    <input id="phone"type="text" name="phone" placeholder="전화번호">
                </div>
                <div class="textForm">
                    <input id="email" type="text" name="email" placeholder="이메일">
                </div>
                <div class="textForm">
                    <input id="postcode" type="text" name="postcode" placeholder="우편번호">
                </div>
                <div class="textForm">
                    <input id="roadAddress" type="text" name="roadAddress" placeholder="주소1">
                </div>
                <div class="textForm">
                    <input id="jibunAddress" type="text" name="jibunAddress" placeholder="주소2">
                </div>
                <button>Signup</button> <button type="button" id="back">Back</button>
            </form>
        </body>

        </html>