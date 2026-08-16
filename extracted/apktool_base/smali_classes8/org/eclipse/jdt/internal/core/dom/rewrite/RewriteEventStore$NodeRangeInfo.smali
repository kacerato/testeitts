.class Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeRangeInfo"
.end annotation


# instance fields
.field public final copyInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

.field public final editGroup:Lorg/eclipse/text/edits/TextEditGroup;

.field private final first:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private final last:Lorg/eclipse/jdt/core/dom/ASTNode;

.field public final replacingNode:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->first:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->last:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->copyInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->replacingNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->editGroup:Lorg/eclipse/text/edits/TextEditGroup;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getStartNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getStartNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getEndNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getEndNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    neg-int p1, v0

    return p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->isMove()Z

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->isMove()Z

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->isMove()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getEndNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->last:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public getInternalPlaceholder()Lorg/eclipse/jdt/core/dom/Block;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->copyInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Block;

    return-object v0
.end method

.method public getStartNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->first:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public isMove()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->copyInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->isMove:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->first:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->last:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eq v1, v2, :cond_0

    const-string v1, "range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->isMove()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "move source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "copy source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->first:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->last:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePlaceholderSourceRanges(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getStartNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;->computeSourceRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getEndNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;->computeSourceRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getInternalPlaceholder()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    return-void
.end method
