module MoviesHelper
    # Cycles from none, asc to desc
  def next_direction(column)
    if params[:sort] == column
      case params[:direction]
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
    if params[:sort] == column
      case params[:direction]
      when "asc"
        "▲" # or use a span with a class for custom styling
      when "desc"
        "▼"
      else
        ""
      end
    else
      ""
    end
  end
end
