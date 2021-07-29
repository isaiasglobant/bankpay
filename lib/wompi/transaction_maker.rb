module Wompi
  class TransactionMaker
		include HTTParty
    base_uri 'https://sandbox.wompi.co'

    def initialize(amount_in_cents, customer_email, payment_reference,
        payment_source_id, installments)
      @amount_in_cents = amount_in_cents
      @customer_email = customer_email
      @payment_reference = payment_reference
      @payment_source_id = payment_source_id
      @installments = installments
    end

    def execute
			self.class.post('/v1/transactions', options)
    end

		def options
			{
        body: body,
        headers: {"Authorization" => "Bearer #{ENV['PRIVATE_KEY']}"}
      }
		end

    def body
      {
        amount_in_cents: @amount_in_cents,
        currency: "COP",
        customer_email: @customer_email,
        payment_method: {
          installments: @installments
        },
        reference: @payment_reference,
        payment_source_id: @payment_source_id
      }.to_json
    end
  end
end
