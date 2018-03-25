Pkg.add("Images")
Pkg.add("DataFrames")
Pkg.add("ImageMagick")
Pkg.add("CSV")
using Images
using DataFrames
using CSV
println("Loaded")

function read_data(typeData, labelsInfo, imageSize, path)
    # Reference: Kaggle First Steps with Julia - https://www.kaggle.com/c/street-view-getting-started-with-julia#julia-tutorial 

    # initialize matrix to hold the image
    x::Array{Float32,2} = zeros(size(labelsInfo, 1), imageSize)

    for (index, idImage) in enumerate(labelsInfo[:ID])
        # read the image from file
        nameFile = "$(path)/$(typeData)Resized/$(idImage).Bmp"
        img = Images.load(nameFile)

        # convert image to floats
        temp = float32(img) # sc scales the floats to between 0-1

        # if colour, to have a consistent representation, we convert to grayscale
        if ndims(temp) == 3 #  ndims returns the number of dimensions of array
            temp = mean(temp.data, 1) # average across the first dimension
        end

        # transform image to vector
        x[index, :] = reshape(temp,1,imageSize)::Array{ColorTypes.RGB{Float32},2}
    end

    return x # x is a matrix of values, ith row containing a vector representign the
    # pixel values of the ith image
end


# path to data 
path = "./data"
imageSize = 400 # 20 * 20 pixel data values

# load training data
labelsInfoTrain = CSV.read("$(path)/trainLabels.csv") # trainLabels contains extra data
xTrain = read_data("train", labelsInfoTrain, imageSize, path)

labelsInfoTest = CSV.read("$(path)/sampleSubmission.csv") # testLabels contains testing metadata
xTest = read_data("test", labelsInfoTest, imageSize, path)


