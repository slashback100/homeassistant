all_lights   = hass.states.entity_ids('light')
for entity_id in all_lights:
    logger.info(hass.states.get(entity_id).state)
    if hass.states.get(entity_id).state == 'on':
        hass.services.call('light', 'turn_on',  {'entity_id': entity_id})
