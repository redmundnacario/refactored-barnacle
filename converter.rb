class Converter
    def initialize(raw_input)
        @raw_input = raw_input
        @output = ""
    end

    def check_input()
        var_type = @raw_input.instance_of? Integer
        if var_type == true
            if @raw_input <= 0
                raise StandardError.new, "Input variable should be a positive integer"
            end
        else
            raise StandardError.new, "Input variable type is not integer"
        end
    end

    def convert_int_to_ascii_char()
        check_input()
        # modulo
        modulo = @raw_input % 26

        if modulo == 0;
            modulo = @raw_input
        end

        # add 64 to modulo and convert to ascii char, also update the @output var
        @output = (modulo + 64).chr + @output
        # function stops when @raw_input is <= 26
        return @output if @raw_input <= 26
        # update the raw input
        @raw_input = @raw_input / 26
        # recursive call
        convert_int_to_ascii_char()
    end
end
