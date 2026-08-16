.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;
    }
.end annotation


# static fields
.field public static final BOTH:I = 0x3

.field public static DEBUG:Z = false

.field private static final INTERNAL_PLACEHOLDER_PROPERTY:Ljava/lang/String; = "rewrite_internal_placeholder"

.field public static final NEW:I = 0x1

.field public static final ORIGINAL:I = 0x2


# instance fields
.field private editGroups:Ljava/util/Map;

.field final eventLookup:Ljava/util/Map;

.field private insertBoundToPrevious:Ljava/util/Set;

.field private lastEvent:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

.field nodeCopySources:Ljava/util/List;

.field private nodePropertyMapper:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;

.field nodeRangeInfos:Ljava/util/Map;

.field trackedNodes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->lastEvent:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->editGroups:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->insertBoundToPrevious:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodePropertyMapper:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    return-void
.end method

.method private accessOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodePropertyMapper:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private assertNoOverlap(Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;IILjava/util/List;)V
    .locals 3

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getStartNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getEndNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    if-ge v1, p2, :cond_2

    if-ge v0, p3, :cond_2

    if-ge v0, p2, :cond_3

    :cond_2
    if-le v1, p2, :cond_0

    if-gt v1, v0, :cond_0

    if-gt v0, p3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Range overlapps with an existing copy or move range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createCopySourceInfo(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;Lorg/eclipse/jdt/core/dom/ASTNode;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private doMarkMovedAsRemoved(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 3

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChangeKind(I)I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->setNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getChangeKind()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isNewNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNodeInEvent(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/lang/Object;I)Z
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private prepareNodeRangeCopies(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->processListWithRanges(Ljava/util/List;[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;-><init>([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    invoke-virtual {p0, v3, v1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->addEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    goto :goto_0
.end method

.method private prepareSingleNodeCopies()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->isMove:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->location:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->location:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->doMarkMovedAsRemoved(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private processListWithRanges(Ljava/util/List;[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v7

    :goto_0
    array-length v10, v1

    if-lt v8, v10, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    return-object v1

    :cond_0
    aget-object v10, v1, v8

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/core/dom/ASTNode;

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getStartNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v12

    if-eq v11, v12, :cond_2

    :cond_1
    move-object/from16 v12, p3

    goto :goto_4

    :cond_2
    move-object/from16 v12, p3

    invoke-virtual {v6, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->updatePlaceholderSourceRanges(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getInternalPlaceholder()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v13

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->isMove()Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    iget-object v15, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->replacingNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {v14, v13, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-direct {v14, v13, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->editGroup:Lorg/eclipse/text/edits/TextEditGroup;

    if-eqz v13, :cond_4

    invoke-virtual {v0, v14, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    array-length v9, v1

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    goto :goto_3

    :cond_5
    move-object v9, v7

    :goto_3
    move-object/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, v16

    goto :goto_1

    :goto_4
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getEndNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v10

    if-eq v11, v10, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getInternalPlaceholder()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v9

    sget-object v10, Lorg/eclipse/jdt/core/dom/Block;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v13, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    invoke-direct {v13, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;-><init>([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    invoke-virtual {v0, v9, v10, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->addEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private removeMoveRangePlaceholders()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->revertListWithRanges([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;-><init>([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    invoke-virtual {p0, v3, v1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->addEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;->getInternalPlaceholder()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private revertListWithRanges([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/util/Set;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Lorg/eclipse/jdt/core/dom/Block;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, v3, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->revertListWithRanges([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private validateHasChildProperty(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->structuralPropertiesForType()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " has no property "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private validateIsListProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not a list property"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsNodeProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not a node property"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->validateHasChildProperty(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->isListRewrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->validateIsListProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    if-ne v1, p2, :cond_2

    invoke-interface {p3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->lastEvent:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->lastEvent:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->editGroups:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->insertBoundToPrevious:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    return-void
.end method

.method public final createRangeCopy(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;
    .locals 13

    move-object v0, p0

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v1, p6

    const/4 v2, 0x0

    move/from16 v3, p5

    invoke-direct {p0, v2, v1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->createCopySourceInfo(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object v11

    const-string v2, "rewrite_internal_placeholder"

    invoke-virtual {v1, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v12, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$NodeRangeInfo;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v5, p4

    invoke-virtual {v1, v5, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    if-eq v5, v4, :cond_3

    if-gt v3, v5, :cond_2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    :cond_0
    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-direct {v4, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v3, v5, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->assertNoOverlap(Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;IILjava/util/List;)V

    :goto_0
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v11

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Start node must be before end node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "End node is not a original child of the given list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Start node is not a original child of the given list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public findEvent(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-direct {p0, v4, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNodeInEvent(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->isListRewrite()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v4

    move v5, v2

    :goto_2
    array-length v6, v4

    if-lt v5, v6, :cond_3

    goto :goto_3

    :cond_3
    aget-object v6, v4, v5

    invoke-direct {p0, v6, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNodeInEvent(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object p1, v4, v5

    return-object p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->findEvent(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChangeRootIterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$ParentIterator;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V

    return-object v0
.end method

.method public getChangedPropertieEvents(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->validateHasChildProperty(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->lastEvent:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    if-ne v1, p2, :cond_0

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    if-ne v2, p2, :cond_2

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->lastEvent:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->editGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/text/edits/TextEditGroup;

    return-object p1
.end method

.method public getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;
    .locals 1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->validateIsListProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->accessOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    invoke-direct {v0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->addEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    :cond_0
    return-object v0
.end method

.method public getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->accessOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNodeCopySources(Lorg/eclipse/jdt/core/dom/ASTNode;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->internalGetCopySources(Ljava/util/List;Lorg/eclipse/jdt/core/dom/ASTNode;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;
    .locals 1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->validateIsNodeProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->accessOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p3

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-direct {v0, p3, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->addEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V

    :cond_0
    return-object v0
.end method

.method public getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->accessOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyLocation(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p2, p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    new-instance p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-direct {p0, v5, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNodeInEvent(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    iget-object p2, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-direct {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-object p1

    :cond_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->isListRewrite()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v5

    move v6, v2

    :goto_2
    array-length v7, v5

    if-lt v6, v7, :cond_4

    goto :goto_3

    :cond_4
    aget-object v7, v5, v6

    invoke-direct {p0, v7, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNodeInEvent(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    iget-object p2, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-direct {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-object p1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public final getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/text/edits/TextEditGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasChangedProperties(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public internalGetCopySources(Ljava/util/List;Lorg/eclipse/jdt/core/dom/ASTNode;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p1

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isInsertBoundToPrevious(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->insertBoundToPrevious:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isRangeCopyPlaceholder(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    const-string v0, "rewrite_internal_placeholder"

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final markAsCopySource(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    invoke-direct {p0, v0, p3, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->createCopySourceInfo(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object p1

    return-object p1
.end method

.method public final markAsTracked(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Node is already marked as tracked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareMovedNodes(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeCopySources:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->prepareSingleNodeCopies()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->prepareNodeRangeCopies(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V

    :cond_1
    return-void
.end method

.method public revertMovedNodes()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodeRangeInfos:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->removeMoveRangePlaceholders()V

    :cond_0
    return-void
.end method

.method public setEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->editGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->editGroups:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->editGroups:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInsertBoundToPrevious(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->insertBoundToPrevious:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->insertBoundToPrevious:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->insertBoundToPrevious:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNodePropertyMapper(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->nodePropertyMapper:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$INodePropertyMapper;

    return-void
.end method

.method public setTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->trackedNodes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->eventLookup:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
