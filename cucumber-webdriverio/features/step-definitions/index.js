//Complete siguiendo las instrucciones del taller

var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');

defineSupportCode(({Given, When, Then}) => {
  Given('I go to los estudiantes home screen', () => {
    browser.url('/', 20000);
    if(browser.isVisible('button=Cerrar', 20000)) {
      browser.click('button=Cerrar');
    }
  });

  When('I open the login screen', () => {
    browser.waitForVisible('button=Ingresar', 5000);
    browser.click('button=Ingresar');
  });

  When('I fill a wrong email and password', () => {
    var cajaLogIn = browser.element('.cajaLogIn');

    var mailInput = cajaLogIn.element('input[name="correo"]');
    mailInput.click();
    mailInput.keys('wrongemail@example.com');

    var passwordInput = cajaLogIn.element('input[name="password"]');
    passwordInput.click();
    passwordInput.keys('123467891')
  });

  When('I try to login', () => {
    var cajaLogIn = browser.element('.cajaLogIn');
    cajaLogIn.element('button=Ingresar').click()
  });

  When(/^I fill with (.*) and (.*)$/ , (email, password) => {
     var cajaLogIn = browser.element('.cajaLogIn');

    var mailInput = cajaLogIn.element('input[name="correo"]');
    mailInput.click();
    mailInput.keys(email);

    var passwordInput = cajaLogIn.element('input[name="password"]');
    passwordInput.click();
    passwordInput.keys(password)
});

Then('I expect to see {string}', error => {
    browser.waitForVisible('.aviso.alert.alert-danger', 20000);
    var alertText = browser.element('.aviso.alert.alert-danger').getText();
    expect(alertText).to.include(error);
});

Then('I expect to successful {boolean}', label => {
    var x = '';
    var nav = browser.element('.navbar');
    var continer = nav.element('.container');
    var drop = continer.element('.dropdown-menu');
    var visible = browser.isVisible('button[id="cuenta"]')
    if (visible=true){
    x=label}
    else{
    x=no}
    console.log(visible);
    expect(x).to.include(label);
});

});