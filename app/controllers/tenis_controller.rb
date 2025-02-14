class TenisController < ApplicationController
  def index
    render json: TENIS
  end

  def show
    tenis = TENIS.find { |t| t[:id] == params[:id].to_i }
    if tenis
      render json: tenis
    else
      render json: { error: "Modelo no encontrado" }, status: :not_found
    end
  end

  def piezas
    colores_agujetas = TENIS.map { |t| t[:agujetas] }.uniq
    colores_suela = TENIS.map { |t| t[:suela] }.uniq
    colores_tela = TENIS.map { |t| t[:tela] }.uniq

    render json: {
      agujetas: colores_agujetas,
      suelas: colores_suela,
      telas: colores_tela
    }
  end

  def ensamblaje
    ensamblaje_info = TENIS.map do |t|
      {
        modelo: t[:modelo],
        cantidad: t[:cantidad],
        piezas: {
          agujetas: t[:agujetas],
          suela: t[:suela],
          tela: t[:tela]
        }
      }
    end

    render json: ensamblaje_info
  end
end
