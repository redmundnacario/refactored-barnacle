class Converter
    def initialize(raw_input)
        @raw_input = raw_input
        @output = ""
    end

    def convert_int_to_ascii_char()

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
