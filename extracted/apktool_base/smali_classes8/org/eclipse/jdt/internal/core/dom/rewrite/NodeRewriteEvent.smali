.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
.source "SourceFile"


# instance fields
.field private newValue:Ljava/lang/Object;

.field private originalValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->originalValue:Ljava/lang/Object;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->newValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getChangeKind()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->originalValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->newValue:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method public getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginalValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->originalValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isListRewrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNewValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->newValue:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x5d

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, " [unchanged]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, " [replaced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, " [removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, " [inserted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
