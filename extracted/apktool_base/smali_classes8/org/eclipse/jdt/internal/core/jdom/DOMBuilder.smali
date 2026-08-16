.class public Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;
.super Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;


# instance fields
.field protected fBuildingSingleMember:Z

.field protected fFields:Ljava/util/ArrayList;

.field protected fFinishedSingleMember:Z

.field options:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public acceptImport(II[I[CIZI)V
    .locals 7

    filled-new-array {p1, p2}, [I

    move-result-object v2

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    filled-new-array {p5, p2}, [I

    move-result-object v4

    new-instance v3, Ljava/lang/String;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    const/4 p3, 0x0

    aget p3, v4, p3

    aget p4, v4, p1

    add-int/2addr p4, p1

    sub-int/2addr p4, p3

    invoke-direct {v3, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/jdom/DOMImport;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    move-object v0, p2

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/jdom/DOMImport;-><init>([C[ILjava/lang/String;[IZI)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    :cond_0
    return-void
.end method

.method public acceptInitializer(II[IIIII)V
    .locals 8

    filled-new-array {p1, p2}, [I

    move-result-object v2

    const/4 p2, 0x2

    new-array v3, p2, [I

    const/4 p7, 0x0

    const/4 v0, -0x1

    aput v0, v3, p7

    const/4 v7, 0x1

    aput v0, v3, v7

    if-eqz p3, :cond_0

    array-length v1, p3

    add-int/lit8 v4, v1, -0x2

    aget v4, p3, v4

    aput v4, v3, p7

    sub-int/2addr v1, v7

    aget p3, p3, v1

    aput p3, v3, v7

    :cond_0
    new-array v5, p2, [I

    aput v0, v5, p7

    aput v0, v5, v7

    if-lt p5, p1, :cond_1

    aput p5, v5, p7

    add-int/lit8 p1, p6, -0x1

    aput p1, v5, v7

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    move-object v0, p1

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;-><init>([C[I[II[II)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    if-eqz p1, :cond_2

    iput-boolean v7, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    :cond_2
    return-void
.end method

.method public acceptPackage(II[I[CI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    array-length p1, p3

    new-array v3, v1, [I

    sub-int/2addr p1, v1

    aget p1, p3, p1

    aput p1, v3, v0

    aput p2, v3, v2

    goto :goto_0

    :cond_0
    new-array v3, v1, [I

    aput p1, v3, v0

    aput p2, v3, v2

    :goto_0
    sub-int/2addr p2, v2

    filled-new-array {p5, p2}, [I

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    invoke-static {p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, v3, p4, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;-><init>([C[ILjava/lang/String;[I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    :cond_1
    return-void
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    return-void
.end method

.method public addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFields:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createCompilationUnit()Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;-><init>()V

    return-object v0
.end method

.method public createCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 3

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    .line 4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->createCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public createField([C)Lorg/eclipse/jdt/core/jdom/IDOMField;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseField([C)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fFieldCount:I

    if-le v2, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMField;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public createFields([C)[Lorg/eclipse/jdt/core/jdom/IDOMField;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseField([C)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFields:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v1, p1, [Lorg/eclipse/jdt/core/jdom/IDOMField;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    if-lt v0, p1, :cond_1

    return-object v1

    :cond_1
    aget-object v2, v1, v0

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v4, v3, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v3, v4, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :cond_2
    check-cast v2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createImport()Lorg/eclipse/jdt/core/jdom/IDOMImport;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMImport;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMImport;-><init>()V

    return-object v0
.end method

.method public createImport([C)Lorg/eclipse/jdt/core/jdom/IDOMImport;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseImport([C)V

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMImport;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createInitializer([C)Lorg/eclipse/jdt/core/jdom/IDOMInitializer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseInitializer([C)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/core/jdom/IDOMInitializer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMInitializer;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createMethod([C)Lorg/eclipse/jdt/core/jdom/IDOMMethod;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseMethod([C)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createPackage()Lorg/eclipse/jdt/core/jdom/IDOMPackage;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;-><init>()V

    return-object v0
.end method

.method public createPackage([C)Lorg/eclipse/jdt/core/jdom/IDOMPackage;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parsePackage([C)V

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMPackage;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createType([C)Lorg/eclipse/jdt/core/jdom/IDOMType;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->initializeBuild([CZZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->options:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parseType([C)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    instance-of v1, p1, Lorg/eclipse/jdt/core/jdom/IDOMType;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMType;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public enterAbstractMethod(I[III[CIII[CII[[C[I[I[[C[I[IIII[[C[I[IIZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p18

    move-object/from16 v4, p21

    const/4 v5, -0x1

    move/from16 v6, p1

    filled-new-array {v6, v5}, [I

    move-result-object v8

    filled-new-array/range {p10 .. p11}, [I

    move-result-object v10

    const/4 v6, 0x2

    new-array v11, v6, [I

    const/4 v7, 0x0

    aput v5, v11, v7

    const/4 v9, 0x1

    aput v5, v11, v9

    if-eqz v1, :cond_0

    array-length v12, v1

    add-int/lit8 v13, v12, -0x2

    aget v13, v1, v13

    aput v13, v11, v7

    sub-int/2addr v12, v9

    aget v1, v1, v12

    aput v1, v11, v9

    :cond_0
    new-array v13, v6, [I

    aput v5, v13, v7

    aput v5, v13, v9

    if-le v2, v5, :cond_2

    aput v2, v13, v7

    if-eqz p25, :cond_1

    add-int/lit8 v1, p10, -0x1

    aput v1, v13, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p6, -0x1

    aput v1, v13, v9

    :cond_2
    :goto_0
    if-lez p19, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [I

    aput p6, v1, v7

    aput p7, v1, v9

    add-int/lit8 v2, v3, 0x1

    aput v2, v1, v6

    const/4 v2, 0x3

    aput p20, v1, v2

    :goto_1
    move-object/from16 v16, v1

    goto :goto_2

    :cond_3
    new-array v1, v6, [I

    aput p6, v1, v7

    aput p7, v1, v9

    goto :goto_1

    :goto_2
    add-int/lit8 v1, p11, 0x1

    filled-new-array {v1, v3}, [I

    move-result-object v19

    new-array v1, v6, [I

    aput v5, v1, v7

    aput v5, v1, v9

    if-eqz v4, :cond_4

    array-length v2, v4

    if-lez v2, :cond_4

    array-length v2, v4

    aget v12, p22, v7

    aput v12, v1, v7

    sub-int/2addr v2, v9

    aget v2, p23, v2

    aput v2, v1, v9

    :cond_4
    aget v2, v1, v9

    if-le v2, v5, :cond_5

    new-array v3, v6, [I

    add-int/2addr v2, v9

    aput v2, v3, v7

    aput v5, v3, v9

    move-object/from16 v22, v3

    goto :goto_3

    :cond_5
    new-array v2, v6, [I

    add-int/2addr v3, v9

    aput v3, v2, v7

    aput v5, v2, v9

    move-object/from16 v22, v2

    :goto_3
    new-instance v2, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;

    move-object v6, v2

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    invoke-static/range {p9 .. p9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p12 .. p12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p15 .. p15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p21 .. p21}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v20

    move/from16 v12, p3

    move/from16 v14, p25

    move-object/from16 v21, v1

    invoke-direct/range {v6 .. v22}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;-><init>([C[ILjava/lang/String;[I[II[IZLjava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I[I)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterClass(I[IIII[CII[CII[[C[I[II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    const/16 v16, 0x1

    invoke-virtual/range {v0 .. v16}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->enterType(I[IIII[CII[CII[[C[I[IIZ)V

    return-void
.end method

.method public enterConstructor(I[III[CII[[C[I[I[[C[I[II[[C[I[II)V
    .locals 26

    move/from16 v10, p6

    new-instance v0, Ljava/lang/String;

    move-object/from16 v15, p0

    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    sub-int v2, p7, v10

    invoke-direct {v0, v1, v10, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/2addr v0, v10

    add-int/lit8 v0, v0, -0x1

    move v11, v0

    goto :goto_0

    :cond_0
    move/from16 v11, p7

    :goto_0
    const/16 v20, -0x1

    const/16 v25, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    move-object/from16 v23, p17

    move/from16 v24, p18

    invoke-virtual/range {v0 .. v25}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->enterAbstractMethod(I[III[CIII[CII[[C[I[I[[C[I[IIII[[C[I[IIZ)V

    return-void
.end method

.method public enterField(I[III[CIII[CIIII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p11

    move/from16 v5, p13

    move/from16 v6, p1

    if-le v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    filled-new-array {v6, v5}, [I

    move-result-object v8

    filled-new-array/range {p10 .. p11}, [I

    move-result-object v10

    const/4 v4, 0x2

    new-array v11, v4, [I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v11, v5

    const/4 v7, 0x1

    aput v6, v11, v7

    if-eqz v1, :cond_1

    array-length v9, v1

    add-int/lit8 v12, v9, -0x2

    aget v12, v1, v12

    aput v12, v11, v5

    sub-int/2addr v9, v7

    aget v1, v1, v9

    aput v1, v11, v7

    :cond_1
    new-array v13, v4, [I

    aput v6, v13, v5

    aput v6, v13, v7

    if-le v2, v6, :cond_2

    aput v2, v13, v5

    add-int/lit8 v1, v3, -0x1

    aput v1, v13, v7

    :cond_2
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v14

    filled-new-array {v6, v6}, [I

    move-result-object v17

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    aget v1, v1, v5

    if-ne v1, v3, :cond_3

    move/from16 v18, v7

    goto :goto_1

    :cond_3
    move/from16 v18, v5

    :goto_1
    new-instance v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    invoke-static/range {p9 .. p9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object v6, v1

    move/from16 v12, p3

    invoke-direct/range {v6 .. v18}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;-><init>([C[ILjava/lang/String;[I[II[I[ILjava/lang/String;Z[IZ)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enterInterface(I[IIII[CII[[C[I[II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    const/4 v11, -0x1

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v0 .. v16}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->enterType(I[IIII[CII[CII[[C[I[IIZ)V

    return-void
.end method

.method public enterMethod(I[III[CIII[CII[[C[I[I[[C[I[IIII[[C[I[II)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    const/16 v25, 0x0

    invoke-virtual/range {v0 .. v25}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->enterAbstractMethod(I[III[CIII[CII[[C[I[I[[C[I[IIII[[C[I[IIZ)V

    return-void
.end method

.method public enterType(I[IIII[CII[CII[[C[I[IIZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p11

    move-object/from16 v5, p12

    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingType:Z

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    move/from16 v7, p1

    filled-new-array {v7, v6}, [I

    move-result-object v9

    const/4 v7, 0x2

    new-array v12, v7, [I

    const/4 v8, 0x0

    aput v6, v12, v8

    const/4 v10, 0x1

    aput v6, v12, v10

    if-eqz v1, :cond_0

    array-length v11, v1

    add-int/lit8 v13, v11, -0x2

    aget v13, v1, v13

    aput v13, v12, v8

    sub-int/2addr v11, v10

    aget v1, v1, v11

    aput v1, v12, v10

    :cond_0
    new-array v14, v7, [I

    aput v6, v14, v8

    aput v6, v14, v10

    if-le v2, v6, :cond_2

    aput v2, v14, v8

    if-le v2, v6, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    aput v1, v14, v10

    :cond_2
    add-int/lit8 v1, p7, -0x1

    filled-new-array {v3, v1}, [I

    move-result-object v15

    filled-new-array/range {p7 .. p8}, [I

    move-result-object v11

    new-array v1, v7, [I

    aput v6, v1, v8

    aput v6, v1, v10

    new-array v2, v7, [I

    aput v6, v2, v8

    aput v6, v2, v10

    new-array v3, v7, [I

    aput v6, v3, v8

    aput v6, v3, v10

    new-array v13, v7, [I

    aput v6, v13, v8

    aput v6, v13, v10

    if-eqz p16, :cond_6

    if-eqz p9, :cond_3

    add-int/lit8 v7, p8, 0x1

    aput v7, v1, v8

    add-int/lit8 v7, p10, -0x1

    aput v7, v1, v10

    aput p10, v2, v8

    aput v4, v2, v10

    :cond_3
    if-eqz v5, :cond_5

    array-length v7, v5

    if-lez v7, :cond_5

    aput v4, v2, v10

    if-le v4, v6, :cond_4

    add-int/2addr v4, v10

    aput v4, v3, v8

    goto :goto_1

    :cond_4
    add-int/lit8 v4, p8, 0x1

    aput v4, v3, v8

    :goto_1
    aget v4, p13, v8

    add-int/lit8 v7, v4, -0x1

    aput v7, v3, v10

    aput v4, v13, v8

    array-length v4, v5

    sub-int/2addr v4, v10

    aget v4, p14, v4

    aput v4, v13, v10

    :cond_5
    :goto_2
    move/from16 v4, p15

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_5

    array-length v4, v5

    if-lez v4, :cond_5

    add-int/lit8 v4, p8, 0x1

    aput v4, v1, v8

    aget v4, p13, v8

    add-int/lit8 v7, v4, -0x1

    aput v7, v1, v10

    aput v4, v13, v8

    array-length v4, v5

    sub-int/2addr v4, v10

    aget v4, p14, v4

    aput v4, v13, v10

    goto :goto_2

    :goto_3
    filled-new-array {v4, v6}, [I

    move-result-object v21

    filled-new-array {v6, v6}, [I

    move-result-object v22

    new-instance v4, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    move-object v7, v4

    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    new-instance v6, Ljava/lang/String;

    move-object v10, v6

    move-object/from16 v5, p6

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static/range {p12 .. p12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object v18

    move-object v5, v13

    move/from16 v13, p3

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v3

    move/from16 v23, p16

    invoke-direct/range {v7 .. v23}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;-><init>([C[ILjava/lang/String;[I[II[I[I[I[I[Ljava/lang/String;[I[I[I[IZ)V

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public exitAbstractMethod(II)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->setSourceRangeEnd(I)V

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMethod;->setBodyRangeEnd(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    :cond_0
    return-void
.end method

.method public exitClass(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->exitType(II)V

    return-void
.end method

.method public exitConstructor(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->exitAbstractMethod(II)V

    return-void
.end method

.method public exitField(II)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    iget-object p2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget p2, p2, v2

    if-ge p2, p1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    add-int/lit8 v4, p2, 0x1

    sub-int v5, p1, p2

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setHasInitializer(Z)V

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setInitializerRange(II)V

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fFieldCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fFieldCount:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    :cond_1
    return-void
.end method

.method public exitInterface(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->exitType(II)V

    return-void
.end method

.method public exitMethod(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->exitAbstractMethod(II)V

    return-void
.end method

.method public getParser(Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v2, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    return-object v0
.end method

.method public initializeBuild([CZZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->initializeBuild([CZZ)V

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fBuildingSingleMember:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->fFinishedSingleMember:Z

    return-void
.end method
