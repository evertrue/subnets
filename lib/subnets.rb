require "subnets/version"
require 'fog'

module EverTools
  class Subnets
    def self.get
      c = Fog::Compute.new(:provider => "AWS")

      output = c.subnets.map {|s|
        {
          "subnet_id" => s.subnet_id,
          "vpc_id" => s.vpc_id,
          "zone" => s.availability_zone,
          "cidr_block" => s.cidr_block,
          "name" => s.tag_set['Name']
        }
      }.sort_by{|s| s["name"] || ""}

      columns = output.first.keys
      puts columns.join("       ")
      columns.join("       ").length.times.each{|c| print "-"}
      puts "\n"

      output.each {|o|
        puts o.values.join(" ")
      }
    end
  end
end
