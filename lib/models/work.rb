module LD4All::MAP
    class Work < ActiveTriples::Resource
      include ActiveTriples::RDFSource
      configure type: 'http://id.loc.gov/ontologies/bibframe/Work'
#    validates_presence_of :title
    property :prefTitle, :predicate => RDF::EDM.aggregatedCHO, :class_name => 'LD4All::MAP::Title'

  end
end