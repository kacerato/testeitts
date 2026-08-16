.class public abstract LU/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LU/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final B:I = -0x1

.field public static final C:I = 0x2

.field public static final D:I = 0x4

.field public static final E:I = 0x8

.field public static final F:I = 0x10

.field public static final G:I = 0x20

.field public static final H:I = 0x40

.field public static final I:I = 0x80

.field public static final J:I = 0x100

.field public static final K:I = 0x200

.field public static final L:I = 0x400

.field public static final M:I = 0x800

.field public static final N:I = 0x1000

.field public static final O:I = 0x2000

.field public static final P:I = 0x4000

.field public static final Q:I = 0x8000

.field public static final R:I = 0x10000

.field public static final S:I = 0x20000

.field public static final T:I = 0x40000

.field public static final U:I = 0x80000

.field public static final V:I = 0x100000


# instance fields
.field public A:Z

.field public b:I

.field public c:F

.field public d:Lcom/bumptech/glide/load/engine/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Lcom/bumptech/glide/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:LC/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public p:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:I

.field public r:LC/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public s:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "LC/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LU/a;->c:F

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/i;

    iput-object v0, p0, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    sget-object v0, Lcom/bumptech/glide/h;->NORMAL:Lcom/bumptech/glide/h;

    iput-object v0, p0, LU/a;->e:Lcom/bumptech/glide/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->j:Z

    const/4 v1, -0x1

    iput v1, p0, LU/a;->k:I

    iput v1, p0, LU/a;->l:I

    invoke-static {}, LX/c;->a()LX/c;

    move-result-object v1

    iput-object v1, p0, LU/a;->m:LC/e;

    iput-boolean v0, p0, LU/a;->o:Z

    new-instance v1, LC/h;

    invoke-direct {v1}, LC/h;-><init>()V

    iput-object v1, p0, LU/a;->r:LC/h;

    new-instance v1, LY/b;

    invoke-direct {v1}, LY/b;-><init>()V

    iput-object v1, p0, LU/a;->s:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, LU/a;->t:Ljava/lang/Class;

    iput-boolean v0, p0, LU/a;->z:Z

    return-void
.end method

.method public static d0(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(J)LU/a;
    .locals 1
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/J;->g:LC/g;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final A0()LU/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public final B()Lcom/bumptech/glide/load/engine/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    return-object v0
.end method

.method public final B0()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LU/a;->A0()LU/a;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, LU/a;->g:I

    return v0
.end method

.method public C0(LC/g;Ljava/lang/Object;)LU/a;
    .locals 1
    .param p1    # LC/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "LC/g<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LU/a;->r:LC/h;

    invoke-virtual {v0, p1, p2}, LC/h;->c(LC/g;Ljava/lang/Object;)LC/h;

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final D()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public D0(LC/e;)LU/a;
    .locals 1
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->D0(LC/e;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC/e;

    iput-object p1, p0, LU/a;->m:LC/e;

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final E()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public E0(F)LU/a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->E0(F)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, LU/a;->c:F

    iget p1, p0, LU/a;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F()I
    .locals 1

    iget v0, p0, LU/a;->q:I

    return v0
.end method

.method public F0(Z)LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object p1

    invoke-virtual {p1, v1}, LU/a;->F0(Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    iput-boolean p1, p0, LU/a;->j:Z

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->y:Z

    return v0
.end method

.method public G0(Landroid/content/res/Resources$Theme;)LU/a;
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->G0(Landroid/content/res/Resources$Theme;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LU/a;->v:Landroid/content/res/Resources$Theme;

    iget p1, p0, LU/a;->b:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final H()LC/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU/a;->r:LC/h;

    return-object v0
.end method

.method public H0(I)LU/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, LK/b;->b:LC/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final I()I
    .locals 1

    iget v0, p0, LU/a;->k:I

    return v0
.end method

.method public I0(LC/l;)LU/a;
    .locals 1
    .param p1    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LU/a;->J0(LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final J()I
    .locals 1

    iget v0, p0, LU/a;->l:I

    return v0
.end method

.method public J0(LC/l;Z)LU/a;
    .locals 2
    .param p1    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LU/a;->J0(LC/l;Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>(LC/l;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/s;->a()LC/l;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    new-instance v0, LP/f;

    invoke-direct {v0, p1}, LP/f;-><init>(LC/l;)V

    const-class p1, LP/c;

    invoke-virtual {p0, p1, v0, p2}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final K()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final K0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LU/a;->K0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LU/a;->r(Lcom/bumptech/glide/load/resource/bitmap/p;)LU/a;

    invoke-virtual {p0, p2}, LU/a;->I0(LC/l;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final L()I
    .locals 1

    iget v0, p0, LU/a;->i:I

    return v0
.end method

.method public L0(Ljava/lang/Class;LC/l;)LU/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "LC/l<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final M()Lcom/bumptech/glide/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU/a;->e:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method public M0(Ljava/lang/Class;LC/l;Z)LU/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "LC/l<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LU/a;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, LU/a;->b:I

    const/4 p2, 0x1

    iput-boolean p2, p0, LU/a;->o:Z

    const v0, 0x10800

    or-int/2addr v0, p1

    iput v0, p0, LU/a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LU/a;->z:Z

    if-eqz p3, :cond_1

    const p3, 0x30800

    or-int/2addr p1, p3

    iput p1, p0, LU/a;->b:I

    iput-boolean p2, p0, LU/a;->n:Z

    :cond_1
    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final N()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, LU/a;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs N0([LC/l;)LU/a;
    .locals 2
    .param p1    # [LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, LC/f;

    invoke-direct {v0, p1}, LC/f;-><init>([LC/l;)V

    invoke-virtual {p0, v0, v1}, LU/a;->J0(LC/l;Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, LU/a;->I0(LC/l;)LU/a;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final O()LC/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU/a;->m:LC/e;

    return-object v0
.end method

.method public varargs O0([LC/l;)LU/a;
    .locals 1
    .param p1    # [LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LC/f;

    invoke-direct {v0, p1}, LC/f;-><init>([LC/l;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LU/a;->J0(LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final P()F
    .locals 1

    iget v0, p0, LU/a;->c:F

    return v0
.end method

.method public P0(Z)LU/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->P0(Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, LU/a;->A:Z

    iget p1, p0, LU/a;->b:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final Q()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LU/a;->v:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public Q0(Z)LU/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->Q0(Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, LU/a;->x:Z

    iget p1, p0, LU/a;->b:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final R()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "LC/l<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, LU/a;->s:Ljava/util/Map;

    return-object v0
.end method

.method public final S()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->A:Z

    return v0
.end method

.method public final T()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->x:Z

    return v0
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->w:Z

    return v0
.end method

.method public final V()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LU/a;->c0(I)Z

    move-result v0

    return v0
.end method

.method public final W()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->u:Z

    return v0
.end method

.method public final X()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->j:Z

    return v0
.end method

.method public final Y()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LU/a;->c0(I)Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->z:Z

    return v0
.end method

.method public a(LU/a;)LU/a;
    .locals 4
    .param p1    # LU/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU/a<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->a(LU/a;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, LU/a;->b:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, LU/a;->c:F

    iput v0, p0, LU/a;->c:F

    :cond_1
    iget v0, p1, LU/a;->b:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, LU/a;->x:Z

    iput-boolean v0, p0, LU/a;->x:Z

    :cond_2
    iget v0, p1, LU/a;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, LU/a;->A:Z

    iput-boolean v0, p0, LU/a;->A:Z

    :cond_3
    iget v0, p1, LU/a;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    iput-object v0, p0, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    :cond_4
    iget v0, p1, LU/a;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, LU/a;->e:Lcom/bumptech/glide/h;

    iput-object v0, p0, LU/a;->e:Lcom/bumptech/glide/h;

    :cond_5
    iget v0, p1, LU/a;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, LU/a;->d0(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, LU/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    iput v1, p0, LU/a;->g:I

    iget v0, p0, LU/a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, LU/a;->b:I

    :cond_6
    iget v0, p1, LU/a;->b:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, LU/a;->d0(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, LU/a;->g:I

    iput v0, p0, LU/a;->g:I

    iput-object v2, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, LU/a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, LU/a;->b:I

    :cond_7
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, LU/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    iput v1, p0, LU/a;->i:I

    iget v0, p0, LU/a;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, LU/a;->b:I

    :cond_8
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, LU/a;->i:I

    iput v0, p0, LU/a;->i:I

    iput-object v2, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    iget v0, p0, LU/a;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, LU/a;->b:I

    :cond_9
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, LU/a;->j:Z

    iput-boolean v0, p0, LU/a;->j:Z

    :cond_a
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, LU/a;->l:I

    iput v0, p0, LU/a;->l:I

    iget v0, p1, LU/a;->k:I

    iput v0, p0, LU/a;->k:I

    :cond_b
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, LU/a;->m:LC/e;

    iput-object v0, p0, LU/a;->m:LC/e;

    :cond_c
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, LU/a;->t:Ljava/lang/Class;

    iput-object v0, p0, LU/a;->t:Ljava/lang/Class;

    :cond_d
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, LU/a;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    iput v1, p0, LU/a;->q:I

    iget v0, p0, LU/a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, LU/a;->b:I

    :cond_e
    iget v0, p1, LU/a;->b:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, LU/a;->q:I

    iput v0, p0, LU/a;->q:I

    iput-object v2, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    iget v0, p0, LU/a;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, LU/a;->b:I

    :cond_f
    iget v0, p1, LU/a;->b:I

    const v2, 0x8000

    invoke-static {v0, v2}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, LU/a;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, LU/a;->v:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, LU/a;->b:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, LU/a;->o:Z

    iput-boolean v0, p0, LU/a;->o:Z

    :cond_11
    iget v0, p1, LU/a;->b:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, LU/a;->n:Z

    iput-boolean v0, p0, LU/a;->n:Z

    :cond_12
    iget v0, p1, LU/a;->b:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, LU/a;->s:Ljava/util/Map;

    iget-object v2, p1, LU/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, LU/a;->z:Z

    iput-boolean v0, p0, LU/a;->z:Z

    :cond_13
    iget v0, p1, LU/a;->b:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, LU/a;->d0(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, LU/a;->y:Z

    iput-boolean v0, p0, LU/a;->y:Z

    :cond_14
    iget-boolean v0, p0, LU/a;->o:Z

    if-nez v0, :cond_15

    iget-object v0, p0, LU/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, LU/a;->b:I

    iput-boolean v1, p0, LU/a;->n:Z

    const v1, -0x20801

    and-int/2addr v0, v1

    iput v0, p0, LU/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->z:Z

    :cond_15
    iget v0, p0, LU/a;->b:I

    iget v1, p1, LU/a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, LU/a;->b:I

    iget-object v0, p0, LU/a;->r:LC/h;

    iget-object p1, p1, LU/a;->r:LC/h;

    invoke-virtual {v0, p1}, LC/h;->b(LC/h;)V

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public b()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->w:Z

    invoke-virtual {p0}, LU/a;->j0()LU/a;

    move-result-object v0

    return-object v0
.end method

.method public c()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->K0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public final c0(I)Z
    .locals 1

    iget v0, p0, LU/a;->b:I

    invoke-static {v0, p1}, LU/a;->d0(II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    return-object v0
.end method

.method public final e0()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, LU/a;->c0(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LU/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LU/a;

    iget v0, p1, LU/a;->c:F

    iget v2, p0, LU/a;->c:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LU/a;->g:I

    iget v2, p1, LU/a;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, LU/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, LY/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LU/a;->i:I

    iget v2, p1, LU/a;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, LU/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, LY/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LU/a;->q:I

    iget v2, p1, LU/a;->q:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, LU/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, LY/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LU/a;->j:Z

    iget-boolean v2, p1, LU/a;->j:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, LU/a;->k:I

    iget v2, p1, LU/a;->k:I

    if-ne v0, v2, :cond_0

    iget v0, p0, LU/a;->l:I

    iget v2, p1, LU/a;->l:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LU/a;->n:Z

    iget-boolean v2, p1, LU/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LU/a;->o:Z

    iget-boolean v2, p1, LU/a;->o:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LU/a;->x:Z

    iget-boolean v2, p1, LU/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LU/a;->y:Z

    iget-boolean v2, p1, LU/a;->y:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    iget-object v2, p1, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/a;->e:Lcom/bumptech/glide/h;

    iget-object v2, p1, LU/a;->e:Lcom/bumptech/glide/h;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LU/a;->r:LC/h;

    iget-object v2, p1, LU/a;->r:LC/h;

    invoke-virtual {v0, v2}, LC/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/a;->s:Ljava/util/Map;

    iget-object v2, p1, LU/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/a;->t:Ljava/lang/Class;

    iget-object v2, p1, LU/a;->t:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/a;->m:LC/e;

    iget-object v2, p1, LU/a;->m:LC/e;

    invoke-static {v0, v2}, LY/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/a;->v:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, LU/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, LY/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->y0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public final f0()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->o:Z

    return v0
.end method

.method public g()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->K0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public final g0()Z
    .locals 1

    iget-boolean v0, p0, LU/a;->n:Z

    return v0
.end method

.method public h()LU/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/a;

    new-instance v1, LC/h;

    invoke-direct {v1}, LC/h;-><init>()V

    iput-object v1, v0, LU/a;->r:LC/h;

    iget-object v2, p0, LU/a;->r:LC/h;

    invoke-virtual {v1, v2}, LC/h;->b(LC/h;)V

    new-instance v1, LY/b;

    invoke-direct {v1}, LY/b;-><init>()V

    iput-object v1, v0, LU/a;->s:Ljava/util/Map;

    iget-object v2, p0, LU/a;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, LU/a;->u:Z

    iput-boolean v1, v0, LU/a;->w:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final h0()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, LU/a;->c0(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LU/a;->c:F

    invoke-static {v0}, LY/m;->l(F)I

    move-result v0

    iget v1, p0, LU/a;->g:I

    invoke-static {v1, v0}, LY/m;->o(II)I

    move-result v0

    iget-object v1, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, LU/a;->i:I

    invoke-static {v1, v0}, LY/m;->o(II)I

    move-result v0

    iget-object v1, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, LU/a;->q:I

    invoke-static {v1, v0}, LY/m;->o(II)I

    move-result v0

    iget-object v1, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, LU/a;->j:Z

    invoke-static {v1, v0}, LY/m;->r(ZI)I

    move-result v0

    iget v1, p0, LU/a;->k:I

    invoke-static {v1, v0}, LY/m;->o(II)I

    move-result v0

    iget v1, p0, LU/a;->l:I

    invoke-static {v1, v0}, LY/m;->o(II)I

    move-result v0

    iget-boolean v1, p0, LU/a;->n:Z

    invoke-static {v1, v0}, LY/m;->r(ZI)I

    move-result v0

    iget-boolean v1, p0, LU/a;->o:Z

    invoke-static {v1, v0}, LY/m;->r(ZI)I

    move-result v0

    iget-boolean v1, p0, LU/a;->x:Z

    invoke-static {v1, v0}, LY/m;->r(ZI)I

    move-result v0

    iget-boolean v1, p0, LU/a;->y:Z

    invoke-static {v1, v0}, LY/m;->r(ZI)I

    move-result v0

    iget-object v1, p0, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, LU/a;->e:Lcom/bumptech/glide/h;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, LU/a;->r:LC/h;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, LU/a;->s:Ljava/util/Map;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, LU/a;->t:Ljava/lang/Class;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, LU/a;->m:LC/e;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, LU/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, LY/m;->p(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Class;)LU/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->i(Ljava/lang/Class;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, LU/a;->t:Ljava/lang/Class;

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final i0()Z
    .locals 2

    iget v0, p0, LU/a;->l:I

    iget v1, p0, LU/a;->k:I

    invoke-static {v0, v1}, LY/m;->v(II)Z

    move-result v0

    return v0
.end method

.method public j0()LU/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->u:Z

    invoke-virtual {p0}, LU/a;->A0()LU/a;

    move-result-object v0

    return-object v0
.end method

.method public k()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->k:LC/g;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public k0(Z)LU/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->k0(Z)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, LU/a;->y:Z

    iget p1, p0, LU/a;->b:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public l0()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->r0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/bumptech/glide/load/engine/i;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/i;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/i;

    iput-object p1, p0, LU/a;->d:Lcom/bumptech/glide/load/engine/i;

    iget p1, p0, LU/a;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public m0()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->p0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public n0()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->r0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public o0()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->p0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public p()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, LP/i;->b:LC/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LU/a;->z0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public q()LU/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0}, LU/a;->q()LU/a;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LU/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, LU/a;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, LU/a;->n:Z

    const v2, -0x20801

    and-int/2addr v0, v2

    iput-boolean v1, p0, LU/a;->o:Z

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, LU/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->z:Z

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object v0

    return-object v0
.end method

.method public q0(LC/l;)LU/a;
    .locals 1
    .param p1    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LU/a;->J0(LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/bumptech/glide/load/resource/bitmap/p;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->h:LC/g;

    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final r0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LU/a;->r0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LU/a;->r(Lcom/bumptech/glide/load/resource/bitmap/p;)LU/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, LU/a;->J0(LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroid/graphics/Bitmap$CompressFormat;)LU/a;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/e;->c:LC/g;

    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public s0(Ljava/lang/Class;LC/l;)LU/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "LC/l<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LU/a;->M0(Ljava/lang/Class;LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public t(I)LU/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/e;->b:LC/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public t0(I)LU/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LU/a;->u0(II)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public u(I)LU/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->u(I)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LU/a;->g:I

    iget p1, p0, LU/a;->b:I

    or-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    iput-object v0, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public u0(II)LU/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LU/a;->u0(II)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LU/a;->l:I

    iput p2, p0, LU/a;->k:I

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroid/graphics/drawable/Drawable;)LU/a;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->v(Landroid/graphics/drawable/Drawable;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LU/a;->f:Landroid/graphics/drawable/Drawable;

    iget p1, p0, LU/a;->b:I

    or-int/lit8 p1, p1, 0x10

    const/4 v0, 0x0

    iput v0, p0, LU/a;->g:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public v0(I)LU/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->v0(I)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LU/a;->i:I

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    iput-object v0, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public w(I)LU/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->w(I)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LU/a;->q:I

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x4000

    const/4 v0, 0x0

    iput-object v0, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public w0(Landroid/graphics/drawable/Drawable;)LU/a;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->w0(Landroid/graphics/drawable/Drawable;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LU/a;->h:Landroid/graphics/drawable/Drawable;

    iget p1, p0, LU/a;->b:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    iput v0, p0, LU/a;->i:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/graphics/drawable/Drawable;)LU/a;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->x(Landroid/graphics/drawable/Drawable;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LU/a;->p:Landroid/graphics/drawable/Drawable;

    iget p1, p0, LU/a;->b:I

    or-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x0

    iput v0, p0, LU/a;->q:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public x0(Lcom/bumptech/glide/h;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, LU/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU/a;->h()LU/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU/a;->x0(Lcom/bumptech/glide/h;)LU/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    iput-object p1, p0, LU/a;->e:Lcom/bumptech/glide/h;

    iget p1, p0, LU/a;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, LU/a;->b:I

    invoke-virtual {p0}, LU/a;->B0()LU/a;

    move-result-object p1

    return-object p1
.end method

.method public y()LU/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>()V

    invoke-virtual {p0, v0, v1}, LU/a;->y0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object v0

    return-object v0
.end method

.method public final y0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LU/a;->z0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;Z)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public z(LC/b;)LU/a;
    .locals 2
    .param p1    # LC/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/b;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->g:LC/g;

    invoke-virtual {p0, v0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object v0

    sget-object v1, LP/i;->a:LC/g;

    invoke-virtual {v0, v1, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;Z)LU/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, LU/a;->K0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, LU/a;->r0(Lcom/bumptech/glide/load/resource/bitmap/p;LC/l;)LU/a;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p1, LU/a;->z:Z

    return-object p1
.end method
