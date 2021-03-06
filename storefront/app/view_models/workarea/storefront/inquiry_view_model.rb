module Workarea
  module Storefront
    class InquiryViewModel < ApplicationViewModel
      include DisplayContent

      def title
        browser_title.presence ||
          ::I18n.t('workarea.storefront.contacts.contact_us')
      end

      def subjects
        Workarea.config.inquiry_subjects.map { |k, v| [v, k] }
      end

      private

      def content_lookup
        'contact_us'
      end
    end
  end
end
