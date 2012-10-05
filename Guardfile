notification :libnotify

guard 'minitest' do
  # with Minitest::Unit
  watch(%r|^test/(.*)_test\.rb|)
  watch(%r|^lib/(.*)/([^/]+)\.rb|) { |m| "test/unit/#{m[1]}/#{m[2]}_test.rb" }
  watch(%r|^test/test_helper\.rb|) { "test" }
end
