.class public abstract LV/r;
.super LV/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "LV/b<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "ViewTarget"

.field public static i:Z

.field public static j:I


# instance fields
.field public final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:LV/r$b;

.field public e:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/bumptech/glide/i$e;->l:I

    sput v0, LV/r;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LV/b;-><init>()V

    .line 2
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, LV/r;->c:Landroid/view/View;

    .line 3
    new-instance v0, LV/r$b;

    invoke-direct {v0, p1}, LV/r$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LV/r;->d:LV/r$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0, p1}, LV/r;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, LV/r;->u()LV/r;

    :cond_0
    return-void
.end method

.method public static t(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, LV/r;->i:Z

    if-nez v0, :cond_0

    sput p0, LV/r;->j:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(LV/o;)V
    .locals 1
    .param p1    # LV/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, LV/r;->d:LV/r$b;

    invoke-virtual {v0, p1}, LV/r$b;->k(LV/o;)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LV/r;->c:Landroid/view/View;

    return-object v0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, LV/b;->f(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LV/r;->d:LV/r$b;

    invoke-virtual {p1}, LV/r$b;->b()V

    iget-boolean p1, p0, LV/r;->f:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, LV/r;->p()V

    :cond_0
    return-void
.end method

.method public g(LU/d;)V
    .locals 0
    .param p1    # LU/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, LV/r;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public getRequest()LU/d;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, LV/r;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LU/d;

    if-eqz v1, :cond_0

    check-cast v0, LU/d;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i(LV/o;)V
    .locals 1
    .param p1    # LV/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, LV/r;->d:LV/r$b;

    invoke-virtual {v0, p1}, LV/r$b;->d(LV/o;)V

    return-void
.end method

.method public k(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, LV/b;->k(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, LV/r;->o()V

    return-void
.end method

.method public final l()LV/r;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV/r<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, LV/r;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LV/r$a;

    invoke-direct {v0, p0}, LV/r$a;-><init>(LV/r;)V

    iput-object v0, p0, LV/r;->e:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0}, LV/r;->o()V

    return-object p0
.end method

.method public final n()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LV/r;->c:Landroid/view/View;

    sget v1, LV/r;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, LV/r;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LV/r;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LV/r;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LV/r;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, LV/r;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LV/r;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LV/r;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV/r;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public q()V
    .locals 2

    invoke-virtual {p0}, LV/r;->getRequest()LU/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LV/r;->f:Z

    invoke-interface {v0}, LU/d;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV/r;->f:Z

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    invoke-virtual {p0}, LV/r;->getRequest()LU/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LU/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LU/d;->j()V

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    sput-boolean v0, LV/r;->i:Z

    iget-object v0, p0, LV/r;->c:Landroid/view/View;

    sget v1, LV/r;->j:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LV/r;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()LV/r;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV/r<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, LV/r;->d:LV/r$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, LV/r$b;->c:Z

    return-object p0
.end method
