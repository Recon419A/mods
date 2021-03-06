if angelsmods and angelsmods.refining then
  angelsmods.functions.OV.add_prereq("ore-silos", "ore-crushing")
  
  if angelsmods.logistics then
    data.raw["item-subgroup"]["angels-silos"].group = "angels-logistics"
  else
    data.raw["item-subgroup"]["angels-silos"].group = "resource-refining"
  end
end

if angelsmods.addons.silo_icon then
  data.raw["container"]["silo-ore1"].scale_info_icons = true
  data.raw["container"]["silo-ore2"].scale_info_icons = true
  data.raw["container"]["silo-ore3"].scale_info_icons = true
  data.raw["container"]["silo-ore4"].scale_info_icons = true
  data.raw["container"]["silo-ore5"].scale_info_icons = true
  data.raw["container"]["silo-ore6"].scale_info_icons = true
  data.raw["container"]["silo-coal"].scale_info_icons = true
  
  data.raw["container"]["silo"].scale_info_icons = true
  data.raw["logistic-container"]["silo-active-provider"].scale_info_icons = true
  data.raw["logistic-container"]["silo-passive-provider"].scale_info_icons = true
  data.raw["logistic-container"]["silo-requester"].scale_info_icons = true
  data.raw["logistic-container"]["silo-storage"].scale_info_icons = true
  data.raw["logistic-container"]["silo-buffer"].scale_info_icons = true
end

if angelsmods.industries then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-silo",
      group = "angels-logistics",
      order = "ac[chests-silo]",
    },
  })
  data.raw["item"]["silo"].subgroup = "angels-silo"
  data.raw["item"]["silo-active-provider"].subgroup = "angels-silo"
  data.raw["item"]["silo-passive-provider"].subgroup = "angels-silo"
  data.raw["item"]["silo-requester"].subgroup = "angels-silo"
  data.raw["item"]["silo-storage"].subgroup = "angels-silo"
  data.raw["item"]["silo-buffer"].subgroup = "angels-silo"
end