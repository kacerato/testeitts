.class public Li7/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ll7/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:Li7/b;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public e:Landroid/view/LayoutInflater;

.field public f:Lj7/b;

.field public g:Lj7/b;

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li7/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Li7/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Li7/a;->h:Z

    .line 17
    iput v1, p0, Li7/a;->i:I

    .line 18
    iput v1, p0, Li7/a;->j:I

    .line 19
    iput v1, p0, Li7/a;->k:I

    .line 20
    iput v1, p0, Li7/a;->l:I

    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iput-object p1, p0, Li7/a;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Li7/a;->c:Li7/b;

    .line 24
    iget-object p2, p0, Li7/a;->e:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Li7/a;->e:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Li7/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mData",
            "context",
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;",
            "Landroid/content/Context;",
            "Li7/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Li7/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Li7/a;->h:Z

    .line 4
    iput v1, p0, Li7/a;->i:I

    .line 5
    iput v1, p0, Li7/a;->j:I

    .line 6
    iput v1, p0, Li7/a;->k:I

    .line 7
    iput v1, p0, Li7/a;->l:I

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_0
    iput-object p2, p0, Li7/a;->b:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Li7/a;->c:Li7/b;

    .line 12
    iget-object p1, p0, Li7/a;->e:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Li7/a;->e:Landroid/view/LayoutInflater;

    :cond_1
    return-void
.end method

.method public static synthetic g(Li7/a;)Li7/b;
    .locals 0

    iget-object p0, p0, Li7/a;->c:Li7/b;

    return-object p0
.end method

.method public static t(Landroid/content/Context;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "color"
        }
    .end annotation

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

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

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj7/b;

    invoke-virtual {p1}, Lj7/b;->k()I

    move-result p1

    return p1
.end method

.method public h(Lj7/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj7/b;

    iget-object v1, v1, LF7/i;->a:Ljava/lang/String;

    iget-object v2, p1, LF7/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public i(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    instance-of v2, v1, Ll7/a;

    if-eqz v2, :cond_1

    check-cast v1, Ll7/a;

    invoke-virtual {p0, v1}, Li7/a;->j(Ll7/a;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j(Ll7/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    iget-boolean v0, p0, Li7/a;->h:Z

    if-eqz v0, :cond_0

    iget v1, p0, Li7/a;->i:I

    goto :goto_0

    :cond_0
    iget v1, p0, Li7/a;->k:I

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Li7/a;->j:I

    goto :goto_1

    :cond_1
    iget v0, p0, Li7/a;->l:I

    :goto_1
    iget-object v2, p1, Ll7/a;->h:Landroid/view/View;

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p1, Ll7/a;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p1, Ll7/a;->i:Landroid/view/View;

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p1, Ll7/a;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public m(I)Lj7/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj7/b;

    return-object p1
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Li7/a;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public o(Lj7/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Li7/a;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    check-cast p1, Ll7/a;

    invoke-virtual {p0, p1, p2}, Li7/a;->q(Ll7/a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Li7/a;->r(Landroid/view/ViewGroup;I)Ll7/a;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Li7/a;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Li7/a;->m:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method public final p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Li7/a;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Li7/a$e;

    invoke-direct {v1, p0, p1}, Li7/a$e;-><init>(Li7/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public q(Ll7/a;I)V
    .locals 5
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

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj7/b;

    iget-object v0, p0, Li7/a;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lj7/b;->A(Landroid/content/Context;Ll7/a;)V

    invoke-virtual {p0, p1}, Li7/a;->j(Ll7/a;)V

    new-instance v0, Li7/a$a;

    invoke-direct {v0, p0, p2}, Li7/a$a;-><init>(Li7/a;Lj7/b;)V

    iget-object v1, p1, Ll7/a;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p1, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, LF7/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p1, Ll7/a;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v2, 0x7f070115

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v1, p1, Ll7/a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v2, p2, LF7/i;->b:LF7/j;

    if-eqz v2, :cond_3

    iget-object v3, p0, Li7/a;->b:Landroid/content/Context;

    iget-object v4, p1, Ll7/a;->k:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v1, v4, p2}, LF7/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V

    :cond_3
    iget-object v1, p1, Ll7/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p1, Ll7/a;->j:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lj7/b;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Ll7/a;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Ll7/a;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Lj7/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p1, Ll7/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    invoke-virtual {p2}, LF7/i;->m()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Li7/a;->f:Lj7/b;

    if-ne v1, p2, :cond_8

    iget-object v1, p1, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v3, p0, Li7/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lj7/b;->w()I

    move-result v4

    invoke-static {v3, v4}, Li7/a;->t(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v1, p1, Ll7/a;->i:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v3, p0, Li7/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lj7/b;->x()I

    move-result v4

    invoke-static {v1, v3, v4}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_1

    :cond_8
    iget-object v1, p1, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v3, p0, Li7/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lj7/b;->y()I

    move-result v4

    invoke-static {v3, v4}, Li7/a;->t(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v1, p1, Ll7/a;->i:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v3, p0, Li7/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lj7/b;->v()I

    move-result v4

    invoke-static {v1, v3, v4}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    :cond_a
    :goto_1
    new-instance v1, Li7/a$b;

    invoke-direct {v1, p0, p2}, Li7/a$b;-><init>(Li7/a;Lj7/b;)V

    iget-object v3, p1, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_b
    iget-object v3, p1, Ll7/a;->d:Landroid/view/View;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_c
    iget-object v3, p1, Ll7/a;->a:Landroid/view/View;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_d
    iget-object v3, p1, Ll7/a;->c:Landroid/widget/ImageView;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_e
    iget-object v1, p1, Ll7/a;->f:Landroid/view/View;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    invoke-virtual {p2}, Lj7/b;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p1, Ll7/a;->i:Landroid/view/View;

    if-eqz v0, :cond_10

    new-instance v1, Li7/a$c;

    invoke-direct {v1, p0, p2}, Li7/a$c;-><init>(Li7/a;Lj7/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    iget-object p1, p1, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    new-instance v0, Li7/a$d;

    invoke-direct {v0, p0, p2}, Li7/a$d;-><init>(Li7/a;Lj7/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_11
    iget-object p2, p1, Ll7/a;->i:Landroid/view/View;

    if-eqz p2, :cond_12

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object p1, p1, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    :goto_2
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Ll7/a;
    .locals 3
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

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj7/b;

    invoke-virtual {v1}, Lj7/b;->k()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object p2, p0, Li7/a;->b:Landroid/content/Context;

    iget-object v0, p0, Li7/a;->e:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Lj7/b;->z(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Ll7/a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deleteElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public v(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mData",
            "notify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public w(ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gridMode",
            "iconHeightPx",
            "titleHeightPx"
        }
    .end annotation

    iput-boolean p1, p0, Li7/a;->h:Z

    if-eqz p1, :cond_0

    iput p2, p0, Li7/a;->i:I

    iput p3, p0, Li7/a;->j:I

    goto :goto_0

    :cond_0
    iput p2, p0, Li7/a;->k:I

    iput p3, p0, Li7/a;->l:I

    :goto_0
    return-void
.end method

.method public x(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    iget-object v0, p0, Li7/a;->f:Lj7/b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Li7/a;->g:Lj7/b;

    iput-object p1, p0, Li7/a;->f:Lj7/b;

    if-eqz v0, :cond_1

    iget-object p1, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Li7/a;->p(I)V

    :cond_1
    iget-object p1, p0, Li7/a;->f:Lj7/b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Li7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Li7/a;->p(I)V

    :cond_2
    return-void
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedElementColor"
        }
    .end annotation

    iput-object p1, p0, Li7/a;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method
