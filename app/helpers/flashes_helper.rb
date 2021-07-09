module FlashesHelper
  FLASH_CLASSES = { alert: "warning", notice: "success", warning: "alert"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice "alert", "notice", "warning"
  end
end