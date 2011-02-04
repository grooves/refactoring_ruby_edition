mock = Mock.new
expectation = mock.expects(:a_method_name).with("arguments").returns([1, :array])
