.class public Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;
.source "SourceFile"


# static fields
.field protected static DECL_CATEGORIES:[[C

.field protected static REF_AND_DECL_CATEGORIES:[[C

.field protected static REF_CATEGORIES:[[C


# instance fields
.field protected declaringQualification:[C

.field protected declaringSimpleName:[C

.field protected typeQualification:[C

.field protected typeSimpleName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->REF:[C

    filled-new-array {v0}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->REF_CATEGORIES:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->FIELD_DECL:[C

    filled-new-array {v0, v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->REF_AND_DECL_CATEGORIES:[[C

    filled-new-array {v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->DECL_CATEGORIES:[[C

    return-void
.end method

.method public constructor <init>([C[C[C[C[CII)V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1, p6, p7}, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;-><init>(I[CII)V

    .line 2
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    .line 3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p4

    :goto_2
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    .line 5
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p5

    :cond_4
    :goto_3
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->mustResolve()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method public constructor <init>([C[C[C[C[CLjava/lang/String;II)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 7
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;-><init>([C[C[C[C[CII)V

    if-eqz p6, :cond_0

    .line 8
    invoke-static {p6}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    .line 9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    :cond_0
    return-void
.end method

.method public static createIndexKey([C)[C
    .locals 0

    return-object p0
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 9

    new-instance v8, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;-><init>([C[C[C[C[CII)V

    return-object v8
.end method

.method public getIndexCategories()[[C
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->DECL_CATEGORIES:[[C

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->REF_CATEGORIES:[[C

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->REF_AND_DECL_CATEGORIES:[[C

    :goto_2
    return-object v0
.end method

.method public getIndexKey()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public mustResolve()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->mustResolve()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldCombinedPattern: "

    goto :goto_0

    :cond_0
    const-string v0, "FieldDeclarationPattern: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v0, "FieldReferencePattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    const/16 v1, 0x2e

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    if-eqz v0, :cond_4

    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    const-string v2, "*"

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    const-string v3, " --> "

    if-eqz v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    if-eqz v0, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    if-eqz v0, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_5
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method
