.class public LU/h;
.super LU/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LU/a<",
        "LU/h;",
        ">;"
    }
.end annotation


# static fields
.field public static D0:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static W:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static X:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static Y:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static Z:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static b1:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static q0:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static v0:LU/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LU/a;-><init>()V

    return-void
.end method

.method public static R0(LC/l;)LU/h;
    .locals 1
    .param p0    # LC/l;
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
            ">;)",
            "LU/h;"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->I0(LC/l;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static S0()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LU/h;->q0:LU/h;

    if-nez v0, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0}, LU/a;->b()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    sput-object v0, LU/h;->q0:LU/h;

    :cond_0
    sget-object v0, LU/h;->q0:LU/h;

    return-object v0
.end method

.method public static T0()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LU/h;->Z:LU/h;

    if-nez v0, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->f()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0}, LU/a;->b()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    sput-object v0, LU/h;->Z:LU/h;

    :cond_0
    sget-object v0, LU/h;->Z:LU/h;

    return-object v0
.end method

.method public static U0()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LU/h;->v0:LU/h;

    if-nez v0, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->g()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0}, LU/a;->b()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    sput-object v0, LU/h;->v0:LU/h;

    :cond_0
    sget-object v0, LU/h;->v0:LU/h;

    return-object v0
.end method

.method public static V0(Ljava/lang/Class;)LU/h;
    .locals 1
    .param p0    # Ljava/lang/Class;
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
            "*>;)",
            "LU/h;"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->i(Ljava/lang/Class;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static W0(Lcom/bumptech/glide/load/engine/i;)LU/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static X0(Lcom/bumptech/glide/load/resource/bitmap/p;)LU/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->r(Lcom/bumptech/glide/load/resource/bitmap/p;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static Y0(Landroid/graphics/Bitmap$CompressFormat;)LU/h;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->s(Landroid/graphics/Bitmap$CompressFormat;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static Z0(I)LU/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->t(I)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static a1(I)LU/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->u(I)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static b1(Landroid/graphics/drawable/Drawable;)LU/h;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->v(Landroid/graphics/drawable/Drawable;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static c1()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LU/h;->Y:LU/h;

    if-nez v0, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0}, LU/a;->b()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    sput-object v0, LU/h;->Y:LU/h;

    :cond_0
    sget-object v0, LU/h;->Y:LU/h;

    return-object v0
.end method

.method public static d1(LC/b;)LU/h;
    .locals 1
    .param p0    # LC/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static e1(J)LU/h;
    .locals 1
    .param p0    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0, p1}, LU/a;->A(J)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static f1()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LU/h;->b1:LU/h;

    if-nez v0, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->p()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0}, LU/a;->b()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    sput-object v0, LU/h;->b1:LU/h;

    :cond_0
    sget-object v0, LU/h;->b1:LU/h;

    return-object v0
.end method

.method public static g1()LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LU/h;->D0:LU/h;

    if-nez v0, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->q()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0}, LU/a;->b()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    sput-object v0, LU/h;->D0:LU/h;

    :cond_0
    sget-object v0, LU/h;->D0:LU/h;

    return-object v0
.end method

.method public static h1(LC/g;Ljava/lang/Object;)LU/h;
    .locals 1
    .param p0    # LC/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LC/g<",
            "TT;>;TT;)",
            "LU/h;"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0, p1}, LU/a;->C0(LC/g;Ljava/lang/Object;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static i1(I)LU/h;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p0}, LU/h;->j1(II)LU/h;

    move-result-object p0

    return-object p0
.end method

.method public static j1(II)LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0, p1}, LU/a;->u0(II)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static k1(I)LU/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->v0(I)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static l1(Landroid/graphics/drawable/Drawable;)LU/h;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->w0(Landroid/graphics/drawable/Drawable;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static m1(Lcom/bumptech/glide/h;)LU/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->x0(Lcom/bumptech/glide/h;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static n1(LC/e;)LU/h;
    .locals 1
    .param p0    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->D0(LC/e;)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static o1(F)LU/h;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->E0(F)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method

.method public static p1(Z)LU/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    sget-object p0, LU/h;->W:LU/h;

    if-nez p0, :cond_0

    new-instance p0, LU/h;

    invoke-direct {p0}, LU/h;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LU/a;->F0(Z)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    invoke-virtual {p0}, LU/a;->b()LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    sput-object p0, LU/h;->W:LU/h;

    :cond_0
    sget-object p0, LU/h;->W:LU/h;

    return-object p0

    :cond_1
    sget-object p0, LU/h;->X:LU/h;

    if-nez p0, :cond_2

    new-instance p0, LU/h;

    invoke-direct {p0}, LU/h;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LU/a;->F0(Z)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    invoke-virtual {p0}, LU/a;->b()LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    sput-object p0, LU/h;->X:LU/h;

    :cond_2
    sget-object p0, LU/h;->X:LU/h;

    return-object p0
.end method

.method public static q1(I)LU/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, p0}, LU/a;->H0(I)LU/a;

    move-result-object p0

    check-cast p0, LU/h;

    return-object p0
.end method
