.class public Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;
.source "SourceFile"


# instance fields
.field public packageIndex:I

.field packagePattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

.field public qualification:[C


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>(I)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->packageIndex:I

    return-void
.end method

.method public constructor <init>([CI[CCI)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[CCI)V

    .line 9
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;-><init>([CI)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->packagePattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    return-void
.end method

.method public constructor <init>([C[CCI)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[C[CCI)V

    return-void
.end method

.method public constructor <init>([C[C[CCI)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->addModuleNames([C)V

    .line 3
    iget-boolean p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    .line 4
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p3

    :cond_2
    :goto_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    .line 5
    iput-char p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    if-nez p2, :cond_3

    if-nez p4, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 9

    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-char v4, p1, v2

    if-ne v4, v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    sget-object v4, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->internedPackageNames:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;

    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;->add([C)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    array-length v0, p1

    add-int/lit8 v4, v0, -0x1

    aget-char v5, p1, v4

    const/16 v6, 0x53

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->secondary:Z

    if-eqz v3, :cond_2

    add-int/lit8 v4, v0, -0x3

    :cond_2
    add-int/lit8 v0, v4, -0x1

    aget-char v0, p1, v0

    aget-char v3, p1, v4

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modifiers:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->decodeModifiers()V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v4, v4, -0x2

    if-ne v0, v4, :cond_3

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    array-length v5, v3

    sub-int v6, v4, v0

    add-int/lit8 v7, v5, 0x1

    add-int v8, v7, v6

    new-array v8, v8, [C

    iput-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    invoke-static {v3, v1, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    const/16 v3, 0x2e

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x2

    if-ne v4, v2, :cond_4

    aget-char v2, p1, v0

    const/16 v5, 0x30

    if-ne v2, v5, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    aput-char v5, v1, v7

    goto :goto_2

    :cond_4
    invoke-static {v3, p1, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    invoke-static {p1, v0, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>(I)V

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 3

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    iget-char v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchDifferentTypeSuffixes(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->packagePattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/16 v1, 0x41

    if-eq v0, v1, :cond_3

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "TypeDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const-string v0, "InterfaceAndAnnotationDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v0, "ClassAndInterfaceDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v0, "ClassAndEnumDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "InterfaceDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "EnumDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v0, "ClassDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "AnnotationTypeDeclarationPattern: qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    const-string v1, "*"

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, ">, type<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
