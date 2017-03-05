// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var default_type = ["Asset Type", "Desktop", "Laptop", "DTU", "Mobile Cart",
					"Smart Phone", "Desk Phone", "Printer", "Toner"];
var default_model = ["Asset Model"];
var default_search = ["Search By"];

var desktop_models = ["Desktop Model", "Optiplex 980", "Optiplex 960",
					  "Optiplex 755", "Optiplex 745", "Optiplex GX560",
					  "Optiplex 260"];

var laptop_models = ["Laptop Model", "Latitude E7240",
                     "Latitude E6510", "Latitude E6420"];

var dtu_models = ["DTU Model", "SunRay 270", "SunRay 2FS", "SunRay 2"];

var mc_models = ["Mobile Cart Model", "Ergotron"];

var sp_models = ["Smart Phone Model", "iPhone 6", "iPhone 6c", "iPhone 5", 
				 "iPhone 5c", "Galaxy S6", "Galaxy S5", "Galaxy Note 4"];

var dp_models = ["Desk Phone Model", "Avaya 9640"];

var printer_models = ["Printer Model", "WorkCentre 7800", "WorkCentre 7775",
                     "WorkCentre 7675", "WorkCentre 7665",
                      "WorkCentre 7655", "WorkCentre 7556", 
                      "WorkCentre 7545", "WorkCentre 7500"];

var toner_models = ["Toner Model", "Xerox WorkCentre", "Xerox Phaser",
					"Xerox ColorQube", "HP OfficeJet", "HP LaserJet", 
					"HP Color LaserJet"];

var desktop_search = ["Search By", "JSLG Tag", "Service Tag", "Serial Number",
					  "Host Name", "Department", "Assignee Name", "Status"];

var sp_search = ["Search By", "Carrier", "Phone Number", "MAC Address", "Serial Number",
				 "MEID", "Department", "Assignee Name", "Status"];

var dp_search = ["Search By", "Phone Number", "MAC Address", "Serial Number",
			     "Department", "Assignee Name", "Status"];

var dp_search = ["Search By", "Phone Number", "MAC Address", "Serial Number",
			     "Department", "Assignee Name", "Status"];

var print_search = ["Search By", "JSLG Tag", "MRC Tag", "Serial Number",
					  "IP Address", "Host Name", "Location", "Department", "Status"];

var toner_search = ["Search By", "Color", "ID", "Quantity"];
//$(document).ready( function() {
	//$('#dell_laptop_model').hide();
	//});

$(document).ready( function() {
	$('#asset_type').change( function() {
		if ($('#asset_type').val() == 'type') {
			$('#asset_model').find('option').remove();
			default_model.forEach(function(deskmodel) {
				$('#asset_model').append('<option value="'+deskmodel+'">'+deskmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			default_search.forEach(function(desksearch) {
				$('#search_by').append('<option value="'+desksearch+'">'+desksearch+'</option>');
			})
			

		}
		if ($('#asset_type').val() == 'desktops') {
			$('#asset_model').find('option').remove();
			desktop_models.forEach(function(deskmodel) {
				$('#asset_model').append('<option value="'+deskmodel+'">'+deskmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			desktop_search.forEach(function(desksearch) {
				$('#search_by').append('<option value="'+desksearch+'">'+desksearch+'</option>');
			})
			

		}
		if ($('#asset_type').val() == 'laptops') {
			$('#asset_model').find('option').remove();
			laptop_models.forEach(function(lapmodel) {
				$('#asset_model').append('<option value="'+lapmodel+'">'+lapmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			desktop_search.forEach(function(desksearch) {
				$('#search_by').append('<option value="'+desksearch+'">'+desksearch+'</option>');
			})
		}
		if ($('#asset_type').val() == 'dtus') {
			$('#asset_model').find('option').remove();
			dtu_models.forEach(function(dtumodel) {
				$('#asset_model').append('<option value="'+dtumodel+'">'+dtumodel+'</option>');
			})
			$('#search_by').find('option').remove();
			desktop_search.forEach(function(desksearch) {
				$('#search_by').append('<option value="'+desksearch+'">'+desksearch+'</option>');
			})
		}
		if ($('#asset_type').val() == 'mobilecarts') {
			$('#asset_model').find('option').remove();
			mc_models.forEach(function(mcmodel) {
				$('#asset_model').append('<option value="'+mcmodel+'">'+mcmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			desktop_search.forEach(function(desksearch) {
				$('#search_by').append('<option value="'+desksearch+'">'+desksearch+'</option>');
			})
		}
		if ($('#asset_type').val() == 'smartphones') {
			$('#asset_model').find('option').remove();
			sp_models.forEach(function(spmodel) {
				$('#asset_model').append('<option value="'+spmodel+'">'+spmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			sp_search.forEach(function(spsearch) {
				$('#search_by').append('<option value="'+spsearch+'">'+spsearch+'</option>');
			})
		}
		if ($('#asset_type').val() == 'deskphones') {
			$('#asset_model').find('option').remove();
			dp_models.forEach(function(dpmodel) {
				$('#asset_model').append('<option value="'+dpmodel+'">'+dpmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			dp_search.forEach(function(dpsearch) {
				$('#search_by').append('<option value="'+dpsearch+'">'+dpsearch+'</option>');
			})
		}
		if ($('#asset_type').val() == 'printers') {
			$('#asset_model').find('option').remove();
			printer_models.forEach(function(printmodel) {
				$('#asset_model').append('<option value="'+printmodel+'">'+printmodel+'</option>');
			})
			$('#search_by').find('option').remove();
			print_search.forEach(function(printsearch) {
				$('#search_by').append('<option value="'+printsearch+'">'+printsearch+'</option>');
			})
		}
		if ($('#asset_type').val() == 'toners') {
			$('#asset_model').find('option').remove();
			toner_models.forEach(function(tonermodel) {
				$('#asset_model').append('<option value="'+tonermodel+'">'+tonermodel+'</option>');
			})
			$('#search_by').find('option').remove();
			toner_search.forEach(function(tonersearch) {
				$('#search_by').append('<option value="'+tonersearch+'">'+tonersearch+'</option>');
			})
		}

		$.get($('#asset_type').val(), function(data) {
			$('#results').html(data);

		});
	});

});