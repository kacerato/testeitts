.class public LYc/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LYc/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "LYc/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljd/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/LayoutInflater;

.field public d:LYc/a;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;LYc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "objects",
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljd/b;",
            ">;",
            "LYc/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, LYc/f;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LYc/f;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, LYc/f;->b:Ljava/util/List;

    iput-object p3, p0, LYc/f;->d:LYc/a;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LYc/f;->a:Landroid/content/Context;

    iget-object v1, p0, LYc/f;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iput-object v0, p0, LYc/f;->b:Ljava/util/List;

    iput-object v0, p0, LYc/f;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, LYc/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(LYc/f$b;I)V
    .locals 4
    .param p1    # LYc/f$b;
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

    iget-object v0, p0, LYc/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, LYc/f$b;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ljd/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, LYc/f$b;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, LYc/f$b;->e:Landroid/widget/LinearLayout;

    new-instance v2, LYc/f$a;

    invoke-direct {v2, p0, p2}, LYc/f$a;-><init>(LYc/f;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Ljd/b;->h()Ljd/b$a;

    move-result-object v1

    sget-object v2, Ljd/b$a;->Texture:Ljd/b$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p1, LYc/f$b;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, LYc/f$b;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p1, LYc/f$b;->d:Landroid/widget/ImageView;

    iget-object v2, p0, LYc/f;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Ljd/b;->l(Landroid/widget/ImageView;Ljd/b;Landroid/content/Context;)V

    iget v0, p0, LYc/f;->e:I

    if-ne v0, p2, :cond_2

    iget-object p1, p1, LYc/f$b;->e:Landroid/widget/LinearLayout;

    iget-object p2, p0, LYc/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05003d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, LYc/f$b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public i(Landroid/view/ViewGroup;I)LYc/f$b;
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

    iget-object p2, p0, LYc/f;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00bd

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LYc/f$b;

    invoke-direct {p2, p0, p1}, LYc/f$b;-><init>(LYc/f;Landroid/view/View;)V

    return-object p2
.end method

.method public j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget v0, p0, LYc/f;->e:I

    iput p1, p0, LYc/f;->e:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget v1, p0, LYc/f;->e:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    iget-object v0, p0, LYc/f;->d:LYc/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, LYc/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, LYc/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, LYc/f;->d:LYc/a;

    iget-object v1, p0, LYc/f;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljd/b;

    invoke-interface {v0, p1}, LYc/a;->b(Ljd/b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LYc/f;->d:LYc/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LYc/a;->b(Ljd/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Ljava/util/List;)V
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
            "Ljd/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LYc/f;->l(Ljava/util/List;Z)V

    const/4 p1, 0x0

    iput p1, p0, LYc/f;->e:I

    invoke-virtual {p0, p1}, LYc/f;->j(I)V

    return-void
.end method

.method public l(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objects",
            "notify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljd/b;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, LYc/f;->b:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, LYc/f;->e:I

    invoke-virtual {p0, p1}, LYc/f;->j(I)V

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

    check-cast p1, LYc/f$b;

    invoke-virtual {p0, p1, p2}, LYc/f;->h(LYc/f$b;I)V

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

    invoke-virtual {p0, p1, p2}, LYc/f;->i(Landroid/view/ViewGroup;I)LYc/f$b;

    move-result-object p1

    return-object p1
.end method
