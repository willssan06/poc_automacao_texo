class Menu

    include Capybara::DSL

    def go
        visit ''
    end
    

    def clicar_link_guide
        find('a[href="/guide"]').click   
    end

    def clicar_albums_photos
        find('a[href="/albums/1/photos"]').click   
    end

    def capitura_dados
        @response = HTTParty.get("https://jsonplaceholder.typicode.com/albums/1/photos")
        @json_data = JSON.parse(@response.body)
    end

end
