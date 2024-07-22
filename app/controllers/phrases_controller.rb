class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.all
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)
    if @phrase.save
      redirect_to phrases_path, notice: 'フレーズが追加されました。'
    else
      render :new
    end
  end

  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to phrases_path, notice: 'フレーズが削除されました。'
  end

  private

  def phrase_params
    params.require(:phrase).permit(:english, :japanese)
  end
end
