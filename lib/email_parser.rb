# EmailAddressParser accepts a string of unformatted emails.
# The parse method in the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        email_list = @emails.split(", ")
        email_list.each_with_index do |email, i|
          email_list[i] = email_list[i].split(" ")
        end
        unique_emails = []
        email_list.flatten.each do |email|
          if unique_emails.include?(email)
            nil
          else
            unique_emails << email
          end
        end
        unique_emails
    end
end

