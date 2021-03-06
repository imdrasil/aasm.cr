struct AASM::Transition
  getter! from : Array(Symbol)
  getter! to : Symbol

  def initialize(opts)
    from = opts[:from]
    if from.is_a? Symbol
      @from = [from]
    elsif from.is_a? Array(Symbol)
      @from = from
    end
    @to = opts[:to]
  end
end
