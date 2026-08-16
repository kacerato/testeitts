.class Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/NodeFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeFinderVisitor"
.end annotation


# instance fields
.field private fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private fEnd:I

.field private fStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>(Z)V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fStart:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fEnd:I

    return-void
.end method


# virtual methods
.method public getCoveredNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public getCoveringNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public preVisit2(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fStart:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_5

    iget v4, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fEnd:I

    if-ge v4, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gt v0, v2, :cond_1

    if-gt v4, v1, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    :cond_1
    const/4 v5, 0x1

    if-gt v2, v0, :cond_4

    if-gt v1, v4, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveringNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v0, p1, :cond_2

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return v5

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez v0, :cond_3

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeFinder$NodeFinderVisitor;->fCoveredNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    :cond_3
    return v3

    :cond_4
    return v5

    :cond_5
    :goto_0
    return v3
.end method
