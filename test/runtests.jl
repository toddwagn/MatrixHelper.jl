using MatrixHelper
using Base.Test

# write your own tests here
a = rand(21,21)
asp = sortpermrows(a)
as = sortrows(a)

@test a[asp,:] == as
for i in 1:21
	@test selectpermrows(a, i) == asp[i]
end
@test selectpermrows(a, 6:12) == asp[6:12]

asp = sortpermcols(a)
as = sortcols(a)
@test a[:,asp] == as
for i in 1:21
	@test selectpermcols(a, i) == asp[i]
end
@test selectpermcols(a, 6:12) == asp[6:12]
