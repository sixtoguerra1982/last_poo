require_relative 'modulos'

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
    include Habilidades::Caminante
end

class Ave < Animal

end

class Mamifero < Animal

end

class Insecto
    include Habilidades::Volador
end

class Pinguino < Ave
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
end


class Perro < Mamifero
    include Alimentacion::Carnivoro
end
class Gato < Mamifero
    include Alimentacion::Carnivoro
end
class Vaca < Mamifero
    include Alimentacion::Herbivoro
end

class Mosca < Insecto

end
class Maripoza < Insecto

end
class Abeja < Insecto

end
