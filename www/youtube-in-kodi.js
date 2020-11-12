class YoutubeInKodi extends HTMLElement {
      set hass(hass) {
              if (!this.content) {
                        const card = document.createElement('ha-card');
                        card.header = 'Play Video On Kodi';
                        this.content = document.createElement('div');
                        this.content.style.padding = '0 16px 16px';
                        card.appendChild(this.content);
                        this.appendChild(card);
              }

              //const entityId = this.config.entity;
              //const state = hass.states[entityId];
              //const stateStr = state ? state.state : 'unavailable';

              this.content.innerHTML = `
                    <br><br>
		    Video to search and play <input id='criteria' type="text"/>
		    <br>
		    <select id='ip'><option selected value='192.168.0.205'>Salon</option><option value='192.168.0.175'>Cinéma</option></select>
		    <br>
		    <input type="submit" value="Go"></input>
                  `;
            }

      setConfig(config) {
              //if (!config.entity) {
              //          throw new Error('You need to define an entity');
              //        }
              this.config = config;
            }

      // The height of your card. Home Assistant uses this to automatically
    //   // distribute all cards over the available columns.
      getCardSize() {
          return 3;
      }
}
customElements.define('youtube-in-kodi', YoutubeInKodi);
