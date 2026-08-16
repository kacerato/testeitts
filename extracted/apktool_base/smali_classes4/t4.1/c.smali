.class public Lt4/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/c$d;,
        Lt4/c$c;,
        Lt4/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation build Lk0/i;
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Lqe/e;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lt4/c;->a:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lqe/e;->a(Landroid/content/Context;)Lqe/e$a;

    move-result-object v0

    invoke-static {p1}, Lue/d;->l(Landroid/content/Context;)Lue/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lqe/e$a;->a(Lqe/i;)Lqe/e$a;

    move-result-object p1

    invoke-static {}, Lxe/a;->n()Lxe/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lqe/e$a;->a(Lqe/i;)Lqe/e$a;

    move-result-object p1

    invoke-interface {p1}, Lqe/e$a;->build()Lqe/e;

    move-result-object p1

    iput-object p1, p0, Lt4/c;->b:Lqe/e;

    return-void
.end method

.method public static synthetic g(Lt4/c;)Lqe/e;
    .locals 0

    iget-object p0, p0, Lt4/c;->b:Lqe/e;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public h(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final i(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->f()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final j(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public l()Z
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lt4/c;->i(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawText"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lt4/c;->i(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "rawText",
            "streaming"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lt4/c;->j(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->l(Z)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    iget-object v0, p0, Lt4/c;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    instance-of v0, p1, Lt4/c$d;

    if-eqz v0, :cond_0

    check-cast p1, Lt4/c$d;

    invoke-static {p1, p2}, Lt4/c$d;->a(Lt4/c$d;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    return-void

    :cond_0
    instance-of v0, p1, Lt4/c$c;

    if-eqz v0, :cond_1

    check-cast p1, Lt4/c$c;

    invoke-static {p1, p2}, Lt4/c$c;->a(Lt4/c$c;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    return-void

    :cond_1
    instance-of v0, p1, Lt4/c$b;

    if-eqz v0, :cond_2

    check-cast p1, Lt4/c$b;

    invoke-static {p1, p2}, Lt4/c$b;->a(Lt4/c$b;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lt4/c;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0028

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lt4/c$d;

    invoke-direct {p2, p0, p1, v1}, Lt4/c$d;-><init>(Lt4/c;Landroid/view/View;Lt4/c$a;)V

    return-object p2

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lt4/c;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0027

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lt4/c$c;

    invoke-direct {p2, p0, p1, v1}, Lt4/c$c;-><init>(Lt4/c;Landroid/view/View;Lt4/c$a;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lt4/c;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0026

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lt4/c$b;

    invoke-direct {p2, p0, p1, v1}, Lt4/c$b;-><init>(Lt4/c;Landroid/view/View;Lt4/c$a;)V

    return-object p2
.end method
