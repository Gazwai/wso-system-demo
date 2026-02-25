module ApplicationHelper
  def menu_items
    [
      { icon: "fa-regular fa-house", text: "Dashboard", active: true },
      { icon: "fa-regular fa-calendar", text: "Calendar", active: false },
      { icon: "fa-solid fa-trophy", text: "Tournaments", active: false },
      { icon: "fa-regular fa-message", text: "Messages", active: false },
      { icon: "fa-regular fa-folder", text: "Resources", active: false },
      { icon: "fa-regular fa-circle-question", text: "Help", active: false },
    ]
  end
end
