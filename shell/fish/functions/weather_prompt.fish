function weather_prompt --description 'Display the current weather in the current location on a single line'
    set weather "$(curl -s "wttr.in/?format=%l:+%c+%t+(%h)")"
    # set weather "$(curl -s "wttr.in/Oslo?format=%l:+%c+%t+(%h)")"
    if not string match -q -i "*error*" weather
        echo $weather
    end
end
