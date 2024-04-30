<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/form.css">
</head>
<jsp:include page="/header"></jsp:include>
<script src="/resources/script/validation-join.js"></script>
<body>
	<section id="root">
		<h2>회원가입</h2>
		<form method="POST" action="/joinPro">
			<div>
				<input type="text" id="id" name="id" placeholder="아이디">
				<input type="password" id="password" name="password" placeholder="비밀번호">
				<input type="text" id="email" name="email" placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)">
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-email">* 이메일: 이메일 주소가 정확한지 확인해 주세요.</p>
			</div>
			<div>
				<input type="text" id="name" name="name" placeholder="이름">
				<input type="text" id="birth" name="birth" placeholder="생년월일 8자리">
				<select id="telecom" name="telecom">
					<option selected disabled>통신사 선택</option>
					<option value="skt">SKT</option>
					<option value="kt">KT</option>
					<option value="lgt">LGU+</option>
				</select>
				<div id="radio-container">
					<input type="radio" class="gender" id="gender-man" name="gender" value="M">
					<input type="radio" class="gender" id="gender-woman" name="gender" value="F">
					<input type="radio" class=country id="country-local" name="country" value="local" checked>
					<input type="radio" class=country id="country-foreigner" name="country" value="foreigner">
					<div>
						<label for="gender-man" id="gender-man-label"><div>남자</div></label>
						<label for="gender-woman" id="gender-woman-label"><div>여자</div></label>
					</div>
					<div>
						<label for="country-local" id="country-local-label"><div>내국인</div></label>
						<label for="country-foreigner" id="country-foreigner-label"><div>외국인</div></label>
					</div>
				</div>
				<input type="text" id="phone" name="phone" placeholder="휴대전화번호">
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-name">* 이름: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-birth">* 생년월일: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-birth-pattern">* 생년월일은 8자리 숫자로 입력해 주세요.</p>
				<p class="error-msg" id="error-msg-telecom">* 통신사: 이용하는 통신사를 선택해 주세요.</p>
				<p class="error-msg" id="error-msg-gender">* 성별: 성별을 선택해 주세요.</p>
				<p class="error-msg" id="error-msg-phone">* 휴대전화번호: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-phone-pattern">* 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요.</p>
			</div>
			<div id="agree-container">
				<input type="checkbox" id="agree" name="agree" checked>
				<label for="agree" id="agree-label">
					<p><b>[필수]</b><span>&nbsp;인증 약관 전체동의</span></p>
				</label>
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-agree">* 필수 약관에 모두 동의해 주세요.</p>
			</div>
			<input type="submit" value="회원가입">
		</form>
	</section>
</body>
<jsp:include page="/footer"></jsp:include>
</html>