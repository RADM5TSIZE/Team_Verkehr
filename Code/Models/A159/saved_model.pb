??4
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
?
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.22v2.6.1-9-gc2363d6d0258??3
|
dense_132/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: H*!
shared_namedense_132/kernel
u
$dense_132/kernel/Read/ReadVariableOpReadVariableOpdense_132/kernel*
_output_shapes

: H*
dtype0
t
dense_132/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_namedense_132/bias
m
"dense_132/bias/Read/ReadVariableOpReadVariableOpdense_132/bias*
_output_shapes
:H*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_132/lstm_cell_132/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_132/lstm_cell_132/kernel
?
1lstm_132/lstm_cell_132/kernel/Read/ReadVariableOpReadVariableOplstm_132/lstm_cell_132/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_132/lstm_cell_132/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*8
shared_name)'lstm_132/lstm_cell_132/recurrent_kernel
?
;lstm_132/lstm_cell_132/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_132/lstm_cell_132/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_132/lstm_cell_132/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_132/lstm_cell_132/bias
?
/lstm_132/lstm_cell_132/bias/Read/ReadVariableOpReadVariableOplstm_132/lstm_cell_132/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_132/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: H*(
shared_nameAdam/dense_132/kernel/m
?
+Adam/dense_132/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_132/kernel/m*
_output_shapes

: H*
dtype0
?
Adam/dense_132/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*&
shared_nameAdam/dense_132/bias/m
{
)Adam/dense_132/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_132/bias/m*
_output_shapes
:H*
dtype0
?
$Adam/lstm_132/lstm_cell_132/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_132/lstm_cell_132/kernel/m
?
8Adam/lstm_132/lstm_cell_132/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_132/lstm_cell_132/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_132/lstm_cell_132/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_132/lstm_cell_132/recurrent_kernel/m
?
BAdam/lstm_132/lstm_cell_132/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_132/lstm_cell_132/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_132/lstm_cell_132/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_132/lstm_cell_132/bias/m
?
6Adam/lstm_132/lstm_cell_132/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_132/lstm_cell_132/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_132/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: H*(
shared_nameAdam/dense_132/kernel/v
?
+Adam/dense_132/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_132/kernel/v*
_output_shapes

: H*
dtype0
?
Adam/dense_132/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*&
shared_nameAdam/dense_132/bias/v
{
)Adam/dense_132/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_132/bias/v*
_output_shapes
:H*
dtype0
?
$Adam/lstm_132/lstm_cell_132/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_132/lstm_cell_132/kernel/v
?
8Adam/lstm_132/lstm_cell_132/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_132/lstm_cell_132/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_132/lstm_cell_132/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_132/lstm_cell_132/recurrent_kernel/v
?
BAdam/lstm_132/lstm_cell_132/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_132/lstm_cell_132/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_132/lstm_cell_132/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_132/lstm_cell_132/bias/v
?
6Adam/lstm_132/lstm_cell_132/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_132/lstm_cell_132/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?%
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
l

cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratemLmMmN mO!mPvQvRvS vT!vU
 
#
0
 1
!2
3
4
#
0
 1
!2
3
4
?

"layers
regularization_losses
trainable_variables
	variables
#layer_metrics
$metrics
%layer_regularization_losses
&non_trainable_variables
 
?
'
state_size

kernel
 recurrent_kernel
!bias
(regularization_losses
)trainable_variables
*	variables
+	keras_api
 
 

0
 1
!2

0
 1
!2
?

,layers
regularization_losses
trainable_variables
	variables
-layer_metrics

.states
/metrics
0layer_regularization_losses
1non_trainable_variables
\Z
VARIABLE_VALUEdense_132/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_132/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?

2layers
regularization_losses
trainable_variables
	variables
3layer_metrics
4layer_regularization_losses
5metrics
6non_trainable_variables
 
 
 
?

7layers
regularization_losses
trainable_variables
	variables
8layer_metrics
9layer_regularization_losses
:metrics
;non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUElstm_132/lstm_cell_132/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'lstm_132/lstm_cell_132/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_132/lstm_cell_132/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

<0
=1
 
 
 
 

0
 1
!2

0
 1
!2
?

>layers
(regularization_losses
)trainable_variables
*	variables
?layer_metrics
@layer_regularization_losses
Ametrics
Bnon_trainable_variables


0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ctotal
	Dcount
E	variables
F	keras_api
D
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

J	variables
}
VARIABLE_VALUEAdam/dense_132/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_132/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/lstm_132/lstm_cell_132/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_132/lstm_cell_132/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_132/lstm_cell_132/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_132/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_132/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/lstm_132/lstm_cell_132/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_132/lstm_cell_132/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_132/lstm_cell_132/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_132_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_132_inputlstm_132/lstm_cell_132/kernel'lstm_132/lstm_cell_132/recurrent_kernellstm_132/lstm_cell_132/biasdense_132/kerneldense_132/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2603695
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_132/kernel/Read/ReadVariableOp"dense_132/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_132/lstm_cell_132/kernel/Read/ReadVariableOp;lstm_132/lstm_cell_132/recurrent_kernel/Read/ReadVariableOp/lstm_132/lstm_cell_132/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_132/kernel/m/Read/ReadVariableOp)Adam/dense_132/bias/m/Read/ReadVariableOp8Adam/lstm_132/lstm_cell_132/kernel/m/Read/ReadVariableOpBAdam/lstm_132/lstm_cell_132/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_132/lstm_cell_132/bias/m/Read/ReadVariableOp+Adam/dense_132/kernel/v/Read/ReadVariableOp)Adam/dense_132/bias/v/Read/ReadVariableOp8Adam/lstm_132/lstm_cell_132/kernel/v/Read/ReadVariableOpBAdam/lstm_132/lstm_cell_132/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_132/lstm_cell_132/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2606541
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_132/kerneldense_132/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_132/lstm_cell_132/kernel'lstm_132/lstm_cell_132/recurrent_kernellstm_132/lstm_cell_132/biastotalcounttotal_1count_1Adam/dense_132/kernel/mAdam/dense_132/bias/m$Adam/lstm_132/lstm_cell_132/kernel/m.Adam/lstm_132/lstm_cell_132/recurrent_kernel/m"Adam/lstm_132/lstm_cell_132/bias/mAdam/dense_132/kernel/vAdam/dense_132/bias/v$Adam/lstm_132/lstm_cell_132/kernel/v.Adam/lstm_132/lstm_cell_132/recurrent_kernel/v"Adam/lstm_132/lstm_cell_132/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2606623Ș2
?

?
F__inference_dense_132_layer_call_and_return_conditional_losses_2606428

inputs0
matmul_readvariableop_resource: H-
biasadd_readvariableop_resource:H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: H*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605539
inputs_0/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:????????? :?????????????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26052662
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
while_cond_2605180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2605180___redundant_placeholder05
1while_while_cond_2605180___redundant_placeholder15
1while_while_cond_2605180___redundant_placeholder25
1while_while_cond_2605180___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2604175

inputs8
%lstm_132_read_readvariableop_resource:	?:
'lstm_132_read_1_readvariableop_resource:	 ?6
'lstm_132_read_2_readvariableop_resource:	?:
(dense_132_matmul_readvariableop_resource: H7
)dense_132_biasadd_readvariableop_resource:H
identity?? dense_132/BiasAdd/ReadVariableOp?dense_132/MatMul/ReadVariableOp?lstm_132/Read/ReadVariableOp?lstm_132/Read_1/ReadVariableOp?lstm_132/Read_2/ReadVariableOpV
lstm_132/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_132/Shape?
lstm_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_132/strided_slice/stack?
lstm_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_132/strided_slice/stack_1?
lstm_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_132/strided_slice/stack_2?
lstm_132/strided_sliceStridedSlicelstm_132/Shape:output:0%lstm_132/strided_slice/stack:output:0'lstm_132/strided_slice/stack_1:output:0'lstm_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_132/strided_slicen
lstm_132/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros/mul/y?
lstm_132/zeros/mulMullstm_132/strided_slice:output:0lstm_132/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros/mulq
lstm_132/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_132/zeros/Less/y?
lstm_132/zeros/LessLesslstm_132/zeros/mul:z:0lstm_132/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros/Lesst
lstm_132/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros/packed/1?
lstm_132/zeros/packedPacklstm_132/strided_slice:output:0 lstm_132/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_132/zeros/packedq
lstm_132/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_132/zeros/Const?
lstm_132/zerosFilllstm_132/zeros/packed:output:0lstm_132/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_132/zerosr
lstm_132/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros_1/mul/y?
lstm_132/zeros_1/mulMullstm_132/strided_slice:output:0lstm_132/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros_1/mulu
lstm_132/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_132/zeros_1/Less/y?
lstm_132/zeros_1/LessLesslstm_132/zeros_1/mul:z:0 lstm_132/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros_1/Lessx
lstm_132/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros_1/packed/1?
lstm_132/zeros_1/packedPacklstm_132/strided_slice:output:0"lstm_132/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_132/zeros_1/packedu
lstm_132/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_132/zeros_1/Const?
lstm_132/zeros_1Fill lstm_132/zeros_1/packed:output:0lstm_132/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_132/zeros_1?
lstm_132/Read/ReadVariableOpReadVariableOp%lstm_132_read_readvariableop_resource*
_output_shapes
:	?*
dtype02
lstm_132/Read/ReadVariableOp?
lstm_132/IdentityIdentity$lstm_132/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_132/Identity?
lstm_132/Read_1/ReadVariableOpReadVariableOp'lstm_132_read_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_132/Read_1/ReadVariableOp?
lstm_132/Identity_1Identity&lstm_132/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2
lstm_132/Identity_1?
lstm_132/Read_2/ReadVariableOpReadVariableOp'lstm_132_read_2_readvariableop_resource*
_output_shapes	
:?*
dtype02 
lstm_132/Read_2/ReadVariableOp?
lstm_132/Identity_2Identity&lstm_132/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
lstm_132/Identity_2?
lstm_132/PartitionedCallPartitionedCallinputslstm_132/zeros:output:0lstm_132/zeros_1:output:0lstm_132/Identity:output:0lstm_132/Identity_1:output:0lstm_132/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26038872
lstm_132/PartitionedCall?
dense_132/MatMul/ReadVariableOpReadVariableOp(dense_132_matmul_readvariableop_resource*
_output_shapes

: H*
dtype02!
dense_132/MatMul/ReadVariableOp?
dense_132/MatMulMatMul!lstm_132/PartitionedCall:output:0'dense_132/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2
dense_132/MatMul?
 dense_132/BiasAdd/ReadVariableOpReadVariableOp)dense_132_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 dense_132/BiasAdd/ReadVariableOp?
dense_132/BiasAddBiasAdddense_132/MatMul:product:0(dense_132/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2
dense_132/BiasAddp
reshape_132/ShapeShapedense_132/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_132/Shape?
reshape_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_132/strided_slice/stack?
!reshape_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_1?
!reshape_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_2?
reshape_132/strided_sliceStridedSlicereshape_132/Shape:output:0(reshape_132/strided_slice/stack:output:0*reshape_132/strided_slice/stack_1:output:0*reshape_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_132/strided_slice|
reshape_132/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_132/Reshape/shape/1|
reshape_132/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_132/Reshape/shape/2?
reshape_132/Reshape/shapePack"reshape_132/strided_slice:output:0$reshape_132/Reshape/shape/1:output:0$reshape_132/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_132/Reshape/shape?
reshape_132/ReshapeReshapedense_132/BiasAdd:output:0"reshape_132/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_132/Reshape{
IdentityIdentityreshape_132/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_132/BiasAdd/ReadVariableOp ^dense_132/MatMul/ReadVariableOp^lstm_132/Read/ReadVariableOp^lstm_132/Read_1/ReadVariableOp^lstm_132/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_132/BiasAdd/ReadVariableOp dense_132/BiasAdd/ReadVariableOp2B
dense_132/MatMul/ReadVariableOpdense_132/MatMul/ReadVariableOp2<
lstm_132/Read/ReadVariableOplstm_132/Read/ReadVariableOp2@
lstm_132/Read_1/ReadVariableOplstm_132/Read_1/ReadVariableOp2@
lstm_132/Read_2/ReadVariableOplstm_132/Read_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?k
?
#__inference__traced_restore_2606623
file_prefix3
!assignvariableop_dense_132_kernel: H/
!assignvariableop_1_dense_132_bias:H&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_132_lstm_cell_132_kernel:	?M
:assignvariableop_8_lstm_132_lstm_cell_132_recurrent_kernel:	 ?=
.assignvariableop_9_lstm_132_lstm_cell_132_bias:	?#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: =
+assignvariableop_14_adam_dense_132_kernel_m: H7
)assignvariableop_15_adam_dense_132_bias_m:HK
8assignvariableop_16_adam_lstm_132_lstm_cell_132_kernel_m:	?U
Bassignvariableop_17_adam_lstm_132_lstm_cell_132_recurrent_kernel_m:	 ?E
6assignvariableop_18_adam_lstm_132_lstm_cell_132_bias_m:	?=
+assignvariableop_19_adam_dense_132_kernel_v: H7
)assignvariableop_20_adam_dense_132_bias_v:HK
8assignvariableop_21_adam_lstm_132_lstm_cell_132_kernel_v:	?U
Bassignvariableop_22_adam_lstm_132_lstm_cell_132_recurrent_kernel_v:	 ?E
6assignvariableop_23_adam_lstm_132_lstm_cell_132_bias_v:	?
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_132_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_132_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_132_lstm_cell_132_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_132_lstm_cell_132_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_132_lstm_cell_132_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_132_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_132_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp8assignvariableop_16_adam_lstm_132_lstm_cell_132_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpBassignvariableop_17_adam_lstm_132_lstm_cell_132_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_132_lstm_cell_132_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_132_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_132_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp8assignvariableop_21_adam_lstm_132_lstm_cell_132_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adam_lstm_132_lstm_cell_132_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_132_lstm_cell_132_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24f
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_25?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?A
?
!__inference_standard_lstm_2604337

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2604252*
condR
while_cond_2604251*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_7cb7142a-a86d-4997-a037-e4aa7a1938b0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?S
?
(__forward_gpu_lstm_with_fallback_2604607

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_7cb7142a-a86d-4997-a037-e4aa7a1938b0*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2604432_2604608*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?,
?
while_body_2601361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?
?
*__inference_lstm_132_layer_call_fn_2604658

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26030502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?
!__inference_standard_lstm_2603887

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2603802*
condR
while_cond_2603801*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_a8a123e9-be7f-442e-8430-6189ed23431a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
=__inference___backward_gpu_lstm_with_fallback_2603982_2604158
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_a8a123e9-be7f-442e-8430-6189ed23431a*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2604157*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
0__inference_sequential_132_layer_call_fn_2603710

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: H
	unknown_3:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_132_layer_call_and_return_conditional_losses_26030902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_132_layer_call_fn_2606418

inputs
unknown: H
	unknown_0:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_132_layer_call_and_return_conditional_losses_26030682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?,
?
while_body_2602692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?	
?
while_cond_2604251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2604251___redundant_placeholder05
1while_while_cond_2604251___redundant_placeholder15
1while_while_cond_2604251___redundant_placeholder25
1while_while_cond_2604251___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?H
?
*__inference_gpu_lstm_with_fallback_2604925

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_99b3c0f0-0372-4efd-954e-0f81b4e51840*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?,
?
while_body_2600904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
??
?
=__inference___backward_gpu_lstm_with_fallback_2602872_2603048
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_0966234e-db22-415a-ab0b-50e73eaefe5a*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2603047*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_2600450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?,
?
while_body_2605181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?S
?
(__forward_gpu_lstm_with_fallback_2604157

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_a8a123e9-be7f-442e-8430-6189ed23431a*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2603982_2604158*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603672
lstm_132_input#
lstm_132_2603658:	?#
lstm_132_2603660:	 ?
lstm_132_2603662:	?#
dense_132_2603665: H
dense_132_2603667:H
identity??!dense_132/StatefulPartitionedCall? lstm_132/StatefulPartitionedCall?
 lstm_132/StatefulPartitionedCallStatefulPartitionedCalllstm_132_inputlstm_132_2603658lstm_132_2603660lstm_132_2603662*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26035672"
 lstm_132/StatefulPartitionedCall?
!dense_132/StatefulPartitionedCallStatefulPartitionedCall)lstm_132/StatefulPartitionedCall:output:0dense_132_2603665dense_132_2603667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_132_layer_call_and_return_conditional_losses_26030682#
!dense_132/StatefulPartitionedCall?
reshape_132/PartitionedCallPartitionedCall*dense_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_132_layer_call_and_return_conditional_losses_26030872
reshape_132/PartitionedCall?
IdentityIdentity$reshape_132/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_132/StatefulPartitionedCall!^lstm_132/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_132/StatefulPartitionedCall!dense_132/StatefulPartitionedCall2D
 lstm_132/StatefulPartitionedCall lstm_132/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_132_input
?T
?
(__forward_gpu_lstm_with_fallback_2605536

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_812ee006-6e89-4ccb-a6a7-28252a928646*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2605361_2605537*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
=__inference___backward_gpu_lstm_with_fallback_2605361_2605537
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :?????????????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :?????????????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :?????????????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :?????????????????? :????????? :????????? : :?????????????????? ::????????? :????????? ::??????????????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_812ee006-6e89-4ccb-a6a7-28252a928646*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2605536*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? ::6
4
_output_shapes"
 :?????????????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: ::6
4
_output_shapes"
 :?????????????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?A
?
!__inference_standard_lstm_2600989

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2600904*
condR
while_cond_2600903*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_7eddf9c0-1e17-448c-a78c-a49e1e0c520a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?H
?
*__inference_gpu_lstm_with_fallback_2606230

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_356f41bf-acc7-4ca5-a479-4fce228e67a6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
d
H__inference_reshape_132_layer_call_and_return_conditional_losses_2606446

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????H:O K
'
_output_shapes
:?????????H
 
_user_specified_nameinputs
?	
?
while_cond_2600449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2600449___redundant_placeholder05
1while_while_cond_2600449___redundant_placeholder15
1while_while_cond_2600449___redundant_placeholder25
1while_while_cond_2600449___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_2602691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2602691___redundant_placeholder05
1while_while_cond_2602691___redundant_placeholder15
1while_while_cond_2602691___redundant_placeholder25
1while_while_cond_2602691___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?A
?
!__inference_standard_lstm_2602777

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2602692*
condR
while_cond_2602691*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_0966234e-db22-415a-ab0b-50e73eaefe5a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_2604745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2604745___redundant_placeholder05
1while_while_cond_2604745___redundant_placeholder15
1while_while_cond_2604745___redundant_placeholder25
1while_while_cond_2604745___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?H
?
*__inference_gpu_lstm_with_fallback_2603981

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_a8a123e9-be7f-442e-8430-6189ed23431a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_2603801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2603801___redundant_placeholder05
1while_while_cond_2603801___redundant_placeholder15
1while_while_cond_2603801___redundant_placeholder25
1while_while_cond_2603801___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
=__inference___backward_gpu_lstm_with_fallback_2604432_2604608
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_7cb7142a-a86d-4997-a037-e4aa7a1938b0*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2604607*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?T
?
(__forward_gpu_lstm_with_fallback_2601259

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_7eddf9c0-1e17-448c-a78c-a49e1e0c520a*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2601084_2601260*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605974

inputs/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26057012
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?
!__inference_standard_lstm_2605266

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2605181*
condR
while_cond_2605180*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_812ee006-6e89-4ccb-a6a7-28252a928646*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
=__inference___backward_gpu_lstm_with_fallback_2600630_2600806
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_481bd8c5-8d1b-4e48-aa80-1c2ff999b977*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2600805*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
0__inference_sequential_132_layer_call_fn_2603725

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: H
	unknown_3:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_132_layer_call_and_return_conditional_losses_26036102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
*__inference_gpu_lstm_with_fallback_2603388

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_6e82d0aa-25ad-43f6-83ea-ac8dfaa5b0c9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?T
?
(__forward_gpu_lstm_with_fallback_2601716

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_5b321313-8403-4e71-af72-d2c3fadc4a8c*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2601541_2601717*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603655
lstm_132_input#
lstm_132_2603641:	?#
lstm_132_2603643:	 ?
lstm_132_2603645:	?#
dense_132_2603648: H
dense_132_2603650:H
identity??!dense_132/StatefulPartitionedCall? lstm_132/StatefulPartitionedCall?
 lstm_132/StatefulPartitionedCallStatefulPartitionedCalllstm_132_inputlstm_132_2603641lstm_132_2603643lstm_132_2603645*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26030502"
 lstm_132/StatefulPartitionedCall?
!dense_132/StatefulPartitionedCallStatefulPartitionedCall)lstm_132/StatefulPartitionedCall:output:0dense_132_2603648dense_132_2603650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_132_layer_call_and_return_conditional_losses_26030682#
!dense_132/StatefulPartitionedCall?
reshape_132/PartitionedCallPartitionedCall*dense_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_132_layer_call_and_return_conditional_losses_26030872
reshape_132/PartitionedCall?
IdentityIdentity$reshape_132/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_132/StatefulPartitionedCall!^lstm_132/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_132/StatefulPartitionedCall!dense_132/StatefulPartitionedCall2D
 lstm_132/StatefulPartitionedCall lstm_132/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_132_input
??
?
=__inference___backward_gpu_lstm_with_fallback_2601084_2601260
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :?????????????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :?????????????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :?????????????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :?????????????????? :????????? :????????? : :?????????????????? ::????????? :????????? ::??????????????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_7eddf9c0-1e17-448c-a78c-a49e1e0c520a*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2601259*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? ::6
4
_output_shapes"
 :?????????????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: ::6
4
_output_shapes"
 :?????????????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?S
?
(__forward_gpu_lstm_with_fallback_2600805

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_481bd8c5-8d1b-4e48-aa80-1c2ff999b977*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2600630_2600806*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
*__inference_lstm_132_layer_call_fn_2604647
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26017192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
d
H__inference_reshape_132_layer_call_and_return_conditional_losses_2603087

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????H:O K
'
_output_shapes
:?????????H
 
_user_specified_nameinputs
?	
?
0__inference_sequential_132_layer_call_fn_2603638
lstm_132_input
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: H
	unknown_3:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_132_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_132_layer_call_and_return_conditional_losses_26036102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_132_input
??
?
=__inference___backward_gpu_lstm_with_fallback_2601541_2601717
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :?????????????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :?????????????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :?????????????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :?????????????????? :????????? :????????? : :?????????????????? ::????????? :????????? ::??????????????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_5b321313-8403-4e71-af72-d2c3fadc4a8c*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2601716*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? ::6
4
_output_shapes"
 :?????????????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: ::6
4
_output_shapes"
 :?????????????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?S
?
(__forward_gpu_lstm_with_fallback_2603047

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_0966234e-db22-415a-ab0b-50e73eaefe5a*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2602872_2603048*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
0__inference_sequential_132_layer_call_fn_2603103
lstm_132_input
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: H
	unknown_3:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_132_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_132_layer_call_and_return_conditional_losses_26030902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_132_input
?A
?
!__inference_standard_lstm_2603294

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2603209*
condR
while_cond_2603208*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_6e82d0aa-25ad-43f6-83ea-ac8dfaa5b0c9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603610

inputs#
lstm_132_2603596:	?#
lstm_132_2603598:	 ?
lstm_132_2603600:	?#
dense_132_2603603: H
dense_132_2603605:H
identity??!dense_132/StatefulPartitionedCall? lstm_132/StatefulPartitionedCall?
 lstm_132/StatefulPartitionedCallStatefulPartitionedCallinputslstm_132_2603596lstm_132_2603598lstm_132_2603600*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26035672"
 lstm_132/StatefulPartitionedCall?
!dense_132/StatefulPartitionedCallStatefulPartitionedCall)lstm_132/StatefulPartitionedCall:output:0dense_132_2603603dense_132_2603605*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_132_layer_call_and_return_conditional_losses_26030682#
!dense_132/StatefulPartitionedCall?
reshape_132/PartitionedCallPartitionedCall*dense_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_132_layer_call_and_return_conditional_losses_26030872
reshape_132/PartitionedCall?
IdentityIdentity$reshape_132/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_132/StatefulPartitionedCall!^lstm_132/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_132/StatefulPartitionedCall!dense_132/StatefulPartitionedCall2D
 lstm_132/StatefulPartitionedCall lstm_132/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
*__inference_gpu_lstm_with_fallback_2601540

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_5b321313-8403-4e71-af72-d2c3fadc4a8c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_2605615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2605615___redundant_placeholder05
1while_while_cond_2605615___redundant_placeholder15
1while_while_cond_2605615___redundant_placeholder25
1while_while_cond_2605615___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?H
?
*__inference_gpu_lstm_with_fallback_2605795

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_ce453f1d-5984-4e23-85c3-4e814c2983ee*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
*__inference_lstm_132_layer_call_fn_2604636
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26012622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
=__inference___backward_gpu_lstm_with_fallback_2604926_2605102
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :?????????????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :?????????????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :?????????????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :?????????????????? :????????? :????????? : :?????????????????? ::????????? :????????? ::??????????????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_99b3c0f0-0372-4efd-954e-0f81b4e51840*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2605101*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? ::6
4
_output_shapes"
 :?????????????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: ::6
4
_output_shapes"
 :?????????????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?A
?
!__inference_standard_lstm_2605701

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2605616*
condR
while_cond_2605615*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_ce453f1d-5984-4e23-85c3-4e814c2983ee*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?A
?
!__inference_standard_lstm_2600535

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2600450*
condR
while_cond_2600449*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_481bd8c5-8d1b-4e48-aa80-1c2ff999b977*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?T
?
(__forward_gpu_lstm_with_fallback_2605101

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_99b3c0f0-0372-4efd-954e-0f81b4e51840*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2604926_2605102*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?,
?
while_body_2606051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?
?
%__inference_signature_wrapper_2603695
lstm_132_input
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2: H
	unknown_3:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_132_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_26008232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_132_input
??
?
=__inference___backward_gpu_lstm_with_fallback_2605796_2605972
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_ce453f1d-5984-4e23-85c3-4e814c2983ee*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2605971*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?A
?
!__inference_standard_lstm_2604831

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2604746*
condR
while_cond_2604745*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_99b3c0f0-0372-4efd-954e-0f81b4e51840*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2606409

inputs/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26061362
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
*__inference_gpu_lstm_with_fallback_2602871

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_0966234e-db22-415a-ab0b-50e73eaefe5a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?S
?
(__forward_gpu_lstm_with_fallback_2606406

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_356f41bf-acc7-4ca5-a479-4fce228e67a6*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2606231_2606407*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?A
?
!__inference_standard_lstm_2606136

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2606051*
condR
while_cond_2606050*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_356f41bf-acc7-4ca5-a479-4fce228e67a6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?H
?
*__inference_gpu_lstm_with_fallback_2605360

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_812ee006-6e89-4ccb-a6a7-28252a928646*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_2606050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2606050___redundant_placeholder05
1while_while_cond_2606050___redundant_placeholder15
1while_while_cond_2606050___redundant_placeholder25
1while_while_cond_2606050___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_2600903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2600903___redundant_placeholder05
1while_while_cond_2600903___redundant_placeholder15
1while_while_cond_2600903___redundant_placeholder25
1while_while_cond_2600903___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
I
-__inference_reshape_132_layer_call_fn_2606433

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_132_layer_call_and_return_conditional_losses_26030872
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????H:O K
'
_output_shapes
:?????????H
 
_user_specified_nameinputs
??
?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2604625

inputs8
%lstm_132_read_readvariableop_resource:	?:
'lstm_132_read_1_readvariableop_resource:	 ?6
'lstm_132_read_2_readvariableop_resource:	?:
(dense_132_matmul_readvariableop_resource: H7
)dense_132_biasadd_readvariableop_resource:H
identity?? dense_132/BiasAdd/ReadVariableOp?dense_132/MatMul/ReadVariableOp?lstm_132/Read/ReadVariableOp?lstm_132/Read_1/ReadVariableOp?lstm_132/Read_2/ReadVariableOpV
lstm_132/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_132/Shape?
lstm_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_132/strided_slice/stack?
lstm_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_132/strided_slice/stack_1?
lstm_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_132/strided_slice/stack_2?
lstm_132/strided_sliceStridedSlicelstm_132/Shape:output:0%lstm_132/strided_slice/stack:output:0'lstm_132/strided_slice/stack_1:output:0'lstm_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_132/strided_slicen
lstm_132/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros/mul/y?
lstm_132/zeros/mulMullstm_132/strided_slice:output:0lstm_132/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros/mulq
lstm_132/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_132/zeros/Less/y?
lstm_132/zeros/LessLesslstm_132/zeros/mul:z:0lstm_132/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros/Lesst
lstm_132/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros/packed/1?
lstm_132/zeros/packedPacklstm_132/strided_slice:output:0 lstm_132/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_132/zeros/packedq
lstm_132/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_132/zeros/Const?
lstm_132/zerosFilllstm_132/zeros/packed:output:0lstm_132/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_132/zerosr
lstm_132/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros_1/mul/y?
lstm_132/zeros_1/mulMullstm_132/strided_slice:output:0lstm_132/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros_1/mulu
lstm_132/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_132/zeros_1/Less/y?
lstm_132/zeros_1/LessLesslstm_132/zeros_1/mul:z:0 lstm_132/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_132/zeros_1/Lessx
lstm_132/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_132/zeros_1/packed/1?
lstm_132/zeros_1/packedPacklstm_132/strided_slice:output:0"lstm_132/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_132/zeros_1/packedu
lstm_132/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_132/zeros_1/Const?
lstm_132/zeros_1Fill lstm_132/zeros_1/packed:output:0lstm_132/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_132/zeros_1?
lstm_132/Read/ReadVariableOpReadVariableOp%lstm_132_read_readvariableop_resource*
_output_shapes
:	?*
dtype02
lstm_132/Read/ReadVariableOp?
lstm_132/IdentityIdentity$lstm_132/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_132/Identity?
lstm_132/Read_1/ReadVariableOpReadVariableOp'lstm_132_read_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_132/Read_1/ReadVariableOp?
lstm_132/Identity_1Identity&lstm_132/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2
lstm_132/Identity_1?
lstm_132/Read_2/ReadVariableOpReadVariableOp'lstm_132_read_2_readvariableop_resource*
_output_shapes	
:?*
dtype02 
lstm_132/Read_2/ReadVariableOp?
lstm_132/Identity_2Identity&lstm_132/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
lstm_132/Identity_2?
lstm_132/PartitionedCallPartitionedCallinputslstm_132/zeros:output:0lstm_132/zeros_1:output:0lstm_132/Identity:output:0lstm_132/Identity_1:output:0lstm_132/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26043372
lstm_132/PartitionedCall?
dense_132/MatMul/ReadVariableOpReadVariableOp(dense_132_matmul_readvariableop_resource*
_output_shapes

: H*
dtype02!
dense_132/MatMul/ReadVariableOp?
dense_132/MatMulMatMul!lstm_132/PartitionedCall:output:0'dense_132/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2
dense_132/MatMul?
 dense_132/BiasAdd/ReadVariableOpReadVariableOp)dense_132_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 dense_132/BiasAdd/ReadVariableOp?
dense_132/BiasAddBiasAdddense_132/MatMul:product:0(dense_132/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2
dense_132/BiasAddp
reshape_132/ShapeShapedense_132/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_132/Shape?
reshape_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_132/strided_slice/stack?
!reshape_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_1?
!reshape_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_2?
reshape_132/strided_sliceStridedSlicereshape_132/Shape:output:0(reshape_132/strided_slice/stack:output:0*reshape_132/strided_slice/stack_1:output:0*reshape_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_132/strided_slice|
reshape_132/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_132/Reshape/shape/1|
reshape_132/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_132/Reshape/shape/2?
reshape_132/Reshape/shapePack"reshape_132/strided_slice:output:0$reshape_132/Reshape/shape/1:output:0$reshape_132/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_132/Reshape/shape?
reshape_132/ReshapeReshapedense_132/BiasAdd:output:0"reshape_132/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_132/Reshape{
IdentityIdentityreshape_132/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_132/BiasAdd/ReadVariableOp ^dense_132/MatMul/ReadVariableOp^lstm_132/Read/ReadVariableOp^lstm_132/Read_1/ReadVariableOp^lstm_132/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_132/BiasAdd/ReadVariableOp dense_132/BiasAdd/ReadVariableOp2B
dense_132/MatMul/ReadVariableOpdense_132/MatMul/ReadVariableOp2<
lstm_132/Read/ReadVariableOplstm_132/Read/ReadVariableOp2@
lstm_132/Read_1/ReadVariableOplstm_132/Read_1/ReadVariableOp2@
lstm_132/Read_2/ReadVariableOplstm_132/Read_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2601719

inputs/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:????????? :?????????????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26014462
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605104
inputs_0/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:????????? :?????????????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26048312
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?,
?
while_body_2605616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?H
?
*__inference_gpu_lstm_with_fallback_2600629

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_481bd8c5-8d1b-4e48-aa80-1c2ff999b977*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?Q
?
"__inference__wrapped_model_2600823
lstm_132_inputG
4sequential_132_lstm_132_read_readvariableop_resource:	?I
6sequential_132_lstm_132_read_1_readvariableop_resource:	 ?E
6sequential_132_lstm_132_read_2_readvariableop_resource:	?I
7sequential_132_dense_132_matmul_readvariableop_resource: HF
8sequential_132_dense_132_biasadd_readvariableop_resource:H
identity??/sequential_132/dense_132/BiasAdd/ReadVariableOp?.sequential_132/dense_132/MatMul/ReadVariableOp?+sequential_132/lstm_132/Read/ReadVariableOp?-sequential_132/lstm_132/Read_1/ReadVariableOp?-sequential_132/lstm_132/Read_2/ReadVariableOp|
sequential_132/lstm_132/ShapeShapelstm_132_input*
T0*
_output_shapes
:2
sequential_132/lstm_132/Shape?
+sequential_132/lstm_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_132/lstm_132/strided_slice/stack?
-sequential_132/lstm_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_132/lstm_132/strided_slice/stack_1?
-sequential_132/lstm_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_132/lstm_132/strided_slice/stack_2?
%sequential_132/lstm_132/strided_sliceStridedSlice&sequential_132/lstm_132/Shape:output:04sequential_132/lstm_132/strided_slice/stack:output:06sequential_132/lstm_132/strided_slice/stack_1:output:06sequential_132/lstm_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_132/lstm_132/strided_slice?
#sequential_132/lstm_132/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_132/lstm_132/zeros/mul/y?
!sequential_132/lstm_132/zeros/mulMul.sequential_132/lstm_132/strided_slice:output:0,sequential_132/lstm_132/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_132/lstm_132/zeros/mul?
$sequential_132/lstm_132/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_132/lstm_132/zeros/Less/y?
"sequential_132/lstm_132/zeros/LessLess%sequential_132/lstm_132/zeros/mul:z:0-sequential_132/lstm_132/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_132/lstm_132/zeros/Less?
&sequential_132/lstm_132/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_132/lstm_132/zeros/packed/1?
$sequential_132/lstm_132/zeros/packedPack.sequential_132/lstm_132/strided_slice:output:0/sequential_132/lstm_132/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_132/lstm_132/zeros/packed?
#sequential_132/lstm_132/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_132/lstm_132/zeros/Const?
sequential_132/lstm_132/zerosFill-sequential_132/lstm_132/zeros/packed:output:0,sequential_132/lstm_132/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_132/lstm_132/zeros?
%sequential_132/lstm_132/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_132/lstm_132/zeros_1/mul/y?
#sequential_132/lstm_132/zeros_1/mulMul.sequential_132/lstm_132/strided_slice:output:0.sequential_132/lstm_132/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_132/lstm_132/zeros_1/mul?
&sequential_132/lstm_132/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_132/lstm_132/zeros_1/Less/y?
$sequential_132/lstm_132/zeros_1/LessLess'sequential_132/lstm_132/zeros_1/mul:z:0/sequential_132/lstm_132/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_132/lstm_132/zeros_1/Less?
(sequential_132/lstm_132/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_132/lstm_132/zeros_1/packed/1?
&sequential_132/lstm_132/zeros_1/packedPack.sequential_132/lstm_132/strided_slice:output:01sequential_132/lstm_132/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_132/lstm_132/zeros_1/packed?
%sequential_132/lstm_132/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_132/lstm_132/zeros_1/Const?
sequential_132/lstm_132/zeros_1Fill/sequential_132/lstm_132/zeros_1/packed:output:0.sequential_132/lstm_132/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
sequential_132/lstm_132/zeros_1?
+sequential_132/lstm_132/Read/ReadVariableOpReadVariableOp4sequential_132_lstm_132_read_readvariableop_resource*
_output_shapes
:	?*
dtype02-
+sequential_132/lstm_132/Read/ReadVariableOp?
 sequential_132/lstm_132/IdentityIdentity3sequential_132/lstm_132/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 sequential_132/lstm_132/Identity?
-sequential_132/lstm_132/Read_1/ReadVariableOpReadVariableOp6sequential_132_lstm_132_read_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02/
-sequential_132/lstm_132/Read_1/ReadVariableOp?
"sequential_132/lstm_132/Identity_1Identity5sequential_132/lstm_132/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"sequential_132/lstm_132/Identity_1?
-sequential_132/lstm_132/Read_2/ReadVariableOpReadVariableOp6sequential_132_lstm_132_read_2_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_132/lstm_132/Read_2/ReadVariableOp?
"sequential_132/lstm_132/Identity_2Identity5sequential_132/lstm_132/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2$
"sequential_132/lstm_132/Identity_2?
'sequential_132/lstm_132/PartitionedCallPartitionedCalllstm_132_input&sequential_132/lstm_132/zeros:output:0(sequential_132/lstm_132/zeros_1:output:0)sequential_132/lstm_132/Identity:output:0+sequential_132/lstm_132/Identity_1:output:0+sequential_132/lstm_132/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26005352)
'sequential_132/lstm_132/PartitionedCall?
.sequential_132/dense_132/MatMul/ReadVariableOpReadVariableOp7sequential_132_dense_132_matmul_readvariableop_resource*
_output_shapes

: H*
dtype020
.sequential_132/dense_132/MatMul/ReadVariableOp?
sequential_132/dense_132/MatMulMatMul0sequential_132/lstm_132/PartitionedCall:output:06sequential_132/dense_132/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2!
sequential_132/dense_132/MatMul?
/sequential_132/dense_132/BiasAdd/ReadVariableOpReadVariableOp8sequential_132_dense_132_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype021
/sequential_132/dense_132/BiasAdd/ReadVariableOp?
 sequential_132/dense_132/BiasAddBiasAdd)sequential_132/dense_132/MatMul:product:07sequential_132/dense_132/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2"
 sequential_132/dense_132/BiasAdd?
 sequential_132/reshape_132/ShapeShape)sequential_132/dense_132/BiasAdd:output:0*
T0*
_output_shapes
:2"
 sequential_132/reshape_132/Shape?
.sequential_132/reshape_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_132/reshape_132/strided_slice/stack?
0sequential_132/reshape_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_132/reshape_132/strided_slice/stack_1?
0sequential_132/reshape_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_132/reshape_132/strided_slice/stack_2?
(sequential_132/reshape_132/strided_sliceStridedSlice)sequential_132/reshape_132/Shape:output:07sequential_132/reshape_132/strided_slice/stack:output:09sequential_132/reshape_132/strided_slice/stack_1:output:09sequential_132/reshape_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_132/reshape_132/strided_slice?
*sequential_132/reshape_132/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_132/reshape_132/Reshape/shape/1?
*sequential_132/reshape_132/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_132/reshape_132/Reshape/shape/2?
(sequential_132/reshape_132/Reshape/shapePack1sequential_132/reshape_132/strided_slice:output:03sequential_132/reshape_132/Reshape/shape/1:output:03sequential_132/reshape_132/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2*
(sequential_132/reshape_132/Reshape/shape?
"sequential_132/reshape_132/ReshapeReshape)sequential_132/dense_132/BiasAdd:output:01sequential_132/reshape_132/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2$
"sequential_132/reshape_132/Reshape?
IdentityIdentity+sequential_132/reshape_132/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp0^sequential_132/dense_132/BiasAdd/ReadVariableOp/^sequential_132/dense_132/MatMul/ReadVariableOp,^sequential_132/lstm_132/Read/ReadVariableOp.^sequential_132/lstm_132/Read_1/ReadVariableOp.^sequential_132/lstm_132/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2b
/sequential_132/dense_132/BiasAdd/ReadVariableOp/sequential_132/dense_132/BiasAdd/ReadVariableOp2`
.sequential_132/dense_132/MatMul/ReadVariableOp.sequential_132/dense_132/MatMul/ReadVariableOp2Z
+sequential_132/lstm_132/Read/ReadVariableOp+sequential_132/lstm_132/Read/ReadVariableOp2^
-sequential_132/lstm_132/Read_1/ReadVariableOp-sequential_132/lstm_132/Read_1/ReadVariableOp2^
-sequential_132/lstm_132/Read_2/ReadVariableOp-sequential_132/lstm_132/Read_2/ReadVariableOp:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_132_input
?,
?
while_body_2603802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?S
?
(__forward_gpu_lstm_with_fallback_2603564

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_6e82d0aa-25ad-43f6-83ea-ac8dfaa5b0c9*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2603389_2603565*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603090

inputs#
lstm_132_2603051:	?#
lstm_132_2603053:	 ?
lstm_132_2603055:	?#
dense_132_2603069: H
dense_132_2603071:H
identity??!dense_132/StatefulPartitionedCall? lstm_132/StatefulPartitionedCall?
 lstm_132/StatefulPartitionedCallStatefulPartitionedCallinputslstm_132_2603051lstm_132_2603053lstm_132_2603055*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26030502"
 lstm_132/StatefulPartitionedCall?
!dense_132/StatefulPartitionedCallStatefulPartitionedCall)lstm_132/StatefulPartitionedCall:output:0dense_132_2603069dense_132_2603071*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_132_layer_call_and_return_conditional_losses_26030682#
!dense_132/StatefulPartitionedCall?
reshape_132/PartitionedCallPartitionedCall*dense_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_132_layer_call_and_return_conditional_losses_26030872
reshape_132/PartitionedCall?
IdentityIdentity$reshape_132/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_132/StatefulPartitionedCall!^lstm_132/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_132/StatefulPartitionedCall!dense_132/StatefulPartitionedCall2D
 lstm_132/StatefulPartitionedCall lstm_132/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2603050

inputs/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26027772
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
(__forward_gpu_lstm_with_fallback_2605971

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_ce453f1d-5984-4e23-85c3-4e814c2983ee*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_2605796_2605972*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2603567

inputs/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:????????? :????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26032942
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?
!__inference_standard_lstm_2601446

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:????????? 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_2601361*
condR
while_cond_2601360*b
output_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:????????? 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_5b321313-8403-4e71-af72-d2c3fadc4a8c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
*__inference_lstm_132_layer_call_fn_2604669

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_132_layer_call_and_return_conditional_losses_26035672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
while_cond_2603208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2603208___redundant_placeholder05
1while_while_cond_2603208___redundant_placeholder15
1while_while_cond_2603208___redundant_placeholder25
1while_while_cond_2603208___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_2601360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_2601360___redundant_placeholder05
1while_while_cond_2601360___redundant_placeholder15
1while_while_cond_2601360___redundant_placeholder25
1while_while_cond_2601360___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?;
?
 __inference__traced_save_2606541
file_prefix/
+savev2_dense_132_kernel_read_readvariableop-
)savev2_dense_132_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_132_lstm_cell_132_kernel_read_readvariableopF
Bsavev2_lstm_132_lstm_cell_132_recurrent_kernel_read_readvariableop:
6savev2_lstm_132_lstm_cell_132_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_132_kernel_m_read_readvariableop4
0savev2_adam_dense_132_bias_m_read_readvariableopC
?savev2_adam_lstm_132_lstm_cell_132_kernel_m_read_readvariableopM
Isavev2_adam_lstm_132_lstm_cell_132_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_132_lstm_cell_132_bias_m_read_readvariableop6
2savev2_adam_dense_132_kernel_v_read_readvariableop4
0savev2_adam_dense_132_bias_v_read_readvariableopC
?savev2_adam_lstm_132_lstm_cell_132_kernel_v_read_readvariableopM
Isavev2_adam_lstm_132_lstm_cell_132_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_132_lstm_cell_132_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_132_kernel_read_readvariableop)savev2_dense_132_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_132_lstm_cell_132_kernel_read_readvariableopBsavev2_lstm_132_lstm_cell_132_recurrent_kernel_read_readvariableop6savev2_lstm_132_lstm_cell_132_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_132_kernel_m_read_readvariableop0savev2_adam_dense_132_bias_m_read_readvariableop?savev2_adam_lstm_132_lstm_cell_132_kernel_m_read_readvariableopIsavev2_adam_lstm_132_lstm_cell_132_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_132_lstm_cell_132_bias_m_read_readvariableop2savev2_adam_dense_132_kernel_v_read_readvariableop0savev2_adam_dense_132_bias_v_read_readvariableop?savev2_adam_lstm_132_lstm_cell_132_kernel_v_read_readvariableopIsavev2_adam_lstm_132_lstm_cell_132_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_132_lstm_cell_132_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : H:H: : : : : :	?:	 ?:?: : : : : H:H:	?:	 ?:?: H:H:	?:	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: H: 

_output_shapes
:H:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: H: 

_output_shapes
:H:%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:$ 

_output_shapes

: H: 

_output_shapes
:H:%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: 
?#
?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2601262

inputs/
read_readvariableop_resource:	?1
read_1_readvariableop_resource:	 ?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:????????? :?????????????????? :????????? :????????? : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_standard_lstm_26009892
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_3?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
=__inference___backward_gpu_lstm_with_fallback_2603389_2603565
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_6e82d0aa-25ad-43f6-83ea-ac8dfaa5b0c9*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2603564*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
=__inference___backward_gpu_lstm_with_fallback_2606231_2606407
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:????????? 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:????????? 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:????????? *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:????????? 2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:????????? 2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:????????? 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*`
_output_shapesN
L:?????????:????????? :????????? :?%2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:????????? 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:`2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:`2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

: 2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

: 2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

: 2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ?2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ?2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:????????? :????????? :????????? :????????? : :????????? ::????????? :????????? ::?????????:????????? :????????? :?%::????????? :????????? : ::::::::: : : : *=
api_implements+)lstm_356f41bf-acc7-4ca5-a479-4fce228e67a6*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_2606406*
go_backwards( *

time_major( :- )
'
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :1-
+
_output_shapes
:????????? : 

_output_shapes
::1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :	

_output_shapes
::1
-
+
_output_shapes
:?????????:1-
+
_output_shapes
:????????? :1-
+
_output_shapes
:????????? :!

_output_shapes	
:?%: 

_output_shapes
::-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_2604746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?H
?
*__inference_gpu_lstm_with_fallback_2601083

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:?????????????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_7eddf9c0-1e17-448c-a78c-a49e1e0c520a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?H
?
*__inference_gpu_lstm_with_fallback_2604431

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

: 2
transpose_1c
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:`2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

: 2
transpose_2g
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

: 2
transpose_3g
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

: 2
transpose_4g
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:`2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?%2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:????????? :????????? :????????? :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:????????? *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:????????? 2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:????????? 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:????????? 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:????????? 2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:?????????:????????? :????????? :	?:	 ?:?*=
api_implements+)lstm_7cb7142a-a86d-4997-a037-e4aa7a1938b0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:QM

_output_shapes
:	 ?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?,
?
while_body_2604252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?
?

?
F__inference_dense_132_layer_call_and_return_conditional_losses_2603068

inputs0
matmul_readvariableop_resource: H-
biasadd_readvariableop_resource:H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: H*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????H2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?,
?
while_body_2603209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:????????? 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:????????? 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:????????? 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :????????? :????????? : : :	?:	 ?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	 ?:!


_output_shapes	
:?"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_132_input;
 serving_default_lstm_132_input:0?????????C
reshape_1324
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?g
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
V_default_save_signature
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?
regularization_losses
trainable_variables
	variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_ratemLmMmN mO!mPvQvRvS vT!vU"
	optimizer
 "
trackable_list_wrapper
C
0
 1
!2
3
4"
trackable_list_wrapper
C
0
 1
!2
3
4"
trackable_list_wrapper
?

"layers
regularization_losses
trainable_variables
	variables
#layer_metrics
$metrics
%layer_regularization_losses
&non_trainable_variables
W__call__
V_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
_serving_default"
signature_map
?
'
state_size

kernel
 recurrent_kernel
!bias
(regularization_losses
)trainable_variables
*	variables
+	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
?

,layers
regularization_losses
trainable_variables
	variables
-layer_metrics

.states
/metrics
0layer_regularization_losses
1non_trainable_variables
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
":  H2dense_132/kernel
:H2dense_132/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

2layers
regularization_losses
trainable_variables
	variables
3layer_metrics
4layer_regularization_losses
5metrics
6non_trainable_variables
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

7layers
regularization_losses
trainable_variables
	variables
8layer_metrics
9layer_regularization_losses
:metrics
;non_trainable_variables
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_132/lstm_cell_132/kernel
::8	 ?2'lstm_132/lstm_cell_132/recurrent_kernel
*:(?2lstm_132/lstm_cell_132/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
?

>layers
(regularization_losses
)trainable_variables
*	variables
?layer_metrics
@layer_regularization_losses
Ametrics
Bnon_trainable_variables
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
'

0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	Ctotal
	Dcount
E	variables
F	keras_api"
_tf_keras_metric
^
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
':% H2Adam/dense_132/kernel/m
!:H2Adam/dense_132/bias/m
5:3	?2$Adam/lstm_132/lstm_cell_132/kernel/m
?:=	 ?2.Adam/lstm_132/lstm_cell_132/recurrent_kernel/m
/:-?2"Adam/lstm_132/lstm_cell_132/bias/m
':% H2Adam/dense_132/kernel/v
!:H2Adam/dense_132/bias/v
5:3	?2$Adam/lstm_132/lstm_cell_132/kernel/v
?:=	 ?2.Adam/lstm_132/lstm_cell_132/recurrent_kernel/v
/:-?2"Adam/lstm_132/lstm_cell_132/bias/v
?B?
"__inference__wrapped_model_2600823lstm_132_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_sequential_132_layer_call_fn_2603103
0__inference_sequential_132_layer_call_fn_2603710
0__inference_sequential_132_layer_call_fn_2603725
0__inference_sequential_132_layer_call_fn_2603638?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2604175
K__inference_sequential_132_layer_call_and_return_conditional_losses_2604625
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603655
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603672?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_132_layer_call_fn_2604636
*__inference_lstm_132_layer_call_fn_2604647
*__inference_lstm_132_layer_call_fn_2604658
*__inference_lstm_132_layer_call_fn_2604669?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605104
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605539
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605974
E__inference_lstm_132_layer_call_and_return_conditional_losses_2606409?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dense_132_layer_call_fn_2606418?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_132_layer_call_and_return_conditional_losses_2606428?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_reshape_132_layer_call_fn_2606433?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_reshape_132_layer_call_and_return_conditional_losses_2606446?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2603695lstm_132_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_2600823? !;?8
1?.
,?)
lstm_132_input?????????
? "=?:
8
reshape_132)?&
reshape_132??????????
F__inference_dense_132_layer_call_and_return_conditional_losses_2606428\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????H
? ~
+__inference_dense_132_layer_call_fn_2606418O/?,
%?"
 ?
inputs????????? 
? "??????????H?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605104} !O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0????????? 
? ?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605539} !O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0????????? 
? ?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2605974m !??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0????????? 
? ?
E__inference_lstm_132_layer_call_and_return_conditional_losses_2606409m !??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0????????? 
? ?
*__inference_lstm_132_layer_call_fn_2604636p !O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "?????????? ?
*__inference_lstm_132_layer_call_fn_2604647p !O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "?????????? ?
*__inference_lstm_132_layer_call_fn_2604658` !??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
*__inference_lstm_132_layer_call_fn_2604669` !??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
H__inference_reshape_132_layer_call_and_return_conditional_losses_2606446\/?,
%?"
 ?
inputs?????????H
? ")?&
?
0?????????
? ?
-__inference_reshape_132_layer_call_fn_2606433O/?,
%?"
 ?
inputs?????????H
? "???????????
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603655w !C?@
9?6
,?)
lstm_132_input?????????
p 

 
? ")?&
?
0?????????
? ?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2603672w !C?@
9?6
,?)
lstm_132_input?????????
p

 
? ")?&
?
0?????????
? ?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2604175o !;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
K__inference_sequential_132_layer_call_and_return_conditional_losses_2604625o !;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
0__inference_sequential_132_layer_call_fn_2603103j !C?@
9?6
,?)
lstm_132_input?????????
p 

 
? "???????????
0__inference_sequential_132_layer_call_fn_2603638j !C?@
9?6
,?)
lstm_132_input?????????
p

 
? "???????????
0__inference_sequential_132_layer_call_fn_2603710b !;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_132_layer_call_fn_2603725b !;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2603695? !M?J
? 
C?@
>
lstm_132_input,?)
lstm_132_input?????????"=?:
8
reshape_132)?&
reshape_132?????????