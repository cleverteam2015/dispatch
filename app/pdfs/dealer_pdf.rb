

class DealerPdf < Prawn::Document
	require 'prawn/table' 

	def initialize(page_layout)
		super
		header
		line_items
	end

	def header
		text "___________________________________________", size: 30, style: :bold, color: '367DA2'
		move_down 5		
		text "CSR Call Booking Performance Summary Report", size: 15, style: :bold, color: '367DA2'
		move_down 5		
		text "Date: 2/16/2015 to 2/22/2015", size: 11, style: :bold, color: '367DA2'
		move_down 2
		text "Report generated on: 2/23/2015 9:30am", size: 11, style: :bold, color: '367DA2'	
		filename = "/Users/joweedeleon/workspace/dispatch/app/assets/images/aldoc.png"
    image filename, :at => [550, 512]
	end

	def line_items
		move_down 20
		table line_items_row do 
			row(0).font_style = :bold
			row(0).background_color = "367DA2"
			row(0).text_color = "FFFFFF"
			row(0).size = 10
			row(1..1000).size = 10
			columns(1..9).align = :right
			self.row_colors = ["EBEBEB","FFFFFF"]
			self.header = true
			self.cells.border_color = "E6E6E6"
		end
	end

	def line_items_row
		#[[1,2],[3,4]]
		[["CSR  ","Calls ","Leads ","Booked  ","Booking %  ", 
			"Manual Calls  ","Total Booked", "Total revenue for booked calls", 
			"Average subtotal for booked jobs "],  
		["Juan", "12", "1", "1","100%", "64", "65", "$18,348.75","$282.29"],
		["Juan", "12", "2", "1","100%", "64", "65", "$18,348.75","$282.29"],
		["Juan", "12", "3", "1","100%", "64", "65", "$18,348.75","$282.29"],
		["Juan", "12", "1", "1","100%", "64", "65", "$18,348.75","$282.29"],
		["Juan", "12", "1", "1","100%", "64", "65", "$18,348.75","$282.29"]
		]
	end


end