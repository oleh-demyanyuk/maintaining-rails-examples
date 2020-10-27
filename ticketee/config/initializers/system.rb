Dry::Rails.container do
  config.features = %i[application_contract]
  auto_register!('lib')

  register(:project_repo, -> { ProjectRepository.new(ROM.env) })
end
