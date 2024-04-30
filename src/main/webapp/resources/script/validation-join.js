$(document).ready(() => {
	$('#id').focusout(e => {
		if($('#id').val() === "") {
			$('#error-msg-id').show();
			$('#id').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-id').hide();
			$('#id').css('border', 'solid 1px lightgrey');
			$('#id').css('border-bottom', 'none');
		}
	});
	
	$('#password').focusout(e => {
		if($('#password').val() === "") {
			$('#error-msg-password').show();
			$('#password').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-password').hide();
			$('#password').css('border', 'solid 1px lightgrey');
			$('#password').css('border-bottom', 'none');
		}
	});
	
	$('#name').focusout(e => {
		if($('#name').val() === "") {
			$('#error-msg-name').show();
			$('#name').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-password').hide();
			$('#name').css('border', 'solid 1px lightgrey');
			$('#name').css('border-bottom', 'none');
		}
	});
	
	$('#birth').focusout(e => {
		if($('#birth').val() === "") {
			$('#error-msg-birth').show();
			$('#birth').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-birth').hide();
			$('#birth').css('border', 'solid 1px lightgrey');
			$('#birth').css('border-bottom', 'none');
			
			// 생년월일은 8자리 
			const birth = $('#birth').val();
			
			if(birth.match(/\d{8}/) === null) {
				$('#error-msg-birth-pattern').show();
				$('#birth').css('border', 'solid 1px tomato');
			} 
		}
	});
	
	$('#telecom').focusout(e => {
		if($('#telecom').val() === null) {
			$('#error-msg-telecom').show();
			$('#telecom').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-birth').hide();
			$('#telecom').css('border', 'solid 1px lightgrey');
			$('#telecom').css('border-bottom', 'none');
		}
	});
	
	$('#phone').focusout(e => {
		if($('#phone').val() === "") {
			$('#error-msg-phone').show();
			$('#phone').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-phone').hide();
			$('#phone').css('border', 'solid 1px lightgrey');
		}
		
		const phone = $('#phone').val();
		
		if(phone.match(/\d{3}-\d{4}-\d{4}|\d{11}/) === null) {
			$('#error-msg-phone-pattern').show();
			$('#phone').css('border', 'solid 1px tomato');
		} else {
			if(phone.length === 11) {
				const update = `${phone.substr(0,3)}-${phone.substr(3,4)}-${phone.substr(7,4)}`;
				$('#phone').val(update);
			}
		}
	});
	
	$('#agree').focusout(e => {
		if($('#agree')[0].checked) {
			$('#error-msg-agree').hide();
			$('#agree-container').css('border', 'solid 1px lightgrey');
		} else {
			$('#error-msg-agree').show();
			$('#agree-container').css('border', 'solid 1px lightgrey');
		}
	});
	
	$('form').submit(e => {
		e.preventDefault();
		
		const id = $('#id').val();
		const password = $('#password').val();
		const email = $('#email').val();			// 선택 
		
		const name = $('#name').val();
		const birth = $('#birth').val();
		const telecom = $('#telecom').val();
		console.log("telecom : ", telecom);
		
		const gender = e.target.gender.value;
		const country = e.target.country.value;
		
		const phone = $('#phone').val();
		
		const agree = $('#agree')[0].checked;
		
		
		// 유효성 검사 
		let isValid = true;
		
		if(id === "") {
			isValid = false;
			$('#error-msg-id').show();
			$('#id').css('border', 'solid 1px tomato');
		}
		if(password === "") {
			isValid = false;
			$('#error-msg-password').show();
			$('#password').css('border', 'solid 1px tomato');
		}
		if(name === "") {
			isValid = false;
			$('#error-msg-name').show();
			$('#name').css('border', 'solid 1px tomato');
		}
		if(birth === "") {
			isValid = false;
			$('#error-msg-birth').show();
			$('#birth').css('border', 'solid 1px tomato');
		}
		if(telecom === null) {
			isValid = false;
			$('#error-msg-telecom').show();
			$('#telecom').css('border', 'solid 1px tomato');
		}
		if(gender === "") {
			isValid = false;
			$('#error-msg-gender').show();
			$('#radio-container').css('border', 'solid 1px tomato');
			$('#gender-man-label').css('border', 'solid 1px tomato');
			$('#gender-woman-label').css('border', 'solid 1px tomato');
		}
		if(country === "") {
			isValid = false;
			$('#error-msg-country').show();
			$('#radio-container').css('border', 'solid 1px tomato');
			$('#country-local-label').css('border', 'solid 1px tomato');
			$('#country-foreigner-label').css('border', 'solid 1px tomato');
		}
		if(phone === "") {
			isValid = false;
			$('#error-msg-phone').show();
			$('#phone').css('border', 'solid 1px tomato');
		}
		if(agree === "") {
			isValid = false;
			$('#error-msg-agree').show();
			$('#agree-container').css('border', 'solid 1px tomato');
		}
		
		if(isValid) {
			e.target.submit();
		}
	});
});