# This contains matrix helper functions
# License is MIT: http://julialang.org/license

module MatrixHelper

export # extend Base.Sort functions to better support Matricies
	sortpermcols,
	sortpermrows,
	selectpermcols,
	selectpermrows

## 

function sortpermcols(A::AbstractMatrix; kws...)
	r = 1:size(A,1)
	cols = [ sub(A,r,i) for i=1:size(A,2) ]
	sortperm(cols; kws..., order=Base.Order.Lexicographic)
end

function sortpermrows(A::AbstractMatrix; kws...)
	c = 1:size(A,2)
	rows = [ sub(A,i,c) for i=1:size(A,1) ]
	sortperm(rows; kws..., order=Base.Order.Lexicographic)
end

function selectpermcols(A::AbstractMatrix, k::Union{Integer,OrdinalRange}; kws...)
	r = 1:size(A,1)
	cols = [ sub(A,r,i) for i=1:size(A,2) ]
	selectperm(cols, k; kws..., order=Base.Order.Lexicographic)
end

function selectpermrows(A::AbstractMatrix, k::Union{Integer,OrdinalRange}; kws...)
	c = 1:size(A,2)
	rows = [ sub(A,i,c) for i=1:size(A,1) ]
	selectperm(rows, k; kws..., order=Base.Order.Lexicographic)
end

end # Module
