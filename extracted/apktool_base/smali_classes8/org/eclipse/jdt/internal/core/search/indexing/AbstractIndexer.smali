.class public abstract Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# instance fields
.field document:Lorg/eclipse/jdt/core/search/SearchDocument;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    return-void
.end method

.method private erasure([C)[C
    .locals 2

    const/16 v0, 0x3c

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addAnnotationTypeDeclaration(I[C[C[[CZ)V
    .locals 10

    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeDeclaration(I[C[C[[CZ)V

    sget-object p5, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ANNOTATION:[[C

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    const/16 v9, 0x41

    const/4 v6, 0x0

    const/16 v7, 0x41

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->createIndexKey(I[C[C[[C[[CC[CC)[C

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addAnnotationTypeReference([C)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ANNOTATION_REF:[C

    const/16 v1, 0x2e

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addClassDeclaration(I[C[C[[C[C[[C[[CZ)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeDeclaration(I[C[C[[CZ)V

    if-eqz v7, :cond_0

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->erasure([C)[C

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v7

    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    const/16 v14, 0x43

    const/16 v16, 0x43

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    invoke-static/range {v9 .. v16}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->createIndexKey(I[C[C[[C[[CC[CC)[C

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    if-eqz v8, :cond_2

    array-length v0, v8

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, v8, v1

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->erasure([C)[C

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    const/16 v14, 0x43

    const/16 v16, 0x49

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    invoke-static/range {v9 .. v16}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->createIndexKey(I[C[C[[C[[CC[CC)[C

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public addConstructorDeclaration([CI[C[[C[[CI[CI[[CI)V
    .locals 12

    move-object v0, p0

    move-object/from16 v10, p9

    sget-object v11, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_DECL:[C

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    invoke-static/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createDeclarationIndexKey([CI[C[[C[[CI[CII)[C

    move-result-object v1

    invoke-virtual {p0, v11, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    move v2, p2

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p4, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v10, :cond_3

    array-length v2, v10

    :goto_2
    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v3, v10, v1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public addConstructorReference([CI)V
    .locals 2

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_REF:[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createIndexKey([CI)[C

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    const/16 v1, 0x24

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createIndexKey([CI)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    :cond_0
    return-void
.end method

.method public addDefaultConstructorDeclaration([C[CII)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_DECL:[C

    const/16 v1, 0x2e

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createDefaultDeclarationIndexKey([C[CII)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addEnumDeclaration(I[C[C[[C[C[[CZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeDeclaration(I[C[C[[CZ)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    const/16 v13, 0x45

    const/16 v15, 0x43

    const/4 v12, 0x0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-static/range {v8 .. v15}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->createIndexKey(I[C[C[[C[[CC[CC)[C

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    if-eqz v7, :cond_1

    array-length v0, v7

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v7, v1

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->erasure([C)[C

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    const/16 v13, 0x45

    const/16 v15, 0x49

    const/4 v12, 0x0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v8 .. v15}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->createIndexKey(I[C[C[[C[[CC[CC)[C

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public addFieldDeclaration([C[C)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->FIELD_DECL:[C

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->createIndexKey([C)[C

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    return-void
.end method

.method public addFieldReference([C)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    return-void
.end method

.method public addIndexEntry([C[C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/search/SearchDocument;->addIndexEntry([C[C)V

    return-void
.end method

.method public addInterfaceDeclaration(I[C[C[[C[[C[[CZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeDeclaration(I[C[C[[CZ)V

    if-eqz v7, :cond_1

    array-length v0, v7

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v7, v1

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->erasure([C)[C

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    const/16 v13, 0x49

    const/16 v15, 0x49

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-static/range {v8 .. v15}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->createIndexKey(I[C[C[[C[[CC[CC)[C

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public addMethodDeclaration([C[C[CI[C[[C[[C[CI[CI[[CI)V
    .locals 13

    .line 1
    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL_PLUS:[C

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p13

    .line 2
    invoke-static/range {v1 .. v12}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->createDeclarationIndexKey([C[C[CI[C[[C[[C[CI[CII)[C

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    .line 3
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, p0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public addMethodDeclaration([C[[C[C[[C)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    .line 6
    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL:[C

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->createIndexKey([CI)[C

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    if-eqz p2, :cond_2

    move p1, v0

    :goto_1
    if-lt p1, v1, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    aget-object v2, p2, p1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p4, :cond_4

    .line 8
    array-length p1, p4

    :goto_3
    if-lt v0, p1, :cond_3

    goto :goto_4

    .line 9
    :cond_3
    aget-object p2, p4, v0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz p3, :cond_5

    .line 10
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    :cond_5
    return-void
.end method

.method public addMethodReference([CI)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_REF:[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->createIndexKey([CI)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addModuleDeclaration([C)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_DECL:[C

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->createIndexKey([C)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addModuleExportedPackages([C)V
    .locals 3

    const/16 v0, 0x2e

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addModuleReference([C)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_REF:[C

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->createIndexKey([C)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addNameReference([C)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->REF:[C

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addTypeDeclaration(I[C[C[[CZ)V
    .locals 0

    invoke-static {p1, p3, p2, p4, p5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->createIndexKey(I[C[C[[CZ)[C

    move-result-object p1

    if-eqz p5, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p4

    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {p5}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object p5

    if-nez p3, :cond_0

    sget-object p3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :cond_1
    invoke-virtual {p4, p5, p3, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypeAdding(Ljava/lang/String;[C[C)V

    :cond_2
    sget-object p2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->TYPE_DECL:[C

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    return-void
.end method

.method public addTypeReference([C)V
    .locals 1

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    return-void
.end method

.method public abstract indexDocument()V
.end method

.method public indexResolvedDocument()V
    .locals 0

    return-void
.end method
