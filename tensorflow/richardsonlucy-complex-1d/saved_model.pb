˛ł
űÔ
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
+
Ceil
x"T
y"T"
Ttype:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
7
Conj

input"T
output"T"
Ttype0:
2
8
Const
output"dtype"
valuetensor"
dtypetype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype

FFT	
input

output
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	

IFFT	
input

output
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
!
LoopCond	
input


output

;
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0

	MirrorPad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	"&
modestring:
REFLECT	SYMMETRIC
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
S
Real

input"T
output"Tout"
Ttype0:
2"
Touttype0:
2
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.7.02v1.7.0-3-g024aecf414
F
niterPlaceholder*
dtype0*
_output_shapes
: *
shape: 
S
pad_mode/inputConst*
valueB
 Blog2*
dtype0*
_output_shapes
: 
d
pad_modePlaceholderWithDefaultpad_mode/input*
dtype0*
_output_shapes
: *
shape: 
_
zeros/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
M
zeros/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
h
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0*
_output_shapes
:
b
pad_minPlaceholderWithDefaultzeros*
dtype0*
_output_shapes
:*
shape:
_
dataPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
a
kernelPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
W
SumSumkernelConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
M
truedivRealDivkernelSum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
L
Equal/yConst*
valueB
 Blog2*
dtype0*
_output_shapes
: 
B
EqualEqualpad_modeEqual/y*
_output_shapes
: *
T0
N
	Equal_1/yConst*
valueB
 Bnone*
dtype0*
_output_shapes
: 
F
Equal_1Equalpad_mode	Equal_1/y*
_output_shapes
: *
T0
W
stackPackEqualEqual_1*

axis *
N*
_output_shapes
:*
T0

G
CastCaststack*

SrcT0
*
_output_shapes
:*

DstT0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Y
Sum_1SumCastConst_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
R
assert_greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
[
assert_greater/GreaterGreaterSum_1assert_greater/y*
T0*
_output_shapes
: 
W
assert_greater/ConstConst*
valueB *
dtype0*
_output_shapes
: 
|
assert_greater/AllAllassert_greater/Greaterassert_greater/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
assert_greater/Assert/AssertAssertassert_greater/Allpad_mode*
	summarize*

T
2
I
ShapeShapedata*
T0*
out_type0*
_output_shapes
:
N
Shape_1Shapetruediv*
T0*
out_type0*
_output_shapes
:
?
subSubShapeShape_1*
_output_shapes
:*
T0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
X
Sum_2SumsubConst_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
K
Shape_2Shapedata*
T0*
out_type0*
_output_shapes
:
N
Shape_3Shapetruediv*
T0*
out_type0*
_output_shapes
:
X
assert_greater_equal/yConst*
value	B : *
dtype0*
_output_shapes
: 
q
!assert_greater_equal/GreaterEqualGreaterEqualSum_2assert_greater_equal/y*
_output_shapes
: *
T0
]
assert_greater_equal/ConstConst*
dtype0*
_output_shapes
: *
valueB 

assert_greater_equal/AllAll!assert_greater_equal/GreaterEqualassert_greater_equal/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
v
"assert_greater_equal/Assert/AssertAssertassert_greater_equal/AllShape_2Shape_3*
T
2*
	summarize

Shape_4Shapedata^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
T0*
out_type0*
_output_shapes
:
A
addAddShape_4pad_min*
T0*
_output_shapes
:

	Equal_2/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB
 Blog2*
dtype0*
_output_shapes
: 
F
Equal_2Equalpad_mode	Equal_2/y*
T0*
_output_shapes
: 
J
cond/SwitchSwitchEqual_2Equal_2*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
_output_shapes
: *
T0

G
cond/switch_fIdentitycond/Switch*
_output_shapes
: *
T0

B
cond/pred_idIdentityEqual_2*
_output_shapes
: *
T0

Y
	cond/CastCastcond/Cast/Switch:1*

SrcT0*
_output_shapes
:*

DstT0
p
cond/Cast/SwitchSwitchaddcond/pred_id* 
_output_shapes
::*
T0*
_class

loc:@add
?
cond/LogLog	cond/Cast*
_output_shapes
:*
T0
Ľ
cond/Log_1/xConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
valueB
 *   @*
dtype0*
_output_shapes
: 
@

cond/Log_1Logcond/Log_1/x*
_output_shapes
: *
T0
R
cond/truedivRealDivcond/Log
cond/Log_1*
_output_shapes
:*
T0
D
	cond/CeilCeilcond/truediv*
_output_shapes
:*
T0
Ł

cond/Pow/xConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
valueB
 *   @*
dtype0*
_output_shapes
: 
K
cond/PowPow
cond/Pow/x	cond/Ceil*
T0*
_output_shapes
:
Q
cond/Cast_1Castcond/Pow*

SrcT0*
_output_shapes
:*

DstT0
Ą

cond/ShapeShapecond/Shape/Switch:1^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
T0*
out_type0*
_output_shapes
:

cond/Shape/SwitchSwitchdatacond/pred_id*
T0*
_class
	loc:@data*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
M
cond/subSubcond/Cast_1
cond/Shape*
T0*
_output_shapes
:
 

cond/add/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 
J
cond/addAddcond/sub
cond/add/y*
_output_shapes
:*
T0
Ľ
cond/floordiv/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Y
cond/floordivFloorDivcond/addcond/floordiv/y*
T0*
_output_shapes
:
O

cond/sub_1Subcond/Cast_1
cond/Shape*
T0*
_output_shapes
:
Q

cond/sub_2Sub
cond/sub_1cond/floordiv*
T0*
_output_shapes
:
k

cond/stackPackcond/floordiv
cond/sub_2*
_output_shapes

:*
T0*

axis*
N

cond/MirrorPad	MirrorPadcond/Shape/Switch:1
cond/stack*
	Tpaddings0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
mode	REFLECT*
T0
Ł
cond/Shape_1Shapecond/Shape_1/Switch^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
out_type0*
_output_shapes
:*
T0

cond/Shape_1/SwitchSwitchdatacond/pred_id*
T0*
_class
	loc:@data*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
W

cond/sub_3Subcond/sub_3/Switchcond/Shape_1*
T0*
_output_shapes
:
q
cond/sub_3/SwitchSwitchaddcond/pred_id*
T0*
_class

loc:@add* 
_output_shapes
::
˘
cond/add_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
P

cond/add_1Add
cond/sub_3cond/add_1/y*
T0*
_output_shapes
:
§
cond/floordiv_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
_
cond/floordiv_1FloorDiv
cond/add_1cond/floordiv_1/y*
T0*
_output_shapes
:
W

cond/sub_4Subcond/sub_3/Switchcond/Shape_1*
T0*
_output_shapes
:
S

cond/sub_5Sub
cond/sub_4cond/floordiv_1*
_output_shapes
:*
T0
o
cond/stack_1Packcond/floordiv_1
cond/sub_5*
T0*

axis*
N*
_output_shapes

:

cond/MirrorPad_1	MirrorPadcond/Shape_1/Switchcond/stack_1*
T0*
	Tpaddings0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
mode	REFLECT
n

cond/MergeMergecond/MirrorPad_1cond/MirrorPad*%
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0*
N
Q
Shape_5Shape
cond/Merge*
T0*
out_type0*
_output_shapes
:

Shape_6Shapetruediv^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
T0*
out_type0*
_output_shapes
:
C
sub_1SubShape_5Shape_6*
_output_shapes
:*
T0

add_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
A
add_1Addsub_1add_1/y*
T0*
_output_shapes
:


floordiv/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
L
floordivFloorDivadd_1
floordiv/y*
T0*
_output_shapes
:
C
sub_2SubShape_5Shape_6*
T0*
_output_shapes
:
B
sub_3Subsub_2floordiv*
_output_shapes
:*
T0
^
stack_1Packfloordivsub_3*
_output_shapes

:*
T0*

axis*
N
[
PadPadtruedivstack_1*
T0*
	Tpaddings0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
Shape_7ShapePad*
T0*
out_type0*
_output_shapes
:
Ą
strided_slice/stackConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB: *
dtype0*
_output_shapes
:
Ł
strided_slice/stack_1Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
_output_shapes
:*
valueB:*
dtype0
Ł
strided_slice/stack_2Const^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
valueB:*
dtype0*
_output_shapes
:
ű
strided_sliceStridedSliceShape_7strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

add_2/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
E
add_2Addstrided_sliceadd_2/y*
_output_shapes
: *
T0

floordiv_1/yConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
L

floordiv_1FloorDivadd_2floordiv_1/y*
_output_shapes
: *
T0
H
sub_4Substrided_slice
floordiv_1*
T0*
_output_shapes
: 

range/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
dtype0*
_output_shapes
: *
value	B :
b
rangeRangesub_4strided_slicerange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

range_1/startConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 

range_1/deltaConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B :*
dtype0*
_output_shapes
: 
f
range_1Rangerange_1/startsub_4range_1/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

concat/axisConst^assert_greater/Assert/Assert#^assert_greater_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
r
concatConcatV2rangerange_1concat/axis*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
y
GatherGatherPadconcat*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tindices0*
Tparams0*
validate_indices(
S
Cast_1CastGather*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
7
FFTFFTCast_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
ConjConjFFT*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
ones_like/ShapeShape
cond/Merge*
T0*
out_type0*
_output_shapes
:
T
ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
	ones_likeFillones_like/Shapeones_like/Const*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
J
mul/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
J
mulMulmul/x	ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
L
deconvolutionIdentitymul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
M
while/ConstConst*
value	B :*
dtype0*
_output_shapes
: 

while/EnterEnterwhile/Const*
T0*
is_constant( *
parallel_iterations*
_output_shapes
: *#

frame_namewhile/while_context
Ś
while/Enter_1Enterdeconvolution*
T0*
is_constant( *
parallel_iterations*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context
b
while/MergeMergewhile/Enterwhile/NextIteration*
T0*
N*
_output_shapes
: : 
u
while/Merge_1Mergewhile/Enter_1while/NextIteration_1*
T0*
N*%
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
a
while/LessEqual	LessEqualwhile/Mergewhile/LessEqual/Enter*
_output_shapes
: *
T0

while/LessEqual/EnterEnterniter*
_output_shapes
: *#

frame_namewhile/while_context*
T0*
is_constant(*
parallel_iterations
C
while/LoopCondLoopCondwhile/LessEqual*
_output_shapes
: 
v
while/SwitchSwitchwhile/Mergewhile/LoopCond*
_output_shapes
: : *
T0*
_class
loc:@while/Merge

while/Switch_1Switchwhile/Merge_1while/LoopCond*
T0* 
_class
loc:@while/Merge_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
K
while/IdentityIdentitywhile/Switch:1*
_output_shapes
: *
T0
\
while/Identity_1Identitywhile/Switch_1:1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a

while/CastCastwhile/Identity_1*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
A
	while/FFTFFT
while/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
	while/mulMul	while/FFTwhile/mul/Enter*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/mul/EnterEnterFFT*
parallel_iterations*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context*
T0*
is_constant(
B

while/IFFTIFFT	while/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
X

while/RealReal
while/IFFT*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tout0
b
while/Less/yConst^while/Identity*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Z

while/LessLess
while/Realwhile/Less/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/zeros_like	ZerosLikewhile/zeros_like/Enter^while/Identity*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
while/zeros_like/EnterEnter
cond/Merge*
is_constant(*
parallel_iterations*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context*
T0
j
while/truedivRealDivwhile/zeros_like/Enter
while/Real*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
while/blur1Select
while/Lesswhile/zeros_likewhile/truediv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
while/Cast_1Castwhile/blur1*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
E
while/FFT_1FFTwhile/Cast_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
while/mul_1Mulwhile/FFT_1while/mul_1/Enter*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
while/mul_1/EnterEnterConj*
parallel_iterations*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*#

frame_namewhile/while_context*
T0*
is_constant(
F
while/IFFT_1IFFTwhile/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
while/Real_1Realwhile/IFFT_1*

Tout0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
while/mul_2Mulwhile/Identity_1while/Real_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
e
while/Maximum/yConst^while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
d
while/MaximumMaximumwhile/mul_2while/Maximum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
while/add/yConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 
N
	while/addAddwhile/Identitywhile/add/y*
_output_shapes
: *
T0
P
while/NextIterationNextIteration	while/add*
T0*
_output_shapes
: 
c
while/NextIteration_1NextIterationwhile/Maximum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
A

while/ExitExitwhile/Switch*
T0*
_output_shapes
: 
R
while/Exit_1Exitwhile/Switch_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Shape_8Shapedata*
T0*
out_type0*
_output_shapes
:
S
Shape_9Shapewhile/Exit_1*
out_type0*
_output_shapes
:*
T0
C
sub_5SubShape_9Shape_8*
_output_shapes
:*
T0
I
add_3/yConst*
value	B :*
dtype0*
_output_shapes
: 
A
add_3Addsub_5add_3/y*
T0*
_output_shapes
:
N
floordiv_2/yConst*
_output_shapes
: *
value	B :*
dtype0
P

floordiv_2FloorDivadd_3floordiv_2/y*
T0*
_output_shapes
:
l
SliceSlicewhile/Exit_1
floordiv_2Shape_8*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
G
resultIdentitySlice*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
L
Shape_10Shapedata*
T0*
out_type0*
_output_shapes
:
O
Shape_11Shapetruediv*
_output_shapes
:*
T0*
out_type0""÷
cond_contextćă
˘
cond/cond_textcond/pred_id:0cond/switch_t:0 *ě
add:0
cond/Cast/Switch:1
cond/Cast:0
cond/Cast_1:0
cond/Ceil:0

cond/Log:0
cond/Log_1/x:0
cond/Log_1:0
cond/MirrorPad:0
cond/Pow/x:0

cond/Pow:0
cond/Shape/Switch:1
cond/Shape:0
cond/add/y:0

cond/add:0
cond/floordiv/y:0
cond/floordiv:0
cond/pred_id:0
cond/stack:0

cond/sub:0
cond/sub_1:0
cond/sub_2:0
cond/switch_t:0
cond/truediv:0
data:0
add:0cond/Cast/Switch:1
data:0cond/Shape/Switch:1"
cond/switch_t:0cond/switch_t:0 
cond/pred_id:0cond/pred_id:0
ť
cond/cond_text_1cond/pred_id:0cond/switch_f:0*
add:0
cond/MirrorPad_1:0
cond/Shape_1/Switch:0
cond/Shape_1:0
cond/add_1/y:0
cond/add_1:0
cond/floordiv_1/y:0
cond/floordiv_1:0
cond/pred_id:0
cond/stack_1:0
cond/sub_3/Switch:0
cond/sub_3:0
cond/sub_4:0
cond/sub_5:0
cond/switch_f:0
data:0"
cond/switch_f:0cond/switch_f:0 
cond/pred_id:0cond/pred_id:0
add:0cond/sub_3/Switch:0
data:0cond/Shape_1/Switch:0"
while_context

while/while_context*while/LoopCond:02while/Merge:0:while/Identity:0Bwhile/Exit:0Bwhile/Exit_1:0Jú
Conj:0
FFT:0
cond/Merge:0
niter:0
while/Cast:0
while/Cast_1:0
while/Enter:0
while/Enter_1:0
while/Exit:0
while/Exit_1:0
while/FFT:0
while/FFT_1:0
while/IFFT:0
while/IFFT_1:0
while/Identity:0
while/Identity_1:0
while/Less/y:0
while/Less:0
while/LessEqual/Enter:0
while/LessEqual:0
while/LoopCond:0
while/Maximum/y:0
while/Maximum:0
while/Merge:0
while/Merge:1
while/Merge_1:0
while/Merge_1:1
while/NextIteration:0
while/NextIteration_1:0
while/Real:0
while/Real_1:0
while/Switch:0
while/Switch:1
while/Switch_1:0
while/Switch_1:1
while/add/y:0
while/add:0
while/blur1:0
while/mul/Enter:0
while/mul:0
while/mul_1/Enter:0
while/mul_1:0
while/mul_2:0
while/truediv:0
while/zeros_like/Enter:0
while/zeros_like:0(
cond/Merge:0while/zeros_like/Enter:0
Conj:0while/mul_1/Enter:0
FFT:0while/mul/Enter:0"
niter:0while/LessEqual/Enter:0Rwhile/Enter:0Rwhile/Enter_1:0*
serving_defaultě

pad_min
	pad_min:0

pad_mode

pad_mode:0 
&
kernel
	truediv:0˙˙˙˙˙˙˙˙˙
!
data
data:0˙˙˙˙˙˙˙˙˙

niter
niter:0 %
result
result:0˙˙˙˙˙˙˙˙˙
	pad_shape
add:0
pad_mode

pad_mode:0 "

data_shape

Shape_10:0"

kern_shape

Shape_11:0
pad_min
	pad_min:0