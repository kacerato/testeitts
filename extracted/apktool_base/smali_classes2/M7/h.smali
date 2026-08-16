.class public LM7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/content/Context;

.field public c:Landroid/view/LayoutInflater;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LM7/h;->d:Ljava/util/List;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, LM7/h;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "context"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LM7/h;->d:Ljava/util/List;

    const/4 v0, 0x2

    .line 6
    iput v0, p0, LM7/h;->e:I

    .line 7
    iput-object p1, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    .line 8
    iput-object p2, p0, LM7/h;->b:Landroid/content/Context;

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LM7/h;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public b(LM7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, LM7/g;->l(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public final c(LM7/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, LM7/h;->b:Landroid/content/Context;

    iget-object v2, p0, LM7/h;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, v1, v2}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, LM7/g;->k()V

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, LM7/h;->j(Landroid/widget/LinearLayout;)LM7/k;

    move-result-object v0

    invoke-virtual {v0}, LM7/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, LM7/g;->n(Landroid/view/View;)V

    return-void
.end method

.method public d(I)LM7/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM7/g;

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    invoke-virtual {p0, v1}, LM7/h;->c(LM7/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(LM7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, LM7/h;->c(LM7/g;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)LM7/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-virtual {v0, p2, p1, p3}, LM7/k;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    return-object v0
.end method

.method public final j(Landroid/widget/LinearLayout;)LM7/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    iget-object v0, p0, LM7/h;->b:Landroid/content/Context;

    iget-object v1, p0, LM7/h;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, p1, v1}, LM7/h;->i(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)LM7/k;

    move-result-object p1

    return-object p1
.end method

.method public k(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "context"
        }
    .end annotation

    iput-object p1, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, LM7/h;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LM7/h;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public l(Ltc/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {v2, p1}, LM7/g;->h(Ltc/h;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public m(Ltc/h;Landroid/graphics/Rect;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touch",
            "rect"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {v2, p1, p2}, LM7/g;->i(Ltc/h;Landroid/graphics/Rect;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LM7/h;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LM7/g;->k()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o(Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    iput-object p1, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iput-object p1, p0, LM7/h;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LM7/h;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, LM7/h;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
