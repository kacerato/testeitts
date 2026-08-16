.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;
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
    name = "CopySourceInfo"
.end annotation


# instance fields
.field public final isMove:Z

.field public final location:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

.field private final node:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;Lorg/eclipse/jdt/core/dom/ASTNode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->location:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->isMove:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->isMove:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->isMove:Z

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->isMove:Z

    if-eqz v1, :cond_0

    const-string v1, "move source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "copy source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->node:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
