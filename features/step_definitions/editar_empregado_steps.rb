Dado(/^que eu realize o login no site ORAGEHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => "admin")
  fill_in('txtPassword', :with => "admin")
  find(:id, 'btnLogin').click
end

Quando(/^localizar um funcionário já cadastrado, edite seu cadastro e salve as alterações$/) do
  find(:id, 'menu_pim_viewPimModule').click
  click_link('Employee List')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[3]/a').click
  find(:id, 'btnSave').click
  select('Single', :from => 'personal[cmbMarital]')
  select('Brazilian', :from => 'personal[cmbNation]')
  choose('personal_optGender_1')
  fill_in('personal[DOB]', :with => "1986-09-24")
  find(:id, 'btnSave').click
end

Entao(/^as alterações são salvas$/) do
  assert_text('Successfully Saved')
end