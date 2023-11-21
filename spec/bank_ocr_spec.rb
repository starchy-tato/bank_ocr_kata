describe BankOcr do
  it "is a module" do
    expect(BankOcr).to be_a Module
  end

  it "loads fixtures" do
    expect(fixture("use_case_1")).to match(/123456789\n\z/)
  end

  context 'when given a valid param' do
    it "returns the parsed account number" do
      file_content = "something"
      expect(BankOcr.file_parser(file_content)).to eq("something")
    end
  end

  context "when parsing a valid ORC entry" do
    it "returns the correct account number" do
      ocr_entry = "something"
      expect(BankOcr.file_parser(ocr_entry)).to eq("something")

    end
  end

  context "when parsing a valid OCR file" do
    xit "returns an array of parsed account numbers" do
    # stub in file content? - how should data be formatted?
    end
  end
end
