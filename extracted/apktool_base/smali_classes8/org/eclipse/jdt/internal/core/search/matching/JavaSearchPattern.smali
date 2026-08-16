.class public Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.super Lorg/eclipse/jdt/core/search/SearchPattern;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# static fields
.field static final HAS_TYPE_ARGUMENTS:I = 0x1

.field public static final MATCH_COMPATIBILITY_MASK:I = 0x70

.field public static final MATCH_MODE_MASK:I = 0x187


# instance fields
.field public fineGrain:I

.field private flags:I

.field isCamelCase:Z

.field isCaseSensitive:Z

.field matchCompatibility:I

.field matchMode:I

.field private typeArguments:[[[C

.field typeSignatures:[[C


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/core/search/SearchPattern;-><init>(I)V

    const/4 p2, 0x0

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->flags:I

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result p1

    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    and-int/lit16 v0, p1, 0x180

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    and-int/lit8 p2, p1, 0x70

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    and-int/lit16 p1, p1, 0x187

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchMode:I

    return-void
.end method

.method public static getFineGrainFlagString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "none"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    shl-int v3, v1, v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, " | "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "METHOD_REFERENCE_EXPRESSION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "IMPLICIT_THIS_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "THIS_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "QUALIFIED_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_4
    const-string v3, "SUPER_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_5
    const-string v3, "WILDCARD_BOUND_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_6
    const-string v3, "TYPE_VARIABLE_BOUND_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_7
    const-string v3, "TYPE_ARGUMENT_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_8
    const-string v3, "ANNOTATION_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_9
    const-string v3, "IMPORT_DECLARATION_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_a
    const-string v3, "RETURN_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_b
    const-string v3, "CLASS_INSTANCE_CREATION_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_c
    const-string v3, "CATCH_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_d
    const-string v3, "CAST_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_e
    const-string v3, "THROWS_CLAUSE_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_f
    const-string v3, "SUPERTYPE_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_10
    const-string v3, "PARAMETER_DECLARATION_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_11
    const-string v3, "LOCAL_VARIABLE_DECLARATION_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_12
    const-string v3, "FIELD_DECLARATION_TYPE_REFERENCE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_12
        0x80 -> :sswitch_11
        0x100 -> :sswitch_10
        0x200 -> :sswitch_f
        0x400 -> :sswitch_e
        0x800 -> :sswitch_d
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_a
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_8
        0x20000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x1000000 -> :sswitch_4
        0x2000000 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_1
        0x10000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public extractMethodArguments(Lorg/eclipse/jdt/core/IMethod;)[[C
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->isResolved()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/core/BindingKey;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/BindingKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/BindingKey;->isParameterizedMethod()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/BindingKey;->getTypeArguments()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_1

    new-array v3, v0, [[C

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v3

    :cond_0
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    const/16 v5, 0x2e

    invoke-static {v1, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([C[CC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    new-array v3, v0, [[C

    move v4, v2

    :goto_1
    if-lt v4, v0, :cond_3

    return-object v3

    :cond_3
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    return-object v1

    nop

    :array_0
    .array-data 2
        0x24s
        0x2fs
    .end array-data
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMatchMode()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchMode:I

    return v0
.end method

.method public final getTypeArguments()[[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeArguments:[[[C

    return-object v0
.end method

.method public final hasSignatures()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTypeArguments()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTypeParameters()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasSignatures()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCamelCase()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    return v0
.end method

.method public final isCaseSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    return v0
.end method

.method public final isEquivalentMatch()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isErasureMatch()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public matchDifferentTypeSuffixes(II)Z
    .locals 8

    const/16 v0, 0xb

    const/16 v1, 0x41

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_9

    const/16 v4, 0x9

    const/16 v5, 0xa

    const/16 v6, 0x43

    if-eq p1, v6, :cond_7

    const/16 v7, 0x45

    if-eq p1, v7, :cond_5

    const/16 v4, 0x49

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    return v3

    :pswitch_0
    if-eq p2, v1, :cond_0

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    return v3

    :pswitch_1
    if-eq p2, v6, :cond_1

    if-eq p2, v4, :cond_1

    return v2

    :cond_1
    return v3

    :pswitch_2
    if-eq p2, v6, :cond_2

    if-eq p2, v7, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    if-eq p2, v5, :cond_4

    if-eq p2, v0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-ne p2, v4, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    if-eq p2, v4, :cond_8

    if-eq p2, v5, :cond_8

    return v2

    :cond_8
    return v3

    :cond_9
    if-ne p2, v0, :cond_a

    return v3

    :cond_a
    return v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasSignatures()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "signature:\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v0, "\", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "camel case same part count match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v0, "camel case match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "regexp match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v0, "pattern match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    const-string v0, "prefix match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    const-string v0, "exact match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "case sensitive, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v0, "case insensitive, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const-string v0, "generic full match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    const-string v0, "generic erasure match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const-string v0, "generic equivalent match, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const-string v0, "fine grain: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getFineGrainFlagString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public final setTypeArguments([[[C)V
    .locals 2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeArguments:[[[C

    if-eqz p1, :cond_2

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeArguments:[[[C

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->flags:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public storeTypeSignaturesAndArguments(Lorg/eclipse/jdt/core/IType;)V
    .locals 10

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/core/BindingKey;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/BindingKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/BindingKey;->isParameterizedType()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/BindingKey;->isRawType()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/BindingKey;->toSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0xa

    new-array v1, v0, [[[C

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    array-length v6, v1

    if-le v3, v6, :cond_4

    array-length v6, v1

    add-int/2addr v6, v0

    new-array v6, v6, [[[C

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v6

    :cond_4
    move-object v6, p1

    check-cast v6, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IType;->getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object v6

    if-eqz v6, :cond_6

    array-length v7, v6

    if-lez v7, :cond_6

    new-array v4, v7, [[C

    aput-object v4, v1, v3

    move v4, v2

    :goto_1
    if-lt v4, v7, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    aget-object v8, v1, v3

    aget-object v9, v6, v4

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_7
    :goto_3
    if-eqz v4, :cond_9

    add-int/2addr v3, v5

    array-length p1, v1

    if-ge v3, p1, :cond_8

    new-array p1, v3, [[[C

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_8
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    :cond_9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
