class Equipment
  include Mongoid::Document
  field :id
  field :equipmentType, type: String
  field :manufacturer, type: String
  field :equipmentModel, type: String
  field :jslgTag, type: String
  field :manufacturerTag, type: String
  field :serialNumber, type: String
  field :osType, type: String
  field :hostName, type: String
  field :ram, type: String
  field :hdd, type: String
  field :department, type: String
  field :location, type: String
  field :assigneeName, type: String
  field :status, type: String
  field :notes, type: String
  field :macAddress, type: String
  field :carrier, type: String
  field :phoneNumber, type: String
  field :meid, type: String
  field :mrcTag, type: String
  field :ipAddress, type: String
  field :color, type: String
  field :replacementId, type: String
  field :blackId, type: String
  field :magentaId, type: String
  field :cyanId, type: String
  field :yellowId, type: String
  field :quantity, type: String
  field :wasteId, type: String
  field :drumId, type: String
end
