# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    array_emails = @emails.split
    new_array = array_emails.map do |email|
      if email[-1] == ","
        email.delete(",")
      else
        email
      end
    end
    new_array.uniq
  end
end
