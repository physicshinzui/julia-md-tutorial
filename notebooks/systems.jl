module HarmonicMod
    export System, potential, force, kinetic_energy

    struct System
        mass::Float64
        spring_const::Float64
        x_eq::Float64
    end

    function potential(x::Float64, x_eq::Float64, k::Float64 = 1.0)
        potential = 0.5 * k * (x - x_eq)^2
        force     = - k * (x - x_eq) 
        return potential
    end

    function force(x::Float64, x_eq::Float64, k::Float64 = 1.0)
        force = - k * (x - x_eq) 
        return force
    end 

    function kinetic_energy(v::Float64, mass::Float64)
        return 0.5 * mass * v^2
    end
end
