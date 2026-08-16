.class synthetic Lorg/openjdk/tools/javac/jvm/ClassWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TargetType:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TypeTag:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    invoke-static {}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->values()[Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->values()[Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    :try_start_3
    sget-object v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->CLDC:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    sget-object v4, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lorg/openjdk/tools/javac/code/TargetType;->values()[Lorg/openjdk/tools/javac/code/TargetType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    :try_start_5
    sget-object v4, Lorg/openjdk/tools/javac/code/TargetType;->INSTANCEOF:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v4, Lorg/openjdk/tools/javac/code/TargetType;->NEW:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v4, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v3, 0x4

    :try_start_8
    sget-object v4, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v5, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v4, 0x5

    :try_start_9
    sget-object v5, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v6, Lorg/openjdk/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v5, 0x6

    :try_start_a
    sget-object v6, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v6, 0x7

    :try_start_b
    sget-object v7, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v8, Lorg/openjdk/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v7, 0x8

    :try_start_c
    sget-object v8, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v9, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_RECEIVER:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v8, 0x9

    :try_start_d
    sget-object v9, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v10, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v9, 0xa

    :try_start_e
    sget-object v10, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v11, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v10, 0xb

    :try_start_f
    sget-object v11, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v12, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v11, 0xc

    :try_start_10
    sget-object v12, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v13, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v12, 0xd

    :try_start_11
    sget-object v13, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v14, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_EXTENDS:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v13, 0xe

    :try_start_12
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->THROWS:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0xf

    aput v16, v14, v15
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->CAST:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x10

    aput v16, v14, v15
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x11

    aput v16, v14, v15
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x12

    aput v16, v14, v15
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x13

    aput v16, v14, v15
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x14

    aput v16, v14, v15
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_RETURN:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x15

    aput v16, v14, v15
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->FIELD:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x16

    aput v16, v14, v15
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x17

    aput v16, v14, v15
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    invoke-static {}, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->values()[Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v14

    array-length v14, v14

    new-array v14, v14, [I

    sput-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    :try_start_1c
    sget-object v15, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->SOURCE:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v1, v14, v15
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->CLASS:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v0, v14, v15
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    sget-object v15, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->RUNTIME:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v2, v14, v15
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    invoke-static {}, Lorg/openjdk/tools/javac/code/TypeTag;->values()[Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v14

    array-length v14, v14

    new-array v14, v14, [I

    sput-object v14, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    :try_start_1f
    sget-object v15, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_THIS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v1, v14, v15
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v14, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_OBJECT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v0, v1, v14
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method
