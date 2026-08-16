.class public Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;
.super Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;


# instance fields
.field protected fAbort:Z

.field protected fBuildingCU:Z

.field protected fBuildingType:Z

.field protected fDocument:[C

.field protected fFieldCount:I

.field protected fLineStartPositions:[I

.field protected fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

.field protected fStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingCU:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingType:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public acceptLineSeparatorPositions([I)V
    .locals 7

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    array-length v1, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_3

    if-ge v3, v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    aput v4, v2, v3

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    aget-char v5, v5, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    add-int/lit8 v2, v2, 0x2

    aput v2, v4, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    aput v4, v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    aput v4, v2, v3

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingCU:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingType:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->basicAddChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    :cond_1
    return-void
.end method

.method public createCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 0

    .line 2
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast p1, Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    return-object p1
.end method

.method public createCompilationUnit([C[C)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;-><init>([C[C)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->createCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public enterCompilationUnit()V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingCU:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    const/4 v2, 0x2

    new-array v2, v2, [I

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;-><init>([C[I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public exitCompilationUnit(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-void
.end method

.method public exitType(II)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setCloseBodyRangeStart(I)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->setCloseBodyRangeEnd(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-void
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fLineStartPositions:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public initializeBuild([CZZ)V
    .locals 0

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingCU:Z

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fBuildingType:Z

    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fStack:Ljava/util/Stack;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fDocument:[C

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fFieldCount:I

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->fAbort:Z

    return-void
.end method
