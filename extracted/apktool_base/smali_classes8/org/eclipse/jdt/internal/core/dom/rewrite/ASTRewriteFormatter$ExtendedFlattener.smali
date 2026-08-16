.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtendedFlattener"
.end annotation


# instance fields
.field private positions:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->positions:Ljava/util/ArrayList;

    return-void
.end method

.method private addMarker(Ljava/lang/Object;II)Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;-><init>()V

    iput p2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->offset:I

    iput p3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    iput-object p1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->data:Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->positions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private fixupLength(Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->data:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    iget p1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->offset:I

    sub-int/2addr p2, p1

    iput p2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getMarkers()[Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    return-object v0
.end method

.method public postVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getPlaceholders()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->getPlaceholderData(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->fixupLength(Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->fixupLength(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public preVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->addMarker(Ljava/lang/Object;II)Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getPlaceholders()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->getPlaceholderData(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->addMarker(Ljava/lang/Object;II)Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    :cond_1
    return-void
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getPlaceholders()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->isCollapsed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/Block;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visit(Lorg/eclipse/jdt/core/dom/Block;)Z

    move-result p1

    return p1
.end method
