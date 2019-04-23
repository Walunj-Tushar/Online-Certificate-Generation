(function($) {

    var form = $("#signup-form");
    form.validate({
        errorPlacement: function errorPlacement(error, element) {
            element.before(error);
        },
        rules: {
        	
        	//Husband Information
        	HusbandFirstName: {required: true,},HusbandMiddleName: {required: true,},HusbandLastName: {required: true,},
        	HusbandReligion:{ required: true,},HusbandBirthDate:{ required: true,},
        	HusbandEmail:{ required: true, email : true },
        	HusbandHouseName:{ required: true,},HusbandHouseNo:{ required: true,},HusbandHouseArea:{ required: true,},
        	HusbandCountry:{ required: true,},HusbandState:{ required: true,},HusbandCity:{ required: true,},
        	Husbandcontact: {required: true,},HusbandOccupation:{ required: true,},
        	HusbandSalutation: {required: true,},
        	
		    //Wife Information
		   WifeFirstName: {required: true,},WifeMiddleName: {required: true,},WifeLastName: {required: true,},
		   WifeReligion:{ required: true,},WifeBirthDate:{ required: true,},
        	WifeEmail:{ required: true, email : true },
        	WifeHouseName:{ required: true,},WifeHouseNo:{ required: true,},WifeHouseArea:{ required: true,},
        	WifeCountry:{ required: true,},WifeState:{ required: true,},WifeCity:{ required: true,},
        	Wifecontact: {required: true,},WifeOccupation:{ required: true,},
        	
        	 //Witness1 Information
 		   Witness1FirstName: {required: true,},Witness1MiddleName: {required: true,},Witness1LastName: {required: true,},
 		   Witness1Religion:{ required: true,},Witness1BirthDate:{ required: true,},
         	Witness1Email:{ required: true, email : true },
         	Witness1HouseName:{ required: true,},Witness1HouseNo:{ required: true,},Witness1HouseArea:{ required: true,},
         	Witness1Country:{ required: true,},Witness1State:{ required: true,},Witness1City:{ required: true,},
         	Witness1contact: {required: true,},Witness1Occupation:{ required: true,},
         	

       	 //Witness2 Information
		   Witness2FirstName: {required: true,},Witness2MiddleName: {required: true,},Witness2LastName: {required: true,},
		   Witness2Religion:{ required: true,},Witness2BirthDate:{ required: true,},
        	Witness2Email:{ required: true, email : true },
        	Witness2HouseName:{ required: true,},Witness2HouseNo:{ required: true,},Witness2HouseArea:{ required: true,},
        	Witness2Country:{ required: true,},Witness2State:{ required: true,},Witness2City:{ required: true,},
        	Witness2contact: {required: true,},Witness2Occupation:{ required: true,},
        	

       	 //Witness3 Information
		   Witness1FirstName: {required: true,},Witness1MiddleName: {required: true,},Witness1LastName: {required: true,},
		   Witness1Religion:{ required: true,},Witness1BirthDate:{ required: true,},
        	Witness1Email:{ required: true, email : true },
        	Witness1HouseName:{ required: true,},Witness1HouseNo:{ required: true,},Witness1HouseArea:{ required: true,},
        	Witness1Country:{ required: true,},Witness1State:{ required: true,},Witness1City:{ required: true,},
        	Witness1contact: {required: true,},Witness1Occupation:{ required: true,},
		        	
        },
        messages : {
        	HusbandEmail: {
        		HusbandEmail: 'Not a valid email address <i class="zmdi zmdi-info"></i>'
			            },
			            HusbandBirthDate: {
			            	HusbandBirthDate: 'Not a valid email address <i class="zmdi zmdi-info"></i>'
		            },
						                        
        },
        onfocusout: function(element) {
            $(element).valid();
        },
    });
    form.steps({
        headerTag: "h3",
        bodyTag: "fieldset",
        transitionEffect: "slideLeft",
        labels: {
            previous: 'Previous',
            next: 'Next',
            finish: 'Submit',
            current: ''
        },
        titleTemplate: '<div class="title"><span class="number">#index#</span>#title#</div>',
        onStepChanging: function(event, currentIndex, newIndex) {
            form.validate().settings.ignore = ":disabled,:hidden";
            // console.log(form.steps("getCurrentIndex"));
            return form.valid();
        },
        onFinishing: function(event, currentIndex) {
            form.validate().settings.ignore = ":disabled";
            console.log(getCurrentIndex);
            return form.valid();
        },
        onFinished: function(event, currentIndex) {
            alert('Sumited');
        },
        // onInit : function (event, currentIndex) {
        //     event.append('demo');
        // }
    });

    jQuery.extend(jQuery.validator.messages, {
        required: "",
        remote: "",
        url: "",
        date: "",
        dateISO: "",
        number: "",
        digits: "",
        creditcard: "",
        equalTo: ""
    });


    $.dobPicker({
        daySelector: '#expiry_date',
        monthSelector: '#expiry_month',
        yearSelector: '#expiry_year',
        dayDefault: 'DD',
        yearDefault: 'YYYY',
        minimumAge: 0,
        maximumAge: 120
    });

    $('#password').pwstrength();

    $('#button').click(function () {
        $("input[type='file']").trigger('click');
    })
    
    $("input[type='file']").change(function () {
        $('#val').text(this.value.replace(/C:\\fakepath\\/i, ''))
    })

})(jQuery);