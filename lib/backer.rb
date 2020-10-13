class Backer
    def initialize(name)
        @name = name
    end

    attr_reader :name

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select do |pb|
            pb.backer == self
        end.map do |backed|
            backed.project
        end
    end
end