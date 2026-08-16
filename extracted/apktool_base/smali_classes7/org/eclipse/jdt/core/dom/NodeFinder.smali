.class public final Lorg/eclipse/jdt/core/dom/NodeFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;
    }
.end annotation


# instance fields
.field private fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTNode;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;

    invoke-direct {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->getCoveredNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder;->fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->getCoveringNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder;->fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-void
.end method

.method public static perform(Lorg/eclipse/jdt/core/dom/ASTNode;II)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    .line 1
    new-instance v0, Lorg/eclipse/jdt/core/dom/NodeFinder;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/core/dom/NodeFinder;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;II)V

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NodeFinder;->getCoveredNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NodeFinder;->getCoveringNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    return-object p0
.end method

.method public static perform(Lorg/eclipse/jdt/core/dom/ASTNode;IILorg/eclipse/jdt/core/ITypeRoot;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/eclipse/jdt/core/dom/NodeFinder;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/core/dom/NodeFinder;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;II)V

    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NodeFinder;->getCoveredNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, p1, p2

    if-gt v2, v3, :cond_1

    .line 10
    invoke-interface {p3}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v2, v2, v2}, Lorg/eclipse/jdt/core/ToolFactory;->createScanner(ZZZZ)Lorg/eclipse/jdt/core/compiler/IScanner;

    move-result-object v2

    .line 12
    :try_start_0
    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/core/IBuffer;->getText(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-interface {v2, p3}, Lorg/eclipse/jdt/core/compiler/IScanner;->setSource([C)V

    .line 13
    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IScanner;->getNextToken()I

    move-result p3

    const/16 v3, 0x9e

    if-eq p3, v3, :cond_1

    .line 14
    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IScanner;->getCurrentTokenStartPosition()I

    move-result p3

    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    sub-int/2addr v4, p1

    if-ne p3, v4, :cond_1

    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr p3, p1

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v2, p3, p2}, Lorg/eclipse/jdt/core/compiler/IScanner;->resetTo(II)V

    .line 17
    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IScanner;->getNextToken()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_1

    return-object p0

    :catch_0
    return-object v1

    .line 18
    :catch_1
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/NodeFinder;->getCoveringNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    return-object p0
.end method

.method public static perform(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/ISourceRange;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    .line 5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/NodeFinder;->perform(Lorg/eclipse/jdt/core/dom/ASTNode;II)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCoveredNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NodeFinder;->fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public getCoveringNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NodeFinder;->fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method
