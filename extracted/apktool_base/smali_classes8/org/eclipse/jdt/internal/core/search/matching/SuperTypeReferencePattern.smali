.class public Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# static fields
.field public static final ALL_SUPER_TYPES:I = 0x0

.field protected static CATEGORIES:[[C = null

.field public static final ONLY_SUPER_CLASSES:I = 0x2

.field public static final ONLY_SUPER_INTERFACES:I = 0x1


# instance fields
.field public classOrInterface:C

.field public enclosingTypeName:[C

.field public modifiers:I

.field public pkgName:[C

.field public simpleName:[C

.field public superClassOrInterface:C

.field public superQualification:[C

.field protected superRefKind:I

.field public superSimpleName:[C

.field public typeParameterSignatures:[[C

.field public typeSuffix:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->CATEGORIES:[[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    .line 9
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    return-void
.end method

.method public constructor <init>([C[CICI)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;-><init>([C[CII)V

    .line 7
    iput-char p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->typeSuffix:C

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8
    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method public constructor <init>([C[CII)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;-><init>(I)V

    .line 2
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p4, :cond_0

    move-object p4, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    .line 3
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p4, :cond_2

    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :cond_2
    :goto_1
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 4
    :goto_2
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    .line 5
    iput p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    return-void
.end method

.method public static createIndexKey(I[C[C[[C[[CC[CC)[C
    .locals 15

    move-object/from16 v0, p4

    if-nez p6, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->OBJECT:[C

    goto :goto_0

    :cond_0
    move-object/from16 v1, p6

    :goto_0
    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_1

    array-length v5, v1

    array-length v6, v3

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    new-array v6, v5, [C

    invoke-static {v1, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/16 v1, 0x24

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v5

    if-eq v5, v3, :cond_4

    if-nez v6, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    array-length v7, v6

    add-int/lit8 v7, v7, 0x1

    :goto_2
    array-length v8, v3

    array-length v9, v5

    sub-int/2addr v8, v9

    add-int v9, v7, v8

    new-array v9, v9, [C

    if-eqz v6, :cond_3

    add-int/lit8 v10, v7, -0x1

    invoke-static {v6, v4, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char v2, v9, v10

    :cond_3
    invoke-static {v3, v4, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    move-object v6, v9

    :cond_4
    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v2

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    move-object/from16 v5, p1

    if-eqz v6, :cond_5

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v5, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C

    :cond_5
    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-eqz v0, :cond_8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    array-length v9, v0

    move v7, v4

    move v10, v7

    :goto_3
    if-lt v7, v9, :cond_6

    new-array v7, v10, [C

    invoke-virtual {v8, v4, v10, v7, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_4

    :cond_6
    aget-object v11, v0, v7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    array-length v11, v11

    add-int/2addr v10, v11

    add-int/lit8 v11, v9, -0x1

    if-eq v7, v11, :cond_7

    const/16 v11, 0x2c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move v10, v4

    :goto_4
    if-nez v3, :cond_9

    move v0, v4

    goto :goto_5

    :cond_9
    array-length v0, v3

    :goto_5
    if-nez v6, :cond_a

    move v8, v4

    goto :goto_6

    :cond_a
    array-length v8, v6

    :goto_6
    if-nez v2, :cond_b

    move v9, v4

    goto :goto_7

    :cond_b
    array-length v9, v2

    :goto_7
    if-nez v1, :cond_c

    move v11, v4

    goto :goto_8

    :cond_c
    array-length v11, v1

    :goto_8
    if-nez v5, :cond_d

    move v12, v4

    goto :goto_9

    :cond_d
    array-length v12, v5

    :goto_9
    add-int v13, v0, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v11

    add-int/2addr v13, v10

    add-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x9

    new-array v13, v13, [C

    if-lez v0, :cond_e

    invoke-static {v3, v4, v13, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_e
    move v0, v4

    :goto_a
    add-int/lit8 v3, v0, 0x1

    const/16 v14, 0x2f

    aput-char v14, v13, v0

    if-lez v8, :cond_f

    invoke-static {v6, v4, v13, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v8

    :cond_f
    add-int/lit8 v0, v3, 0x1

    aput-char v14, v13, v3

    if-lez v9, :cond_10

    invoke-static {v2, v4, v13, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v9

    :cond_10
    add-int/lit8 v2, v0, 0x1

    aput-char v14, v13, v0

    if-lez v11, :cond_11

    invoke-static {v1, v4, v13, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v11

    :cond_11
    add-int/lit8 v0, v2, 0x1

    aput-char v14, v13, v2

    if-lez v10, :cond_12

    invoke-static {v7, v4, v13, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v10

    :cond_12
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v13, v0

    if-lez v12, :cond_13

    invoke-static {v5, v4, v13, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v12

    :cond_13
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v13, v1

    add-int/lit8 v2, v1, 0x2

    aput-char p7, v13, v0

    add-int/lit8 v1, v1, 0x3

    aput-char p5, v13, v2

    move v0, p0

    int-to-char v0, v0

    aput-char v0, v13, v1

    return-object v13
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 6

    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {p1, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->simpleName:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v4, p1, v1

    const/16 v5, 0x30

    if-ne v4, v0, :cond_1

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->enclosingTypeName:[C

    goto :goto_2

    :cond_1
    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    if-ne v4, v2, :cond_2

    aget-char v2, p1, v1

    if-ne v2, v5, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->enclosingTypeName:[C

    goto :goto_1

    :cond_2
    invoke-static {p1, v1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->enclosingTypeName:[C

    :goto_1
    move v1, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    aget-char v2, p1, v1

    if-ne v2, v0, :cond_3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->typeParameterSignatures:[[C

    goto :goto_3

    :cond_3
    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    const/16 v4, 0x2c

    invoke-static {v4, p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->typeParameterSignatures:[[C

    move v1, v2

    :goto_3
    add-int/lit8 v2, v1, 0x1

    aget-char v4, p1, v2

    if-ne v4, v0, :cond_4

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->pkgName:[C

    goto :goto_5

    :cond_4
    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    aget-char v1, p1, v2

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->pkgName:[C

    goto :goto_4

    :cond_5
    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->pkgName:[C

    :goto_4
    move v2, v0

    :goto_5
    add-int/lit8 v0, v2, 0x1

    aget-char v0, p1, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superClassOrInterface:C

    add-int/lit8 v0, v2, 0x2

    aget-char v0, p1, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->classOrInterface:C

    add-int/lit8 v2, v2, 0x3

    aget-char p1, p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->modifiers:I

    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->CATEGORIES:[[C

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 3

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->enclosingTypeName:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C

    if-eq v0, v1, :cond_1

    iget-char v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superClassOrInterface:C

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result p1

    return p1
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SuperClassReferencePattern: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "SuperInterfaceReferencePattern: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v0, "SuperTypeReferencePattern: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    if-eqz v2, :cond_1

    const/16 v0, 0x2f

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([CC)[C

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->getIndexCategories()[[C

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method
