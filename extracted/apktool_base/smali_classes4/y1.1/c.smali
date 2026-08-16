.class public Ly1/c;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Ly1/d;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ly1/c;->b:I

    .line 3
    iput v0, p0, Ly1/c;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Ly1/c;->b:I

    .line 6
    iput p1, p0, Ly1/c;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/d;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/d;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/d;->i(Z)V

    :cond_0
    return-void
.end method

.method public g(I)Z
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/d;->j(I)Z

    move-result p1

    return p1

    :cond_0
    iput p1, p0, Ly1/c;->c:I

    const/4 p1, 0x0

    return p1
.end method

.method public h(I)Z
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/d;->k(I)Z

    move-result p1

    return p1

    :cond_0
    iput p1, p0, Ly1/c;->b:I

    const/4 p1, 0x0

    return p1
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/d;->l(Z)V

    :cond_0
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ly1/c;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Ly1/c;->a:Ly1/d;

    if-nez p1, :cond_0

    new-instance p1, Ly1/d;

    invoke-direct {p1, p2}, Ly1/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ly1/c;->a:Ly1/d;

    :cond_0
    iget-object p1, p0, Ly1/c;->a:Ly1/d;

    invoke-virtual {p1}, Ly1/d;->h()V

    iget-object p1, p0, Ly1/c;->a:Ly1/d;

    invoke-virtual {p1}, Ly1/d;->a()V

    iget p1, p0, Ly1/c;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p3, p0, Ly1/c;->a:Ly1/d;

    invoke-virtual {p3, p1}, Ly1/d;->k(I)Z

    iput p2, p0, Ly1/c;->b:I

    :cond_1
    iget p1, p0, Ly1/c;->c:I

    if-eqz p1, :cond_2

    iget-object p3, p0, Ly1/c;->a:Ly1/d;

    invoke-virtual {p3, p1}, Ly1/d;->j(I)Z

    iput p2, p0, Ly1/c;->c:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
