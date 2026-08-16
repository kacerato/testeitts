.class public Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# static fields
.field protected static DECL_CATEGORIES:[[C

.field protected static REF_AND_DECL_CATEGORIES:[[C

.field protected static REF_CATEGORIES:[[C

.field private static regexPrefix:[C


# instance fields
.field findDeclarations:Z

.field findReferences:Z

.field name:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_REF:[C

    filled-new-array {v0}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->REF_CATEGORIES:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_DECL:[C

    filled-new-array {v0, v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->REF_AND_DECL_CATEGORIES:[[C

    filled-new-array {v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->DECL_CATEGORIES:[[C

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->regexPrefix:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2fs
        0x72s
        0x20s
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    .line 4
    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->trapDoorRegexMatchRule([CI)I

    move-result p3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;-><init>(I)V

    .line 5
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->trapDoorRegexExtractModuleName([C)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    and-int/lit8 p1, p2, 0xf

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 7
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->mustResolve()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method public static createIndexKey([C)[C
    .locals 0

    return-object p0
.end method

.method private static trapDoorRegexExtractModuleName([C)[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->regexPrefix:[C

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZ)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->regexPrefix:[C

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static trapDoorRegexMatchRule([CI)I
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->regexPrefix:[C

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p1, 0x4

    :cond_0
    return p1
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->REF_AND_DECL_CATEGORIES:[[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->REF_CATEGORIES:[[C

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->DECL_CATEGORIES:[[C

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result p1

    return p1
.end method

.method public mustResolve()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    if-eqz v0, :cond_0

    const-string v0, "ModuleCombinedPattern: "

    goto :goto_0

    :cond_0
    const-string v0, "ModuleDeclarationPattern: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v0, "ModuleReferencePattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, "module "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->createIndexKey([C)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->createIndexKey([C)[C

    move-result-object v0

    goto :goto_0

    :cond_2
    or-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->getIndexCategories()[[C

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method
