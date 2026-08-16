.class Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentIterator"
.end annotation


# instance fields
.field private eventIter:Ljava/util/Iterator;

.field private rangeNodeIter:Ljava/util/Iterator;

.field private sourceNodeIter:Ljava/util/Iterator;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

.field private trackedNodeIter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->eventIter:Ljava/util/Iterator;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->sourceNodeIter:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->sourceNodeIter:Ljava/util/Iterator;

    :goto_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->rangeNodeIter:Ljava/util/Iterator;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->rangeNodeIter:Ljava/util/Iterator;

    :goto_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->trackedNodeIter:Ljava/util/Iterator;

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->trackedNodeIter:Ljava/util/Iterator;

    :goto_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->eventIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->sourceNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->rangeNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->trackedNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->eventIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->eventIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->sourceNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->sourceNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->rangeNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->rangeNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;->trackedNodeIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
