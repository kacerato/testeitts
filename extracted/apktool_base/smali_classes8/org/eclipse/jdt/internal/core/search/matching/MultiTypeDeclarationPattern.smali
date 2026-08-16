.class public Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# static fields
.field protected static CATEGORIES:[[C


# instance fields
.field public qualifications:[[C

.field public simpleNames:[[C

.field public typeSuffix:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->TYPE_DECL:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->CATEGORIES:[[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x8

    .line 14
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    return-void
.end method

.method public constructor <init>([[C[[CCI)V
    .locals 4

    .line 1
    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;-><init>(I)V

    .line 2
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    const/4 v0, 0x0

    if-nez p4, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length p4, p1

    .line 4
    new-array v1, p4, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    move v1, v0

    :goto_0
    if-lt v1, p4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    :goto_2
    if-eqz p2, :cond_6

    .line 7
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p1, :cond_3

    goto :goto_4

    .line 8
    :cond_3
    array-length p1, p2

    .line 9
    new-array p4, p1, [[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    move p4, v0

    :goto_3
    if-lt p4, p1, :cond_4

    goto :goto_5

    .line 10
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    aget-object v2, p2, p4

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v2

    aput-object v2, v1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 11
    :cond_5
    :goto_4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    .line 12
    :cond_6
    :goto_5
    iput-char p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->typeSuffix:C

    if-eqz p3, :cond_7

    const/4 v0, 0x1

    .line 13
    :cond_7
    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method


# virtual methods
.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->CATEGORIES:[[C

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 6

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->typeSuffix:C

    iget-char v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchDifferentTypeSuffixes(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    array-length v1, v1

    if-lez v1, :cond_1

    return v2

    :cond_1
    if-lez v0, :cond_4

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-ne v1, v0, :cond_4

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    const/4 v1, 0x1

    if-nez v0, :cond_5

    return v1

    :cond_5
    array-length v0, v0

    move v3, v2

    :goto_2
    if-lt v3, v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    aget-object v4, v4, v3

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_3
    if-ge v3, v0, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->typeSuffix:C

    const/16 v1, 0x41

    if-eq v0, v1, :cond_3

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "MultiTypeDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const-string v0, "MultiInterfaceAndAnnotationDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v0, "MultiClassAndInterfaceDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v0, "MultiClassAndEnumDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "MultiInterfaceDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "MultiEnumDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v0, "MultiClassDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "MultiAnnotationTypeDeclarationPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const-string v0, "qualifications: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    array-length v4, v3

    if-lt v0, v4, :cond_4

    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->qualifications:[[C

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    if-eqz v0, :cond_9

    const-string v0, "simpleNames: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    array-length v3, v0

    if-lt v2, v3, :cond_7

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->getIndexCategories()[[C

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    new-array v4, v0, [[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    const/4 v5, 0x0

    move v7, v1

    move v6, v5

    :goto_1
    if-lt v6, v0, :cond_5

    if-ne v7, v1, :cond_2

    return-object v2

    :cond_2
    move p1, v5

    move v0, p1

    :goto_2
    if-le p1, v7, :cond_4

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move p1, v5

    move v0, p1

    :goto_3
    if-le p1, v7, :cond_3

    return-object v1

    :cond_3
    aget-object v2, v4, p1

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    aget-object v1, v4, p1

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->simpleNames:[[C

    aget-object v8, v8, v6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v10

    const/16 v11, 0x2f

    if-eqz v10, :cond_7

    const/4 v12, 0x2

    if-eq v10, v12, :cond_6

    goto :goto_4

    :cond_6
    array-length v10, v8

    sub-int/2addr v10, v3

    aget-char v10, v8, v10

    const/16 v12, 0x2a

    if-eq v10, v12, :cond_8

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v8, v10, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v8

    goto :goto_4

    :cond_7
    or-int/lit8 v9, v9, 0x1

    invoke-static {v8, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([CC)[C

    move-result-object v8

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MultiTypeDeclarationPattern;->getIndexCategories()[[C

    move-result-object v10

    invoke-virtual {p1, v10, v8, v9}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object v8

    if-eqz v8, :cond_a

    if-nez v4, :cond_9

    return-object v8

    :cond_9
    add-int/lit8 v7, v7, 0x1

    aput-object v8, v4, v7

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
