	class Patient
  attr_accessor :name, :appointments
  
  @@all =[]
    
  def self.all       
   @@all
  end
  
  def new_appointment(doctor,date)
  appointment = Appointment.new(self,doctor,date)
  @appointments << appointment
  
  end
  
  def initialize(name)
    @name = name
    @appointments = []
    
  end
   def add_appointment(appointment)
    @appointments << appointment
    appointment.name = self
  end
  
   def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end