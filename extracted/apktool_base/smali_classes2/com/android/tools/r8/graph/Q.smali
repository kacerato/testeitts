.class public Lcom/android/tools/r8/graph/Q;
.super Lcom/android/tools/r8/graph/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/g<",
        "Lcom/android/tools/r8/graph/Q;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/android/tools/r8/graph/g;-><init>(II)V

    return-void
.end method

.method public static e(I)Lcom/android/tools/r8/graph/Q;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/Q;

    const v1, 0x1763f

    and-int/2addr p0, v1

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Q;-><init>(I)V

    return-object v0
.end method

.method public static g(I)Lcom/android/tools/r8/graph/Q;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/Q;->f:Z

    if-nez v0, :cond_1

    and-int/lit16 v0, p0, 0x761f

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/Q;

    and-int/lit16 p0, p0, 0x761f

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Q;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public D()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/graph/Q;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->L()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    return v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public G()Z
    .locals 2

    const/16 v0, 0x400

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 2

    const/16 v0, 0x2000

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 2

    const/16 v0, 0x4000

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 2

    const/16 v0, 0x200

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final K()Z
    .locals 2

    const/high16 v0, 0x10000

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 2

    const/16 v0, 0x20

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public M()V
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public N()V
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public O()V
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public P()V
    .locals 1

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public Q()V
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public R()V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ib;Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/Ib;->j:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/android/tools/r8/dex/t;->b:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->G()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->G()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    sget-object v1, Lcom/android/tools/r8/graph/g;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "interface"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "abstract"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "annotation"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "enum"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "super"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "record"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    invoke-super {p0}, Lcom/android/tools/r8/graph/g;->c()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/va;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/va;-><init>(Lcom/android/tools/r8/graph/Q;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/wa;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/wa;-><init>(Lcom/android/tools/r8/graph/Q;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/xa;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/xa;-><init>(Lcom/android/tools/r8/graph/Q;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/ya;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/ya;-><init>(Lcom/android/tools/r8/graph/Q;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/za;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/za;-><init>(Lcom/android/tools/r8/graph/Q;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Aa;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/Aa;-><init>(Lcom/android/tools/r8/graph/Q;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/graph/g;
    .locals 0

    return-object p0
.end method
