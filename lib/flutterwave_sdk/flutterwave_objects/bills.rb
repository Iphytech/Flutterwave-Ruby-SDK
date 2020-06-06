require_relative "base/base.rb"
require 'json'

class Bills < Base

    def create_bill_payment(data)
        base_url = flutterwave_object.base_url 
        required_parameters = ["country", "customer", "amount", "recurrence", "type"]
        check_passed_parameters(required_parameters, data)
        payload = data.to_json
        response = post_request("#{base_url}/bills", payload) 
        return response
    end

    def create_bulk_bill_payments(data)
        base_url = flutterwave_object.base_url 
        required_parameters = ["bulk_reference", "callback_url", "bulk_data"]
        check_passed_parameters(required_parameters, data)
        payload = data.to_json
        response = post_request("#{base_url}/bulk-bills", payload) 
        return response
    end

    def get_status_of_a_bill_payment(reference)
        base_url = flutterwave_object.base_url 
        response = get_request("#{base_url}/bills/#{reference}") 
        return response
    end

    def update_bills_order(reference, data)
        base_url = flutterwave_object.base_url 
        required_parameters = ["bulk_reference", "callback_url", "bulk_data"]
        check_passed_parameters(required_parameters, data)
        payload = data.to_json
        response = post_request("#{base_url}/bulk-bills", payload) 
        return response
    end
end