require 'spec_helper'

describe 'groovy' do
  let(:boxen_home) { '/opt/boxen' }
  let(:config_dir) { "#{boxen_home}/config/git" }
  let(:repo_dir)   { "#{boxen_home}/repo" }
  let(:env_dir)    { "#{boxen_home}/env.d" }
  let(:facts) do
    {
      :boxen_home    => boxen_home,
      :boxen_repodir => repo_dir,
      :boxen_envdir  => env_dir
    }
  end

  it { should include_class('boxen::config') }
  it { should contain_package('groovy').with_ensure('latest') }

end
