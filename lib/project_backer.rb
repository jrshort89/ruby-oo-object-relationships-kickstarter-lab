class ProjectBacker
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    attr_reader :project, :backer

    def self.all
        @@all
    end
end