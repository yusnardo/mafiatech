module ApplicationHelper
	def page_title(title = nil)
	    if title
	      	# flush true means clear the content_for page_title first.
	      	content_for(:page_title, flush: true) { title[0...60] }
	    else
	      	content_for?(:page_title) ? content_for(:page_title) : t('meta.default.title') # or default page title
	    end
	end

	def meta_description(description = nil)
	    # Better to have empty description rather than duplicate
	    description = description[0..290] if description.present?
	    content_for(:meta_description, flush: true) { h description }
	end

	# used to render meta keywords
	def meta_keywords(keywords = nil)
	    if keywords and current_page?(root_path)
	      	content_for?(:meta_keywords) ? content_for(:meta_keywords) : t('meta.default.keywords') # or default meta keyword
	    else
	      	content_for(:meta_keywords) { keywords }
	    end
	end
end
