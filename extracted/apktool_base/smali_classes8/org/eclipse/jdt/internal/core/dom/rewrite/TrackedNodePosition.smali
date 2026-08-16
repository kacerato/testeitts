.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/rewrite/ITrackedNodePosition;


# instance fields
.field private final group:Lorg/eclipse/text/edits/TextEditGroup;

.field private final node:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->group:Lorg/eclipse/text/edits/TextEditGroup;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->group:Lorg/eclipse/text/edits/TextEditGroup;

    invoke-virtual {v0}, Lorg/eclipse/text/edits/TextEditGroup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->group:Lorg/eclipse/text/edits/TextEditGroup;

    invoke-virtual {v0}, Lorg/eclipse/text/edits/TextEditGroup;->getTextEdits()[Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/text/edits/TextEdit;->getCoverage([Lorg/eclipse/text/edits/TextEdit;)Lorg/eclipse/jface/text/IRegion;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    return v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->group:Lorg/eclipse/text/edits/TextEditGroup;

    invoke-virtual {v0}, Lorg/eclipse/text/edits/TextEditGroup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->group:Lorg/eclipse/text/edits/TextEditGroup;

    invoke-virtual {v0}, Lorg/eclipse/text/edits/TextEditGroup;->getTextEdits()[Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/text/edits/TextEdit;->getCoverage([Lorg/eclipse/text/edits/TextEdit;)Lorg/eclipse/jface/text/IRegion;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    return v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v0

    return v0
.end method
