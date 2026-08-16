.class public LC5/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LC5/c$h;,
        LC5/c$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:LAc/b;

.field public static final f:LAc/b;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Landroid/view/LayoutInflater;

.field public final d:LC5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    sput-object v0, LC5/c;->e:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    sput-object v0, LC5/c;->f:LAc/b;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;LC5/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newItens",
            "context",
            "inspectorInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/d;",
            ">;",
            "Landroid/content/Context;",
            "LC5/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, LC5/c;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LC5/c;->c:Landroid/view/LayoutInflater;

    iput-object p3, p0, LC5/c;->d:LC5/j;

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, LC5/c;->h()V

    invoke-virtual {p0, p1}, LC5/c;->g(Ljava/util/List;)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/d;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/d;

    iget-object v0, v0, LC5/d;->c:LC5/d$a;

    sget-object v1, LC5/d$a;->GameObject:LC5/d$a;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/d;

    iget-object v0, v0, LC5/d;->c:LC5/d$a;

    sget-object v1, LC5/d$a;->Button:LC5/d$a;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC5/d;

    iget-object p1, p1, LC5/d;->c:LC5/d$a;

    sget-object v0, LC5/d$a;->Renderer:LC5/d$a;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public h()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, LC5/c;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LC5/c;->a:Ljava/util/List;

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

    :goto_0
    return-void
.end method

.method public i(I)LC5/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC5/d;

    return-object p1
.end method

.method public j(I)LC5/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC5/d;

    return-object p1
.end method

.method public final k(LC5/c$i;ILandroid/content/Context;LC5/d;Landroid/view/LayoutInflater;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "position",
            "context",
            "item",
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p4, LC5/d;->d:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p4, LC5/d;->d:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, LC5/b;

    iget-object v1, v4, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->Vector:LC5/b$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-static {v1, p5, v4, p2, p3}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_2

    :cond_0
    sget-object v2, LC5/b$a;->Component:LC5/b$a;

    if-eq v1, v2, :cond_2

    sget-object v2, LC5/b$a;->ComponentList:LC5/b$a;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    move-object v3, p5

    move v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    new-instance v7, LC5/c$f;

    invoke-direct {v7, p0}, LC5/c$f;-><init>(LC5/c;)V

    move-object v3, p5

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public m(LC5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public n(ILC5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "newElement"
        }
    .end annotation

    invoke-virtual {p0, p1}, LC5/c;->j(I)LC5/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, LC5/c;->o(LC5/d;LC5/d;)V

    :cond_0
    return-void
.end method

.method public o(LC5/d;LC5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "newElement"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
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

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
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

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LC5/c$i;

    iget-object v0, p0, LC5/c;->b:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, LC5/c;->q(LC5/c$i;ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    check-cast p1, LC5/c$h;

    invoke-virtual {p0, p1, p2}, LC5/c;->p(LC5/c$h;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
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

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance p2, LC5/c$i;

    iget-object v0, p0, LC5/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00d2

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, LC5/c$i;-><init>(Landroid/view/View;)V

    :goto_0
    move-object v2, p2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p2, LC5/c$h;

    iget-object v0, p0, LC5/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00d1

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, LC5/c$h;-><init>(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-eqz v2, :cond_2

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, LC5/c;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v2
.end method

.method public final p(LC5/c$h;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/d;

    iget-object v1, p1, LC5/c$h;->a:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v2, v0, LC5/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, LC5/c$h;->a:Landroid/widget/Button;

    new-instance v2, LC5/c$g;

    invoke-direct {v2, p0, v0, p1, p2}, LC5/c$g;-><init>(LC5/c;LC5/d;LC5/c$h;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final q(LC5/c$i;ILandroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "position",
            "context"
        }
    .end annotation

    iget-object v0, p0, LC5/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LC5/d;

    if-eqz v5, :cond_10

    iget-boolean v0, v5, LC5/d;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p1, LC5/c$i;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, v5, LC5/d;->d:LC5/a;

    iget v3, v3, LC5/a;->p:I

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p1, LC5/c$i;->g:Landroid/widget/LinearLayout;

    iget-object v3, v5, LC5/d;->d:LC5/a;

    iget v3, v3, LC5/a;->p:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, v5, LC5/d;->d:LC5/a;

    iget-boolean v0, v0, LC5/a;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, LC5/c$i;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, LC5/c$i;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v0, p1, LC5/c$i;->c:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p1, LC5/c$i;->c:Landroid/widget/ToggleButton;

    iget-object v6, v5, LC5/d;->d:LC5/a;

    invoke-virtual {v6}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, v5, LC5/d;->d:LC5/a;

    invoke-virtual {v0}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v0

    iget-object v6, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v5, LC5/d;->d:LC5/a;

    invoke-virtual {v7}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x2

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_4
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_2
    iget-object v7, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v5, LC5/d;->d:LC5/a;

    iget-boolean v6, v6, LC5/a;->e:Z

    if-eqz v6, :cond_5

    iget-object v6, p1, LC5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p1, LC5/c$i;->c:Landroid/widget/ToggleButton;

    new-instance v7, LC5/c$a;

    invoke-direct {v7, p0, v5, p1, p2}, LC5/c$a;-><init>(LC5/c;LC5/d;LC5/c$i;I)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    :cond_5
    iget-object v6, p1, LC5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p1, LC5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_3
    iget-object v6, v5, LC5/d;->d:LC5/a;

    iget-boolean v6, v6, LC5/a;->e:Z

    if-eqz v6, :cond_6

    iget-object v6, p1, LC5/c$i;->a:Landroid/widget/TextView;

    new-instance v7, LC5/c$b;

    invoke-direct {v7, p0, v5, p1, p2}, LC5/c$b;-><init>(LC5/c;LC5/d;LC5/c$i;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v6, v5, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v6, :cond_7

    iget-object v6, p1, LC5/c$i;->a:Landroid/widget/TextView;

    new-instance v7, LC5/c$c;

    invoke-direct {v7, p0, v5, p3}, LC5/c$c;-><init>(LC5/c;LC5/d;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    :cond_7
    iget-object v6, p1, LC5/c$i;->a:Landroid/widget/TextView;

    new-instance v7, LC5/c$d;

    invoke-direct {v7, p0, v5, p3}, LC5/c$d;-><init>(LC5/c;LC5/d;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    iget-object v6, p1, LC5/c$i;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    iget-object v6, v5, LC5/d;->d:LC5/a;

    iget-boolean v6, v6, LC5/a;->d:Z

    if-eqz v6, :cond_9

    iget-object v1, p1, LC5/c$i;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, LC5/c$i;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    iget-object v6, v5, LC5/d;->d:LC5/a;

    iget-boolean v6, v6, LC5/a;->c:Z

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V

    iget-object v1, p1, LC5/c$i;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    new-instance v6, LC5/c$e;

    invoke-direct {v6, p0, v5}, LC5/c$e;-><init>(LC5/c;LC5/d;)V

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    goto :goto_5

    :cond_9
    iget-object v6, p1, LC5/c$i;->f:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, LC5/c$i;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    :cond_a
    :goto_5
    iget-object v1, v5, LC5/d;->d:LC5/a;

    if-eqz v1, :cond_c

    iget v1, v1, LC5/a;->j:I

    iget-object v6, p1, LC5/c$i;->b:Landroid/widget/ImageView;

    invoke-static {v6, v1, p3}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v1, v5, LC5/d;->d:LC5/a;

    iget-boolean v1, v1, LC5/a;->k:Z

    if-eqz v1, :cond_b

    iget-object v1, p1, LC5/c$i;->b:Landroid/widget/ImageView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    invoke-static {v1, p3, v4}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    goto :goto_6

    :cond_b
    iget-object v1, p1, LC5/c$i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6

    :cond_c
    iget-object v1, p1, LC5/c$i;->b:Landroid/widget/ImageView;

    const v4, 0x7f07024f

    invoke-static {v1, v4, p3}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_6
    iget-object v1, v5, LC5/d;->d:LC5/a;

    if-eqz v1, :cond_d

    iget-object v4, p1, LC5/c$i;->h:Landroid/widget/LinearLayout;

    iget-object v1, v1, LC5/a;->m:Ljava/util/List;

    invoke-static {v4, p3, v1}, LC5/h;->C(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;)V

    :cond_d
    iget-object v1, v5, LC5/d;->d:LC5/a;

    iget-boolean v4, v1, LC5/a;->s:Z

    if-eqz v4, :cond_e

    iget-object v4, p1, LC5/c$i;->a:Landroid/widget/TextView;

    iget-object v1, v1, LC5/a;->a:Ljava/lang/String;

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v1, p1, LC5/c$i;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget-object v6, v5, LC5/d;->d:LC5/a;

    iget-object v6, v6, LC5/a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v1, v4, v2, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_e
    iget-object v4, p1, LC5/c$i;->a:Landroid/widget/TextView;

    iget-object v1, v1, LC5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, p1, LC5/c$i;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v0, :cond_f

    iget-object v0, v5, LC5/d;->d:LC5/a;

    iput-boolean v3, v0, LC5/a;->r:Z

    iget-object v6, p0, LC5/c;->c:Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LC5/c;->k(LC5/c$i;ILandroid/content/Context;LC5/d;Landroid/view/LayoutInflater;)V

    goto :goto_8

    :cond_f
    iget-object p1, v5, LC5/d;->d:LC5/a;

    iput-boolean v2, p1, LC5/a;->r:Z

    :cond_10
    :goto_8
    return-void
.end method
