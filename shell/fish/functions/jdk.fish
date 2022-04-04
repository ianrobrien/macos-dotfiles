function jdk --description 'Select JDK version'
    export JAVA_HOME="$(/usr/libexec/java_home -v $argv)"
    java -version
end
