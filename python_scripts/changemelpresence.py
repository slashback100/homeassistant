presence = data.get('presence', 'home')
hass.states.set("person.melanie",presence)
