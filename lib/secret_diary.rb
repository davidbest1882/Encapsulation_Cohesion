class SecretDiary

  attr_reader :locked

  def initialize
    @locked = true
  end

  def add_entry
    locked?
  end

  def get_entries
    locked?
  end

  def locked?
    raise "Diary is locked" if locked == true
  end

  def unlock
    @locked = false
  end

end
