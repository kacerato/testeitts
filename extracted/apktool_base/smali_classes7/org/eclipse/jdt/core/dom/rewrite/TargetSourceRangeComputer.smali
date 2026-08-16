.class public Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSourceRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    new-instance v1, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v2

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;-><init>(II)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;-><init>(II)V

    return-object v0
.end method
