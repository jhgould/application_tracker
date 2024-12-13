class Application < ApplicationRecord


    validates :company_name, :position_name, :job_posting_link

    enum application_status: {
        need_to_apply: 0, 
        applied: 1, 
        phone_screen: 2, 
        interview: 3, 
        techical_interview: 4, 
        final_interview: 5, 
        interviews_finished: 6, 
        rejected: 7, 
        offer: 8, 
        waiting_on_next_steps: 9, 
        other: 10
    }

end
