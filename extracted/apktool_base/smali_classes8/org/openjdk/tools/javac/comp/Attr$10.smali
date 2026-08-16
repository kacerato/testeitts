.class synthetic Lorg/openjdk/tools/javac/comp/Attr$10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TypeTag:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    invoke-static {}, Lorg/openjdk/tools/javac/code/TypeTag;->values()[Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->PACKAGE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->values()[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    :try_start_6
    sget-object v7, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->values()[Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    :try_start_7
    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MISSING_ENCL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTHS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->HIDDEN:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/4 v6, 0x7

    :try_start_d
    sget-object v7, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->STATICERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v7, 0x8

    :try_start_e
    sget-object v8, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v8, 0x9

    :try_start_f
    sget-object v9, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v9, 0xa

    :try_start_10
    sget-object v10, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v10, 0xb

    :try_start_11
    sget-object v11, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v12, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v11, 0xc

    :try_start_12
    sget-object v12, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v13, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    invoke-static {}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->values()[Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    :try_start_13
    sget-object v13, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LITERAL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v12, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v1, v12
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONDEXPR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LABELLED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DOLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->WHILELOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->FORLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->FOREACHLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SWITCH:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    return-void
.end method
