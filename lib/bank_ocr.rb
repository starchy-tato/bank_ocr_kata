module BankOcr
  def self.file_parser(file_content)
    # file_content
    lines = file_content.split("/n")
    account_number_lines = lines[0..2]
    pp account_number_lines
  end

  def self.read_file(file_path)
    File.read(file_path)
  end
end
