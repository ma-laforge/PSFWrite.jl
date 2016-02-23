#Test code
#-------------------------------------------------------------------------------

using PSFWrite
using LibPSF #To test validity
#LibPSF = LibPSF2

#No real test code yet... just demonstrate use:


#==Input data
===============================================================================#
sampledata(filename::AbstractString) = joinpath(LibPSF.rootpath, "core/data", filename)
sepline = "---------------------------------------------------------------------"
printsep() = println(sepline)

filepath = "testfile.psf"

freq = 1e9
#t = collect(0:.1e-9:10e-9)
t = collect(0:.01e-9:10e-9)


#==Tests
===============================================================================#
y1 = sin(t*(2pi*freq))
y2 = cos(t*(2pi*freq))

data = PSFWrite.dataset(t, "time")
push!(data, y1, "y1")
push!(data, y2, "y2")
PSFWrite._open(filepath) do writer
	write(writer, data)
end

#throw(:DONE)

println("\nRead data back in:")
printsep()
reader = LibPSF._open(filepath)
#display(reader.props)

_t = readsweep(reader)
@show _t
_y1 = read(reader, "y1")
@show _y1
_y2 = read(reader, "y2")
@show _y2
close(reader)

flush(STDOUT)

:Test_Complete

