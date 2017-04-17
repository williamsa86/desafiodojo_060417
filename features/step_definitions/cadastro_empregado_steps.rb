Dado(/^que eu esteja na home do site ORAGEHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^digitar login e senha, clicar em Login, realizar o cadastro e clicar em salvar$/) do
  fill_in('txtUsername', :with => "admin")
  fill_in('txtPassword', :with => "admin")
  find(:id, 'btnLogin').click
  find(:id, 'menu_pim_viewPimModule').click
  click_link('Add Employee')
  fill_in('firstName', :with => "William")
  fill_in('lastName', :with => "Almeida")
  find(:id, 'btnSave').click
end

Entao(/^o cadastro é realizado$/) do
  assert_text('William Almeida')
end
