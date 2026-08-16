.class public abstract Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected has1_5Compliance:Z

.field private memberTypeSeparator:C

.field namePos:I

.field protected problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;C)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->originalComplianceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    iput-char p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->memberTypeSeparator:C

    return-void
.end method

.method private addIdentifiers(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    sub-int p4, p3, p2

    new-array p4, p4, [C

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->extractIdentifiers(Ljava/lang/String;III)[[C

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private decodeType(Ljava/lang/String;III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v12, v0

    move-object v13, v2

    move v4, v10

    move v0, v11

    move v15, v0

    :goto_0
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    const/4 v14, 0x2

    const/16 v16, 0x20

    move/from16 v5, p2

    if-lt v2, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_28

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_19

    const/16 v3, 0x46

    if-eq v2, v3, :cond_17

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_16

    const/16 v3, 0x51

    if-eq v2, v3, :cond_16

    const/16 v3, 0x56

    if-eq v2, v3, :cond_15

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_14

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_13

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_12

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_11

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_19

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_e

    const/16 v3, 0x49

    if-eq v2, v3, :cond_c

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_a

    const/16 v3, 0x53

    if-eq v2, v3, :cond_8

    const/16 v3, 0x54

    if-eq v2, v3, :cond_16

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_6

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    :cond_1
    move v5, v15

    goto/16 :goto_a

    :pswitch_0
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :pswitch_1
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :pswitch_2
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    :cond_6
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_8
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_9
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_a
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_b

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_b
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_c
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_d

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_d
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_e
    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/lit8 v17, v3, -0x1

    iget-boolean v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-nez v1, :cond_f

    move/from16 v1, v17

    goto/16 :goto_2

    :cond_f
    if-nez v13, :cond_10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->addIdentifiers(Ljava/lang/String;IIILjava/util/ArrayList;)V

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    invoke-direct/range {p0 .. p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeTypeArguments(Ljava/lang/String;III)[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v10

    move v0, v11

    move/from16 v1, v17

    goto/16 :goto_b

    :cond_11
    move v5, v15

    goto/16 :goto_9

    :cond_12
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {v0, v14}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    invoke-direct/range {p0 .. p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType(Ljava/lang/String;III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    :cond_13
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    invoke-direct/range {p0 .. p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType(Ljava/lang/String;III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    :cond_14
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    :cond_15
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_16
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/lit8 v12, v0, 0x1

    :goto_1
    move v0, v10

    goto/16 :goto_b

    :cond_17
    if-nez v0, :cond_1

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-nez v15, :cond_18

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v0

    :cond_18
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_19
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/lit8 v2, v1, -0x1

    add-int/2addr v1, v10

    iput v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    move v1, v2

    :goto_2
    if-nez v13, :cond_1e

    if-ne v4, v10, :cond_1b

    if-nez v15, :cond_1a

    sub-int v0, v1, v12

    add-int/2addr v0, v10

    new-array v0, v0, [C

    add-int/2addr v1, v10

    invoke-virtual {v7, v12, v1, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v1

    :cond_1a
    sub-int v0, v1, v12

    add-int/2addr v0, v10

    new-array v0, v0, [C

    add-int/2addr v1, v10

    invoke-virtual {v7, v12, v1, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    int-to-long v2, v8

    shl-long v2, v2, v16

    int-to-long v4, v9

    add-long/2addr v2, v4

    invoke-direct {v1, v0, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v1

    :cond_1b
    new-array v2, v4, [J

    int-to-long v13, v8

    shl-long v13, v13, v16

    int-to-long v8, v9

    add-long v17, v13, v8

    :goto_3
    if-lt v11, v4, :cond_1d

    invoke-direct {v6, v7, v12, v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->extractIdentifiers(Ljava/lang/String;III)[[C

    move-result-object v0

    if-nez v15, :cond_1c

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    return-object v1

    :cond_1c
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    invoke-direct {v1, v0, v15, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    return-object v1

    :cond_1d
    aput-wide v17, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1e
    if-eqz v0, :cond_1f

    add-int/lit8 v3, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->addIdentifiers(Ljava/lang/String;IIILjava/util/ArrayList;)V

    :cond_1f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v14, :cond_20

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [C

    if-eqz v1, :cond_20

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    check-cast v0, [C

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    int-to-long v3, v8

    shl-long v3, v3, v16

    int-to-long v7, v9

    add-long v18, v3, v7

    move-object v14, v1

    move v5, v15

    move-object v15, v0

    move-object/from16 v16, v2

    move/from16 v17, v5

    invoke-direct/range {v14 .. v19}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IJ)V

    return-object v1

    :cond_20
    move v5, v15

    move v0, v11

    move v1, v0

    :goto_4
    if-lt v0, v2, :cond_25

    new-array v3, v1, [[C

    new-array v4, v1, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move v0, v11

    move v7, v0

    :goto_5
    if-lt v0, v2, :cond_22

    new-array v10, v1, [J

    int-to-long v7, v8

    shl-long v7, v7, v16

    int-to-long v12, v9

    add-long v14, v7, v12

    :goto_6
    if-lt v11, v1, :cond_21

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    invoke-direct {v0, v3, v4, v5, v10}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    return-object v0

    :cond_21
    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_22
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v10, [[C

    if-eqz v12, :cond_23

    check-cast v10, [[C

    array-length v12, v10

    invoke-static {v10, v11, v3, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v12

    goto :goto_7

    :cond_23
    instance-of v12, v10, [C

    if-eqz v12, :cond_24

    add-int/lit8 v12, v7, 0x1

    check-cast v10, [C

    aput-object v10, v3, v7

    move v7, v12

    goto :goto_7

    :cond_24
    add-int/lit8 v12, v7, -0x1

    check-cast v10, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v10, v4, v12

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, [[C

    if-eqz v4, :cond_26

    check-cast v3, [[C

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_8

    :cond_26
    instance-of v3, v3, [C

    if-eqz v3, :cond_27

    add-int/lit8 v1, v1, 0x1

    :cond_27
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_28
    move v5, v15

    iget-char v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->memberTypeSeparator:C

    if-eq v2, v3, :cond_29

    goto :goto_a

    :cond_29
    :goto_9
    if-nez v0, :cond_2a

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/lit8 v12, v0, 0x1

    move v15, v5

    goto/16 :goto_1

    :cond_2a
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-le v2, v12, :cond_2b

    add-int/lit8 v4, v4, 0x1

    :cond_2b
    :goto_a
    move v15, v5

    :goto_b
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v2, v10

    iput v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeType2([CIIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v9, v0

    move v8, v5

    move-object v12, v7

    const/4 v11, -0x1

    move v7, v2

    :goto_0
    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    move/from16 v13, p2

    if-lt v0, v13, :cond_0

    goto/16 :goto_4

    :cond_0
    aget-char v14, v1, v0

    const/16 v15, 0x2c

    if-eq v14, v15, :cond_14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_11

    const/16 v6, 0x3c

    const/4 v15, 0x2

    if-eq v14, v6, :cond_b

    const/16 v6, 0x5b

    if-eq v14, v6, :cond_9

    const/16 v6, 0x3e

    if-eq v14, v6, :cond_14

    const/16 v6, 0x3f

    if-eq v14, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/2addr v0, v2

    iput v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    :goto_1
    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    aget-char v6, v1, v0

    const/16 v7, 0x20

    if-eq v6, v7, :cond_8

    const/16 v0, 0x65

    if-eq v6, v0, :cond_5

    const/16 v0, 0x73

    if-eq v6, v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    array-length v0, v0

    sub-int/2addr v0, v2

    :cond_3
    if-lt v2, v0, :cond_4

    iget v2, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v2, v0

    iput v2, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {v0, v15}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType2([CIIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    :cond_4
    iget v6, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v6, v2

    aget-char v6, v1, v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    add-int/lit8 v2, v2, 0x1

    aget-char v7, v7, v2

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    array-length v0, v0

    add-int/lit8 v6, v0, -0x1

    move v0, v2

    :cond_6
    if-lt v0, v6, :cond_7

    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v6

    iput v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType2([CIIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    :cond_7
    iget v7, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v7, v0

    aget-char v7, v1, v7

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v8, v8, v0

    if-eq v7, v8, :cond_6

    :goto_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    goto :goto_1

    :cond_9
    if-nez v8, :cond_a

    if-gez v11, :cond_a

    add-int/lit8 v11, v0, -0x1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    iget-boolean v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-nez v0, :cond_c

    if-eqz p5, :cond_d

    :cond_c
    if-nez v12, :cond_d

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    :cond_d
    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/lit8 v11, v0, -0x1

    iget-boolean v6, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-nez v6, :cond_e

    if-eqz p5, :cond_f

    :cond_e
    const/16 v6, 0x2e

    invoke-static {v6, v1, v9, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v2

    iput v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeTypeArguments([CIIIZ)[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iget-boolean v6, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-nez v6, :cond_10

    if-eqz p5, :cond_13

    :cond_10
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v5

    const/4 v9, -0x1

    const/4 v11, -0x1

    goto :goto_3

    :cond_11
    if-gez v9, :cond_12

    add-int/lit8 v9, v0, 0x1

    :cond_12
    add-int/lit8 v7, v7, 0x1

    :cond_13
    :goto_3
    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    add-int/2addr v0, v2

    iput v0, v10, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    goto/16 :goto_0

    :cond_14
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v11

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType3([CIIIIIIILjava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method private decodeType3([CIIIIIIILjava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p9

    const/4 v7, 0x1

    move-object/from16 v8, p0

    if-gez p8, :cond_0

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    sub-int/2addr v9, v7

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    const/16 v10, 0x2e

    const/16 v11, 0x20

    const/4 v12, 0x0

    if-nez v6, :cond_7

    if-ne v3, v7, :cond_4

    if-nez v4, :cond_3

    if-nez v5, :cond_1

    if-ltz v9, :cond_2

    :cond_1
    sub-int/2addr v9, v5

    add-int/2addr v9, v7

    new-array v3, v9, [C

    invoke-static {v0, v5, v3, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_2
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    int-to-long v4, v1

    shl-long/2addr v4, v11

    int-to-long v1, v2

    add-long/2addr v4, v1

    invoke-direct {v3, v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object v3

    :cond_3
    sub-int/2addr v9, v5

    add-int/2addr v9, v7

    new-array v3, v9, [C

    invoke-static {v0, v5, v3, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    int-to-long v5, v1

    shl-long/2addr v5, v11

    int-to-long v1, v2

    add-long/2addr v5, v1

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    return-object v0

    :cond_4
    new-array v13, v3, [J

    int-to-long v14, v1

    shl-long/2addr v14, v11

    int-to-long v1, v2

    add-long/2addr v14, v1

    :goto_1
    if-lt v12, v3, :cond_6

    add-int/2addr v9, v7

    invoke-static {v10, v0, v5, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v0

    if-nez v4, :cond_5

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-direct {v1, v0, v13}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    return-object v1

    :cond_5
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    invoke-direct {v1, v0, v4, v13}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    return-object v1

    :cond_6
    aput-wide v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    if-lez v5, :cond_8

    move/from16 v3, p2

    if-ge v5, v3, :cond_8

    add-int/2addr v9, v7

    invoke-static {v10, v0, v5, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    array-length v5, v3

    if-ne v5, v7, :cond_9

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    aget-object v3, v3, v12

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    int-to-long v0, v1

    shl-long/2addr v0, v11

    int-to-long v6, v2

    add-long/2addr v6, v0

    move-object v0, v9

    move-object v1, v3

    move-object v2, v5

    move/from16 v3, p6

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IJ)V

    return-object v9

    :cond_9
    move v3, v12

    move v5, v3

    :goto_2
    if-lt v3, v0, :cond_d

    new-array v7, v5, [[C

    new-array v9, v5, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move v3, v12

    move v10, v3

    :goto_3
    if-lt v3, v0, :cond_b

    new-array v13, v5, [J

    int-to-long v0, v1

    shl-long/2addr v0, v11

    int-to-long v2, v2

    add-long v14, v0, v2

    :goto_4
    if-lt v12, v5, :cond_a

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    invoke-direct {v0, v7, v9, v4, v13}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    return-object v0

    :cond_a
    aput-wide v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, [[C

    if-eqz v14, :cond_c

    check-cast v13, [[C

    array-length v14, v13

    invoke-static {v13, v12, v7, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v14

    goto :goto_5

    :cond_c
    add-int/lit8 v14, v10, -0x1

    check-cast v13, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v13, v9, v14

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, [[C

    if-eqz v9, :cond_e

    check-cast v7, [[C

    array-length v7, v7

    add-int/2addr v5, v7

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private decodeTypeArguments(Ljava/lang/String;III)[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 4

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 11
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-lt v2, p2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType(Ljava/lang/String;III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-lt v2, p2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 16
    :goto_0
    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private decodeTypeArguments([CIIIZ)[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-lt v2, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType2([CIIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    if-lt v2, p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    aget-char v3, p1, v2

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2

    .line 7
    :goto_1
    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 9
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    goto :goto_0
.end method

.method private extractIdentifiers(Ljava/lang/String;III)[[C
    .locals 5

    new-array p4, p4, [[C

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_0
    if-lt p2, p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [C

    aput-object p2, p4, v2

    invoke-virtual {p1, v1, p3, p2, v0}, Ljava/lang/String;->getChars(II[CI)V

    return-object p4

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->memberTypeSeparator:C

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v2, 0x1

    sub-int v4, p2, v1

    new-array v4, v4, [C

    aput-object v4, p4, v2

    invoke-virtual {p1, v1, p2, v4, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v1, p2, 0x1

    move p2, v1

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public createImportReference([Ljava/lang/String;IIZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 5

    array-length v0, p1

    new-array v1, v0, [J

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    int-to-long p2, p3

    add-long/2addr v2, p2

    new-array p2, v0, [[C

    const/4 p3, 0x0

    :goto_0
    if-lt p3, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-direct {p1, p2, v1, p4, p5}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    return-object p1

    :cond_0
    aget-object v4, p1, p3

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, p2, p3

    aput-wide v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public createTypeParameter([C[[CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;-><init>()V

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iput p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_0
    if-lt v1, p1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    add-int/lit8 v4, v1, -0x1

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public createTypeReference(Ljava/lang/String;II)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    .line 9
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType(Ljava/lang/String;III)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1
.end method

.method public createTypeReference([CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 6

    .line 4
    array-length v2, p1

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType2([CIIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1
.end method

.method public createTypeReference([CIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 6

    .line 1
    array-length v2, p1

    const/4 p4, 0x0

    .line 2
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->namePos:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->decodeType2([CIIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1
.end method
