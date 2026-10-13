module MoviesHelper
  def current_sort
    params[:sort].presence || session[:sort]
  end

  def current_direction
    params[:direction].presence || session[:direction] || "none"
  end

  # Cycles from none, asc to desc
  def next_direction(column)
    if current_sort == column
      case current_direction
      when "asc"
        "desc"
      when "desc"
        "none"
      else
        "asc"
      end
    else
      "asc"
    end
  end

  # Visual indicator of current sort status
  def current_sort_icon(column)
    if current_sort == column
      case current_direction
      when "asc"
        "▲"
      when "desc"
        "▼"
      else
        ""
      end
    else
      ""
    end
  end

  def column_sort_class(column)
    if current_sort == column
      case current_direction
      when "asc"  then "sorted-asc"
      when "desc" then "sorted-desc"
      else ""
      end
    else
      ""
    end
  end
end
