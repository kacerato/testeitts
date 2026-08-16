.class synthetic Lorg/openjdk/tools/javac/code/TypeAnnotations$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ElementKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lorg/openjdk/source/tree/Tree$Kind;->values()[Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->TYPE_CAST:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v3, Lorg/openjdk/source/tree/Tree$Kind;->INSTANCE_OF:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v4, Lorg/openjdk/source/tree/Tree$Kind;->NEW_CLASS:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->CLASS:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->ENUM:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->INTERFACE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->METHOD:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->MEMBER_REFERENCE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->ARRAY_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->TYPE_PARAMETER:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->VARIABLE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->UNION_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->INTERSECTION_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x11

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->METHOD_INVOCATION:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x12

    aput v7, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x13

    aput v7, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->SUPER_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x14

    aput v7, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->MEMBER_SELECT:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x15

    aput v7, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    invoke-static {}, Lorg/openjdk/javax/lang/model/element/ElementKind;->values()[Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    :try_start_15
    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v5, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    invoke-static {}, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->values()[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    :try_start_1a
    sget-object v4, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    sget-object v4, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    invoke-static {}, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->values()[Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType:[I

    :try_start_1c
    sget-object v4, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType:[I

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->BOTH:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method
