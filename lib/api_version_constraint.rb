class ApiVersionConstraint

    def initialize(options)
        @version = options[:version]
        @default = options[:default]
    end

    #retorna true ou false qdo tem ? no final
    def matches?(req)
     @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
    end

end
