require "date"

module Validation
    def valid_name?(name)
      return false if name.nil? || name.empty? || name.length > 40
      !name.match(/^(?=.{1,30}$)(\p{Lu}\p{Ll}*(-\p{Lu}\p{Ll}*)*)$/).nil?
    end
  
    def valid_inn?(inn)
      return false if inn.nil? || inn.empty?
      !inn.match(/\A[A-Z]{2}\d{10}\z/).nil?
    end
  
    def after_date?(date)
      return false if date.nil? || !date.is_a?(Date)
      date <= Date.today
    end
  end