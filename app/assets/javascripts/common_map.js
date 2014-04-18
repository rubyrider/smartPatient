$(function(){

    initialize_geo_mock_up();
    navigator.geolocation.getCurrentPosition(success_callback, error_callback)
})

function initialize_geo_mock_up(){
    navigator.geolocation.waypoints = [
        {
            coords: {
                latitude: 23.7464653,
                longitude: 90.3760125,
                accuracy: 1500
            }
        }, {
            coords: {
                latitude: 23.7458747,
                longitude: 90.38520810000001,
                accuracy: 1334
            }
        }, {
            coords: {
                latitude: 23.7526948,
                longitude: 90.3757918,
                accuracy: 631
            }
        }, {
            coords: {
                latitude: 23.7464653,
                longitude: 90.3760125,
                accuracy: 361
            }
        }, {
            coords: {
                latitude: 23.752536,
                longitude: 90.3837009,
                accuracy: 150
            }
        }, {
            coords: {
                latitude: 23.7538889,
                longitude: 90.3925,
                accuracy: 65
            }
        }, {
            coords: {
                latitude: 23.7526948,
                longitude: 90.3757918,
                accuracy: 65
            }
        }, {
            coords: {
                latitude: 23.7409349,
                longitude: 90.3744565,
                accuracy: 65
            }
        }, {
            coords: {
                latitude: 23.74161,
                longitude: 90.3834754,
                accuracy: 65
            }
        }, {
            coords: {
                latitude: 23.7362063,
                longitude: 90.3839259,
                accuracy: 65
            }
        }
    ]
}


function success_callback(p)
{
    set_map(p.coords.latitude, p.coords.longitude)
}

function error_callback(p)
{
    alert('error='+p.message);
}

function set_map(lat, lng){
    handler = Gmaps.build('Google');
    get_more_location().success(function(data){
        $.each(data, function(index, o){
            var coord = {}
            coord["lat"] = o.lat
            coord["lng"] = o.lng

            handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
                markers = handler.addMarkers([
                    {
                        "lat": o.lat,
                        "lng": o.lng
                    }
                ]);

                handler.bounds.extendWith(markers);
                handler.fitMapToBounds();
            });

        })
    })


    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        markers = handler.addMarkers([
            {
                "lat": lat,
                "lng": lng
            }
        ]);

        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
    });

    handler.getMap().setZoom(16);
}

function get_more_location(){
    return $.getJSON("ajax/fetch_location.json", function(data){})

}

