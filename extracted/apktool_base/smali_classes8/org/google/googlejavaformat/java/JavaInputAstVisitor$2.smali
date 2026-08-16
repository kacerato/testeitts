.class synthetic Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

.field static final synthetic $SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode:[I

.field static final synthetic $SwitchMap$org$openjdk$source$tree$Tree$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lorg/openjdk/javax/lang/model/type/TypeKind;->values()[Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/javax/lang/model/type/TypeKind;->BOOLEAN:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->BYTE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->SHORT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v5, Lorg/openjdk/javax/lang/model/type/TypeKind;->INT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v6, Lorg/openjdk/javax/lang/model/type/TypeKind;->LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v7, Lorg/openjdk/javax/lang/model/type/TypeKind;->CHAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v8, Lorg/openjdk/javax/lang/model/type/TypeKind;->FLOAT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v9, Lorg/openjdk/javax/lang/model/type/TypeKind;->DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    sget-object v10, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    invoke-static {}, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->values()[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode:[I

    :try_start_9
    sget-object v10, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode:[I

    sget-object v10, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lorg/openjdk/source/tree/Tree$Kind;->values()[Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    :try_start_b
    sget-object v10, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v9, Lorg/openjdk/source/tree/Tree$Kind;->CLASS:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->INTERFACE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->ENUM:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->UNARY_MINUS:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->UNARY_PLUS:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->BLOCK:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->MEMBER_SELECT:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->METHOD_INVOCATION:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->IDENTIFIER:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->STRING_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->PLUS:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method
