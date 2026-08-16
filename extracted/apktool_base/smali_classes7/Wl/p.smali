.class public LWl/p;
.super LWl/k;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public c:LWl/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LWl/p;->d:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(LWl/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LWl/k;-><init>()V

    iget-object v0, p1, LWl/k;->a:LWl/l;

    iput-object v0, p0, LWl/k;->a:LWl/l;

    iget v0, p1, LWl/k;->b:I

    iput v0, p0, LWl/k;->b:I

    new-instance v0, LWl/f;

    iget-object p1, p1, LWl/p;->c:LWl/f;

    invoke-direct {v0, p1}, LWl/f;-><init>(LWl/f;)V

    iput-object v0, p0, LWl/p;->c:LWl/f;

    return-void
.end method

.method public constructor <init>(LWl/q;LWl/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LWl/k;-><init>()V

    iput-object p1, p0, LWl/k;->a:LWl/l;

    invoke-virtual {p1}, LWl/l;->d()I

    move-result p1

    iput p1, p0, LWl/k;->b:I

    new-instance p1, LWl/f;

    invoke-direct {p1, p2}, LWl/f;-><init>(LWl/f;)V

    iput-object p1, p0, LWl/p;->c:LWl/f;

    iget p2, p0, LWl/k;->b:I

    invoke-virtual {p1, p2}, LWl/f;->i(I)V

    return-void
.end method

.method public constructor <init>(LWl/q;Ljava/util/Random;)V
    .locals 1

    .line 3
    invoke-direct {p0}, LWl/k;-><init>()V

    iput-object p1, p0, LWl/k;->a:LWl/l;

    invoke-virtual {p1}, LWl/l;->d()I

    move-result p1

    iput p1, p0, LWl/k;->b:I

    new-instance p1, LWl/f;

    iget v0, p0, LWl/k;->b:I

    invoke-direct {p1, v0}, LWl/f;-><init>(I)V

    iput-object p1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {p0, p2}, LWl/p;->G(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(LWl/q;[B)V
    .locals 1

    .line 4
    invoke-direct {p0}, LWl/k;-><init>()V

    iput-object p1, p0, LWl/k;->a:LWl/l;

    invoke-virtual {p1}, LWl/l;->d()I

    move-result p1

    iput p1, p0, LWl/k;->b:I

    new-instance p1, LWl/f;

    iget v0, p0, LWl/k;->b:I

    invoke-direct {p1, v0, p2}, LWl/f;-><init>(I[B)V

    iput-object p1, p0, LWl/p;->c:LWl/f;

    iget p2, p0, LWl/k;->b:I

    invoke-virtual {p1, p2}, LWl/f;->i(I)V

    return-void
.end method

.method public constructor <init>(LWl/q;[I)V
    .locals 2

    .line 5
    invoke-direct {p0}, LWl/k;-><init>()V

    iput-object p1, p0, LWl/k;->a:LWl/l;

    invoke-virtual {p1}, LWl/l;->d()I

    move-result v0

    iput v0, p0, LWl/k;->b:I

    new-instance v0, LWl/f;

    iget v1, p0, LWl/k;->b:I

    invoke-direct {v0, v1, p2}, LWl/f;-><init>(I[I)V

    iput-object v0, p0, LWl/p;->c:LWl/f;

    iget p1, p1, LWl/l;->b:I

    invoke-virtual {v0, p1}, LWl/f;->i(I)V

    return-void
.end method

.method public static y(LWl/q;)LWl/p;
    .locals 3

    new-instance v0, LWl/f;

    invoke-virtual {p0}, LWl/l;->d()I

    move-result v1

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, LWl/f;-><init>(I[I)V

    new-instance v1, LWl/p;

    invoke-direct {v1, p0, v0}, LWl/p;-><init>(LWl/q;LWl/f;)V

    return-object v1
.end method

.method public static z(LWl/q;)LWl/p;
    .locals 2

    new-instance v0, LWl/f;

    invoke-virtual {p0}, LWl/l;->d()I

    move-result v1

    invoke-direct {v0, v1}, LWl/f;-><init>(I)V

    new-instance v1, LWl/p;

    invoke-direct {v1, p0, v0}, LWl/p;-><init>(LWl/q;LWl/f;)V

    return-object v1
.end method


# virtual methods
.method public final A()LWl/f;
    .locals 2

    new-instance v0, LWl/f;

    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-direct {v0, v1}, LWl/f;-><init>(LWl/f;)V

    return-object v0
.end method

.method public final B()LWl/p;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, LWl/k;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    move v2, v1

    :goto_0
    iget v3, p0, LWl/k;->b:I

    sub-int/2addr v3, v1

    shr-int/2addr v3, v1

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, LWl/p;->u()V

    invoke-virtual {v0}, LWl/p;->u()V

    invoke-virtual {v0, p0}, LWl/p;->f(LWl/r;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public C()LWl/p;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, LWl/p;->a()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, LWl/f;

    iget v1, p0, LWl/k;->b:I

    add-int/lit8 v1, v1, 0x20

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, LWl/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, LWl/f;->D()V

    new-instance v1, LWl/f;

    iget v2, p0, LWl/k;->b:I

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, LWl/f;-><init>(I)V

    invoke-virtual {v1}, LWl/f;->D()V

    invoke-virtual {p0}, LWl/p;->A()LWl/f;

    move-result-object v2

    iget-object v3, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v3}, LWl/l;->e()LWl/f;

    move-result-object v3

    invoke-virtual {v2}, LWl/f;->D()V

    :goto_0
    invoke-virtual {v2}, LWl/f;->p()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, LWl/f;->D()V

    invoke-virtual {v3}, LWl/f;->D()V

    invoke-virtual {v2}, LWl/f;->l()I

    move-result v4

    invoke-virtual {v3}, LWl/f;->l()I

    move-result v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    neg-int v4, v4

    invoke-virtual {v0}, LWl/f;->D()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_0
    invoke-virtual {v2, v3, v4}, LWl/f;->M(LWl/f;I)V

    invoke-virtual {v0, v1, v4}, LWl/f;->M(LWl/f;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LWl/f;->D()V

    new-instance v1, LWl/p;

    iget-object v2, p0, LWl/k;->a:LWl/l;

    check-cast v2, LWl/q;

    invoke-direct {v1, v2, v0}, LWl/p;-><init>(LWl/q;LWl/f;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public D()LWl/p;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, LWl/p;->a()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, LWl/f;

    iget v1, p0, LWl/k;->b:I

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, LWl/f;-><init>(ILjava/lang/String;)V

    new-instance v1, LWl/f;

    iget v2, p0, LWl/k;->b:I

    invoke-direct {v1, v2}, LWl/f;-><init>(I)V

    invoke-virtual {p0}, LWl/p;->A()LWl/f;

    move-result-object v2

    iget-object v3, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v3}, LWl/l;->e()LWl/f;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, LWl/f;->U(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, LWl/f;->P()V

    invoke-virtual {v0, v4}, LWl/f;->U(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    invoke-virtual {v0}, LWl/f;->P()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v4}, LWl/l;->e()LWl/f;

    move-result-object v4

    invoke-virtual {v0, v4}, LWl/f;->b(LWl/f;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, LWl/f;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, LWl/p;

    iget-object v2, p0, LWl/k;->a:LWl/l;

    check-cast v2, LWl/q;

    invoke-direct {v1, v2, v0}, LWl/p;-><init>(LWl/q;LWl/f;)V

    return-object v1

    :cond_2
    invoke-virtual {v2}, LWl/f;->D()V

    invoke-virtual {v3}, LWl/f;->D()V

    invoke-virtual {v2}, LWl/f;->l()I

    move-result v4

    invoke-virtual {v3}, LWl/f;->l()I

    move-result v5

    if-ge v4, v5, :cond_3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_3
    invoke-virtual {v2, v3}, LWl/f;->b(LWl/f;)V

    invoke-virtual {v0, v1}, LWl/f;->b(LWl/f;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public E()LWl/p;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, LWl/p;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v0}, LWl/l;->d()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, LWl/p;

    invoke-direct {v2, p0}, LWl/p;-><init>(LWl/p;)V

    iget-object v3, v2, LWl/p;->c:LWl/f;

    iget v4, p0, LWl/k;->b:I

    shl-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, LWl/f;->i(I)V

    iget-object v3, v2, LWl/p;->c:LWl/f;

    invoke-virtual {v3}, LWl/f;->D()V

    invoke-static {v0}, LWl/u;->l(I)I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v1

    :goto_0
    if-ltz v3, :cond_2

    new-instance v5, LWl/p;

    invoke-direct {v5, v2}, LWl/p;-><init>(LWl/p;)V

    move v6, v1

    :goto_1
    if-gt v6, v4, :cond_0

    invoke-virtual {v5}, LWl/p;->P()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, LWl/p;->j(LWl/r;)V

    shl-int/lit8 v4, v4, 0x1

    sget-object v5, LWl/p;->d:[I

    aget v5, v5, v3

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    invoke-virtual {v2}, LWl/p;->P()V

    invoke-virtual {v2, p0}, LWl/p;->j(LWl/r;)V

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, LWl/p;->P()V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public F(I)LWl/p;
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, LWl/p;

    invoke-direct {p1, p0}, LWl/p;-><init>(LWl/p;)V

    return-object p1

    :cond_0
    iget-object v1, p0, LWl/k;->a:LWl/l;

    check-cast v1, LWl/q;

    invoke-static {v1}, LWl/p;->y(LWl/q;)LWl/p;

    move-result-object v1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, LWl/p;

    invoke-direct {v2, p0}, LWl/p;-><init>(LWl/p;)V

    iget-object v3, v2, LWl/p;->c:LWl/f;

    iget v4, v2, LWl/k;->b:I

    shl-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, LWl/f;->i(I)V

    iget-object v3, v2, LWl/p;->c:LWl/f;

    invoke-virtual {v3}, LWl/f;->D()V

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, LWl/k;->b:I

    if-ge v3, v4, :cond_3

    shl-int v4, v0, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, LWl/p;->j(LWl/r;)V

    :cond_2
    invoke-virtual {v2}, LWl/p;->r()LWl/k;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final G(Ljava/util/Random;)V
    .locals 2

    iget-object v0, p0, LWl/p;->c:LWl/f;

    iget v1, p0, LWl/k;->b:I

    invoke-virtual {v0, v1}, LWl/f;->i(I)V

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0, p1}, LWl/f;->C(Ljava/util/Random;)V

    return-void
.end method

.method public final H([I)V
    .locals 5

    iget v0, p0, LWl/k;->b:I

    const/4 v1, 0x2

    aget v1, p1, v1

    sub-int v1, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-int v3, v0, v3

    const/4 v4, 0x0

    aget p1, p1, v4

    sub-int/2addr v0, p1

    iget-object p1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {p1}, LWl/f;->l()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_0
    iget v2, p0, LWl/k;->b:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v2, p1}, LWl/f;->U(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v2, p1}, LWl/f;->c0(I)V

    iget-object v2, p0, LWl/p;->c:LWl/f;

    sub-int v4, p1, v1

    invoke-virtual {v2, v4}, LWl/f;->c0(I)V

    iget-object v2, p0, LWl/p;->c:LWl/f;

    sub-int v4, p1, v3

    invoke-virtual {v2, v4}, LWl/f;->c0(I)V

    iget-object v2, p0, LWl/p;->c:LWl/f;

    sub-int v4, p1, v0

    invoke-virtual {v2, v4}, LWl/f;->c0(I)V

    iget-object v2, p0, LWl/p;->c:LWl/f;

    iget v4, p0, LWl/k;->b:I

    sub-int v4, p1, v4

    invoke-virtual {v2, v4}, LWl/f;->c0(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {p1}, LWl/f;->D()V

    iget-object p1, p0, LWl/p;->c:LWl/f;

    iget v0, p0, LWl/k;->b:I

    invoke-virtual {p1, v0}, LWl/f;->i(I)V

    return-void
.end method

.method public final I()V
    .locals 4

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->l()I

    move-result v0

    iget v1, p0, LWl/k;->b:I

    if-le v0, v1, :cond_6

    iget-object v0, p0, LWl/k;->a:LWl/l;

    check-cast v0, LWl/q;

    invoke-virtual {v0}, LWl/q;->n()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, LWl/k;->a:LWl/l;

    check-cast v0, LWl/q;

    invoke-virtual {v0}, LWl/q;->l()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, LWl/k;->b:I

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_1

    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1}, LWl/f;->l()I

    move-result v1

    iget v2, p0, LWl/k;->b:I

    shl-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1, v2, v0}, LWl/f;->F(II)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, LWl/p;->J(I)V

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, LWl/k;->a:LWl/l;

    check-cast v0, LWl/q;

    invoke-virtual {v0}, LWl/q;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, LWl/k;->a:LWl/l;

    check-cast v0, LWl/q;

    invoke-virtual {v0}, LWl/q;->j()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    iget v2, p0, LWl/k;->b:I

    const/4 v3, 0x2

    aget v3, v0, v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_4

    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1}, LWl/f;->l()I

    move-result v1

    iget v2, p0, LWl/k;->b:I

    shl-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1, v2, v0}, LWl/f;->E(I[I)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, LWl/p;->H([I)V

    return-void

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, LWl/p;->c:LWl/f;

    iget-object v1, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v1}, LWl/l;->e()LWl/f;

    move-result-object v1

    invoke-virtual {v0, v1}, LWl/f;->G(LWl/f;)LWl/f;

    move-result-object v0

    iput-object v0, p0, LWl/p;->c:LWl/f;

    iget v1, p0, LWl/k;->b:I

    invoke-virtual {v0, v1}, LWl/f;->i(I)V

    return-void

    :cond_6
    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->l()I

    move-result v0

    iget v1, p0, LWl/k;->b:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0, v1}, LWl/f;->i(I)V

    :cond_7
    return-void
.end method

.method public final J(I)V
    .locals 3

    iget v0, p0, LWl/k;->b:I

    sub-int/2addr v0, p1

    iget-object p1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {p1}, LWl/f;->l()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v1, p0, LWl/k;->b:I

    if-lt p1, v1, :cond_1

    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1, p1}, LWl/f;->U(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1, p1}, LWl/f;->c0(I)V

    iget-object v1, p0, LWl/p;->c:LWl/f;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, LWl/f;->c0(I)V

    iget-object v1, p0, LWl/p;->c:LWl/f;

    iget v2, p0, LWl/k;->b:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, LWl/f;->c0(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {p1}, LWl/f;->D()V

    iget-object p1, p0, LWl/p;->c:LWl/f;

    iget v0, p0, LWl/k;->b:I

    invoke-virtual {p1, v0}, LWl/f;->i(I)V

    return-void
.end method

.method public K()LWl/p;
    .locals 1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0}, LWl/p;->N()V

    invoke-virtual {v0}, LWl/p;->I()V

    return-object v0
.end method

.method public L()LWl/p;
    .locals 1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0}, LWl/p;->O()V

    invoke-virtual {v0}, LWl/p;->I()V

    return-object v0
.end method

.method public M()LWl/p;
    .locals 1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0}, LWl/p;->P()V

    invoke-virtual {v0}, LWl/p;->I()V

    return-object v0
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->Q()V

    invoke-virtual {p0}, LWl/p;->I()V

    return-void
.end method

.method public O()V
    .locals 5

    new-instance v0, LWl/f;

    iget v1, p0, LWl/k;->b:I

    invoke-direct {v0, v1}, LWl/f;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LWl/k;->b:I

    if-ge v1, v2, :cond_1

    iget-object v3, p0, LWl/p;->c:LWl/f;

    iget-object v4, p0, LWl/k;->a:LWl/l;

    check-cast v4, LWl/q;

    iget-object v4, v4, LWl/q;->f:[LWl/f;

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, LWl/f;->a0(LWl/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LWl/f;->I(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, LWl/p;->c:LWl/f;

    return-void
.end method

.method public P()V
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->R()V

    invoke-virtual {p0}, LWl/p;->I()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->q()Z

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    return-object v0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->W()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public e(LWl/r;)LWl/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0, p1}, LWl/p;->j(LWl/r;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, LWl/p;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LWl/p;

    iget-object v1, p0, LWl/k;->a:LWl/l;

    iget-object v2, p1, LWl/k;->a:LWl/l;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, LWl/l;->e()LWl/f;

    move-result-object v1

    iget-object v2, p1, LWl/k;->a:LWl/l;

    invoke-virtual {v2}, LWl/l;->e()LWl/f;

    move-result-object v2

    invoke-virtual {v1, v2}, LWl/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, LWl/p;->c:LWl/f;

    iget-object p1, p1, LWl/p;->c:LWl/f;

    invoke-virtual {v0, p1}, LWl/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public f(LWl/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, LWl/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWl/k;->a:LWl/l;

    check-cast p1, LWl/p;

    iget-object v1, p1, LWl/k;->a:LWl/l;

    invoke-virtual {v0, v1}, LWl/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWl/p;->c:LWl/f;

    iget-object p1, p1, LWl/p;->c:LWl/f;

    invoke-virtual {v0, p1}, LWl/f;->b(LWl/f;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public g(LWl/r;)LWl/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0, p1}, LWl/p;->f(LWl/r;)V

    return-object v0
.end method

.method public h(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0, p1}, LWl/f;->Y(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v0}, LWl/l;->hashCode()I

    move-result v0

    iget-object v1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v1}, LWl/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->p()Z

    move-result v0

    return v0
.end method

.method public invert()LWl/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, LWl/p;->D()LWl/p;

    move-result-object v0

    return-object v0
.end method

.method public j(LWl/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, LWl/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, LWl/k;->a:LWl/l;

    move-object v1, p1

    check-cast v1, LWl/p;

    iget-object v2, v1, LWl/k;->a:LWl/l;

    invoke-virtual {v0, v2}, LWl/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LWl/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LWl/p;->u()V

    return-void

    :cond_0
    iget-object p1, p0, LWl/p;->c:LWl/f;

    iget-object v0, v1, LWl/p;->c:LWl/f;

    invoke-virtual {p1, v0}, LWl/f;->y(LWl/f;)LWl/f;

    move-result-object p1

    iput-object p1, p0, LWl/p;->c:LWl/f;

    invoke-virtual {p0}, LWl/p;->I()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->d()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->f()V

    return-void
.end method

.method public o()LWl/k;
    .locals 1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0}, LWl/p;->p()V

    return-object v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->n()V

    return-void
.end method

.method public q()LWl/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, LWl/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWl/k;->a:LWl/l;

    check-cast v0, LWl/q;

    invoke-static {v0}, LWl/p;->z(LWl/q;)LWl/p;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, LWl/k;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LWl/p;->B()LWl/p;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, LWl/p;

    iget-object v2, p0, LWl/k;->a:LWl/l;

    check-cast v2, LWl/q;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v2, v3}, LWl/p;-><init>(LWl/q;Ljava/util/Random;)V

    iget-object v2, p0, LWl/k;->a:LWl/l;

    check-cast v2, LWl/q;

    invoke-static {v2}, LWl/p;->z(LWl/q;)LWl/p;

    move-result-object v2

    invoke-virtual {v0}, LWl/p;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWl/p;

    move v4, v1

    :goto_0
    iget v5, p0, LWl/k;->b:I

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, LWl/p;->u()V

    invoke-virtual {v3}, LWl/p;->u()V

    invoke-virtual {v3, p0}, LWl/p;->e(LWl/r;)LWl/r;

    move-result-object v5

    invoke-virtual {v2, v5}, LWl/p;->f(LWl/r;)V

    invoke-virtual {v3, v0}, LWl/p;->f(LWl/r;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, LWl/p;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, LWl/p;->r()LWl/k;

    move-result-object v0

    invoke-interface {v0, v2}, LWl/r;->g(LWl/r;)LWl/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LWl/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public r()LWl/k;
    .locals 1

    invoke-virtual {p0}, LWl/p;->M()LWl/p;

    move-result-object v0

    return-object v0
.end method

.method public s()LWl/k;
    .locals 1

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    invoke-virtual {v0}, LWl/p;->t()V

    return-object v0
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, LWl/p;->c:LWl/f;

    iget v1, p0, LWl/k;->b:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, LWl/f;->i(I)V

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->D()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LWl/k;->a:LWl/l;

    invoke-virtual {v1}, LWl/l;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, LWl/p;->u()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0}, LWl/f;->V()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LWl/p;->c:LWl/f;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LWl/f;->Y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 0

    invoke-virtual {p0}, LWl/p;->P()V

    return-void
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, LWl/p;->c:LWl/f;

    invoke-virtual {v0, p1}, LWl/f;->U(I)Z

    move-result p1

    return p1
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, LWl/p;->c:LWl/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LWl/f;->U(I)Z

    move-result v0

    return v0
.end method

.method public x()I
    .locals 4

    new-instance v0, LWl/p;

    invoke-direct {v0, p0}, LWl/p;-><init>(LWl/p;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget v3, p0, LWl/k;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, LWl/p;->u()V

    invoke-virtual {v0, p0}, LWl/p;->f(LWl/r;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LWl/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
