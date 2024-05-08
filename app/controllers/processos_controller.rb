class ProcessosController < ApplicationController
  before_action :set_processo, only: [:show, :edit, :update, :destroy]

  def index
    @processos = Processo.all
  end

  def show
  end

  def new
    @processo = Processo.new
  end

  def create
    @processo = Processo.new(processo_params)
    if @processo.save
      redirect_to processos_url, notice: "Processo criado com sucesso!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @processo = Processo.find(params[:id])
    if @processo.update(processo_params)
      redirect_to processos_url, notice: "Processo atualizado com sucesso!"
    else
      render 'edit'
    end
  end

  def destroy
    @processo.destroy
    redirect_to processos_url, notice: "Processo excluído com sucesso!"
  end

  private

  def processo_params
    params.require(:processo).permit(:nome, :orgao1, :orgao2, :gestor_processo_1, :gestor_processo_2,
                                     :servidor_responsavel, :objetivo_estrategico_associado, :embasamento_legal,
                                     :sistemas_utilizados, :partes_interessadas)
  end

  def set_processo
    @processo = Processo.find(params[:id])
  end
end
