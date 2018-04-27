class SummariesController < ApplicationController
	 def create
	    @job = Job.find(params[:article_id])
	    @summary = @Job.summaries.create(summary_params)
	    redirect_to job_path(@job)
	  end
 
  private
    def comment_params
      params.require(:summary).permit(:company, :job_leve, :specialize, :about, :qualification, :experience, :expiry)
    end
end
