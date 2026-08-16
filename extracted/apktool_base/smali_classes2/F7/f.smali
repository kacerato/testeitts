.class public LF7/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LF7/i;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "LF7/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:LF7/g;

.field public d:Landroid/view/LayoutInflater;

.field public e:LF7/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:LF7/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public final i:LF7/e;

.field public final j:LF7/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;LF7/g;)V
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
            "TT;>;",
            "Landroid/content/Context;",
            "LF7/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LF7/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, LF7/f;->g:I

    iput v1, p0, LF7/f;->h:I

    new-instance v1, LF7/e;

    invoke-direct {v1}, LF7/e;-><init>()V

    iput-object v1, p0, LF7/f;->i:LF7/e;

    new-instance v1, LF7/f$a;

    invoke-direct {v1, p0}, LF7/f$a;-><init>(LF7/f;)V

    iput-object v1, p0, LF7/f;->j:LF7/b;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, LF7/f;->b:Landroid/content/Context;

    iput-object p3, p0, LF7/f;->c:LF7/g;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600b0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LF7/f;->g:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LF7/f;->h:I

    iget-object p1, p0, LF7/f;->d:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LF7/f;->d:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method

.method public static synthetic g(LF7/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, LF7/f;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic h(LF7/f;)LF7/i;
    .locals 0

    iget-object p0, p0, LF7/f;->e:LF7/i;

    return-object p0
.end method

.method public static synthetic i(LF7/f;)LF7/g;
    .locals 0

    iget-object p0, p0, LF7/f;->c:LF7/g;

    return-object p0
.end method

.method public static synthetic j(LF7/f;LF7/m;LF7/i;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LF7/f;->y(LF7/m;LF7/i;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

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

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF7/i;

    invoke-virtual {p1}, LF7/i;->k()I

    move-result p1

    return p1
.end method

.method public k(ILF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public l(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object p1, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n(LF7/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public o(LF7/i;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
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

    check-cast p1, LF7/m;

    invoke-virtual {p0, p1, p2}, LF7/f;->q(LF7/m;I)V

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

    invoke-virtual {p0, p1, p2}, LF7/f;->r(Landroid/view/ViewGroup;I)LF7/m;

    move-result-object p1

    return-object p1
.end method

.method public p(I)LF7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF7/i;

    return-object p1
.end method

.method public q(LF7/m;I)V
    .locals 8
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

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF7/i;

    iget-object v1, p0, LF7/f;->j:LF7/b;

    iput-object v1, v0, LF7/i;->k:LF7/b;

    iput-object p1, v0, LF7/i;->l:LF7/m;

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, LF7/i;->p(Landroid/content/Context;LF7/m;)V

    invoke-virtual {v0}, LF7/i;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p1, LF7/m;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, LF7/m;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, LF7/f;->e:LF7/i;

    if-ne v1, v0, :cond_1

    iget-object p2, p1, LF7/m;->e:Landroid/view/View;

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    const v2, 0x7f050172

    invoke-static {p2, v1, v2}, LVc/e;->s(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, LNc/b;->J0(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, LF7/m;->e:Landroid/view/View;

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p2, v1, v2}, LVc/e;->q(Landroid/view/View;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_1

    :cond_2
    iget-object p2, p1, LF7/m;->e:Landroid/view/View;

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p2, v1, v2}, LVc/e;->q(Landroid/view/View;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_1
    iget-object p2, p1, LF7/m;->a:Landroid/widget/TextView;

    new-instance v1, LF7/f$b;

    invoke-direct {v1, p0, v0}, LF7/f$b;-><init>(LF7/f;LF7/i;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, LF7/i;->j:LF7/c;

    if-eqz p2, :cond_3

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    iget-object v2, p0, LF7/f;->i:LF7/e;

    invoke-interface {p2, v0, v1, v2}, LF7/c;->a(LF7/i;Landroid/content/Context;LF7/e;)V

    iget-object p2, p1, LF7/m;->a:Landroid/widget/TextView;

    iget-object v1, p0, LF7/f;->i:LF7/e;

    iget v1, v1, LF7/e;->a:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    iget-object p2, p1, LF7/m;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object p2, p1, LF7/m;->g:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_4

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SEMI_CARD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object p2, v0, LF7/i;->b:LF7/j;

    if-eqz p2, :cond_5

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    iget-object v2, p1, LF7/m;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3, v0}, LF7/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V

    :cond_5
    iget-object p2, p1, LF7/m;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v1, p0, LF7/f;->g:I

    invoke-virtual {v0}, LF7/i;->e()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p1, LF7/m;->c:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, LF7/i;->l()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, v0}, LF7/f;->y(LF7/m;LF7/i;)V

    new-instance p2, LF7/f$c;

    invoke-direct {p2, p0, v0, p1}, LF7/f$c;-><init>(LF7/f;LF7/i;LF7/m;)V

    iget-object v1, p1, LF7/m;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, LF7/m;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, LF7/m;->c:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    iget-object p2, p1, LF7/m;->d:Landroid/widget/ImageView;

    const v1, 0x7f070142

    iget-object v2, p0, LF7/f;->b:Landroid/content/Context;

    invoke-static {p2, v1, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    new-instance p2, LF7/f$d;

    invoke-direct {p2, p0, v0}, LF7/f$d;-><init>(LF7/f;LF7/i;)V

    iget-object v1, p1, LF7/m;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, LF7/m;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, LF7/m;->c:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object p2, p1, LF7/m;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, LF7/i;->h()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v1

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG7/a;

    iget-object v4, p0, LF7/f;->d:Landroid/view/LayoutInflater;

    iget-object v5, p0, LF7/f;->b:Landroid/content/Context;

    iget-object v6, p1, LF7/m;->f:Landroid/widget/LinearLayout;

    iget v7, p0, LF7/f;->h:I

    invoke-virtual {v3, v4, v5, v6, v7}, LG7/a;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object p2, p1, LF7/m;->g:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, LF7/i;->j()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG7/a;

    iget-object v3, p0, LF7/f;->d:Landroid/view/LayoutInflater;

    iget-object v4, p0, LF7/f;->b:Landroid/content/Context;

    iget-object v5, p1, LF7/m;->g:Landroid/widget/LinearLayout;

    iget v6, p0, LF7/f;->h:I

    invoke-virtual {v2, v3, v4, v5, v6}, LG7/a;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    new-instance p2, LF7/f$e;

    invoke-direct {p2, p0, v0}, LF7/f$e;-><init>(LF7/f;LF7/i;)V

    iget-object v0, p1, LF7/m;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_9
    iget-object v0, p1, LF7/m;->e:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_a
    iget-object v0, p1, LF7/m;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_b
    iget-object v0, p1, LF7/m;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_c
    iget-object v0, p1, LF7/m;->c:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_d
    iget-object p1, p1, LF7/m;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_e
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)LF7/m;
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

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF7/i;

    invoke-virtual {v1}, LF7/i;->k()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object p2, p0, LF7/f;->b:Landroid/content/Context;

    iget-object v0, p0, LF7/f;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, LF7/i;->o(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)LF7/m;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Item doesn\'t exist inside this adapter!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Item doesn\'t exist inside this adapter!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF7/i;

    invoke-virtual {p0, v0}, LF7/f;->t(LF7/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

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
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public w(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->e:LF7/i;

    iput-object v0, p0, LF7/f;->f:LF7/i;

    iput-object p1, p0, LF7/f;->e:LF7/i;

    if-eqz v0, :cond_0

    iget-object p1, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    iget-object p1, p0, LF7/f;->e:LF7/i;

    if-eqz p1, :cond_1

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public x(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, LF7/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final y(LF7/m;LF7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/m;",
            "TT;)V"
        }
    .end annotation

    iget-object p2, p2, LF7/i;->f:LF7/h;

    iget-boolean p2, p2, LF7/h;->c:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, LF7/m;->d:Landroid/widget/ImageView;

    const v0, 0x7f07024a

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    invoke-static {p2, v0, v1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object p1, p1, LF7/m;->d:Landroid/widget/ImageView;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, LF7/m;->d:Landroid/widget/ImageView;

    const v0, 0x7f070248

    iget-object v1, p0, LF7/f;->b:Landroid/content/Context;

    invoke-static {p2, v0, v1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object p1, p1, LF7/m;->d:Landroid/widget/ImageView;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
