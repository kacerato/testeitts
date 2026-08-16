.class public Lv4/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv4/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lv4/a$d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/LayoutInflater;

.field public d:Lv4/h;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv4/h;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks",
            "framesPerSecond"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv4/a;->b:Ljava/util/List;

    iput-object p1, p0, Lv4/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lv4/a;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lv4/a;->d:Lv4/h;

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, LNc/b;->k0(F)I

    move-result p1

    iput p1, p0, Lv4/a;->e:I

    iput p3, p0, Lv4/a;->f:I

    return-void
.end method

.method public static synthetic g(Lv4/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lv4/a;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv4/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lv4/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lv4/a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lv4/a;->c:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lv4/a;->d:Lv4/h;

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lv4/a;->f:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lv4/a;->e:I

    return v0
.end method

.method public l(Lv4/a$d;I)V
    .locals 5
    .param p1    # Lv4/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "p"
        }
    .end annotation

    iget-object v0, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lv4/b;->a:I

    int-to-float v1, v1

    iget v2, p0, Lv4/a;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x2

    invoke-static {v1, v2}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_5

    const-string v2, "50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lv4/a$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v1, :cond_4

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    iget v2, p0, Lv4/a;->e:I

    invoke-static {v1, v2}, LNc/b;->N(II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lv4/a;->p(Lv4/a$d;I)V

    goto :goto_2

    :cond_4
    iget v1, p0, Lv4/a;->e:I

    invoke-virtual {p0, p1, v1}, Lv4/a;->p(Lv4/a$d;I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, p1, Lv4/a$d;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lv4/a$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x42000000    # 32.0f

    iget-object v2, p0, Lv4/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lv4/a;->p(Lv4/a$d;I)V

    :goto_2
    iget v1, p0, Lv4/a;->g:I

    if-ne p2, v1, :cond_6

    iget-object v1, p1, Lv4/a$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v1, p1, Lv4/a$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v1, p1, Lv4/a$d;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lv4/a$a;

    invoke-direct {v2, p0, p2}, Lv4/a$a;-><init>(Lv4/a;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz p2, :cond_7

    iget-object p2, p1, Lv4/a$d;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lv4/a$d;->b:Landroid/widget/LinearLayout;

    new-instance p2, Lv4/a$b;

    invoke-direct {p2, p0, v0}, Lv4/a$b;-><init>(Lv4/a;Lv4/b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    :cond_7
    iget-object p2, p1, Lv4/a$d;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lv4/a$d;->b:Landroid/widget/LinearLayout;

    new-instance p2, Lv4/a$c;

    invoke-direct {p2, p0}, Lv4/a$c;-><init>(Lv4/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_4
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lv4/a$d;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p2, p0, Lv4/a;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0035

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lv4/a$d;

    invoke-direct {p2, p0, p1}, Lv4/a$d;-><init>(Lv4/a;Landroid/view/View;)V

    return-object p2
.end method

.method public n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv4/a;->s(I)V

    iget-object p1, p0, Lv4/a;->d:Lv4/h;

    if-eqz p1, :cond_0

    iget v0, p0, Lv4/a;->g:I

    invoke-interface {p1, v0}, Lv4/h;->a(I)V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesPerSecond"
        }
    .end annotation

    iput p1, p0, Lv4/a;->f:I

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "p"
        }
    .end annotation

    check-cast p1, Lv4/a$d;

    invoke-virtual {p0, p1, p2}, Lv4/a;->l(Lv4/a$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lv4/a;->m(Landroid/view/ViewGroup;I)Lv4/a$d;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lv4/a$d;I)V
    .locals 1
    .param p1    # Lv4/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "size"
        }
    .end annotation

    iget-object v0, p1, Lv4/a$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p1, p1, Lv4/a$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv4/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lv4/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public r(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinSize"
        }
    .end annotation

    iget v0, p0, Lv4/a;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lv4/a;->e:I

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    iget v0, p0, Lv4/a;->g:I

    iput p1, p0, Lv4/a;->g:I

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget p1, p0, Lv4/a;->g:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
