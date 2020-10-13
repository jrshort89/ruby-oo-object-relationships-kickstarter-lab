class Project
    def initialize(title)
        @title = title
    end

    attr_reader :title

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = ProjectBacker.all.select do |pb|
            pb.project == self
        end
        arr.collect.collect do |project|
            project.backer
        end
    end
end