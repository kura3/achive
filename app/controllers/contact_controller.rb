class ContactController < ApplicationController
  def new
    if params[:back]
      @contact = Contact.new(blogs_params)
    else
      @contact = Contact.new
    end
  end

  def create
    @contact = Contact.create(blogs_params)
    if @contact.save
      redirect_to new_contact_path, notice: "お問い合わせが完了しました！"
    else
      render action: 'new'
    end
  end

  def confirm
    @contact = Contact.new(blogs_params)
    render :new if @contact.invalid?
  end

  private
  #他から参照する必要のないメソッド
    def blogs_params
      params.require(:contact).permit(:name, :email, :content)
    end
end