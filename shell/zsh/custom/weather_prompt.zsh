function weather-prompt {
  # weather="$(curl -s "wttr.in/?format=%l:+%c+%t+(%h)")"
  weather="$(curl -s "wttr.in/Oslo?format=%l:+%c+%t+(%h)")"
  if [[ ${weather} != *"Error"* ]]; then
    echo -e "${weather}"
  fi
}
