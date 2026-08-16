.class public Lcom/android/tools/r8/graph/L4;
.super Lcom/android/tools/r8/graph/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/g<",
        "Lcom/android/tools/r8/graph/L4;",
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

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/android/tools/r8/graph/g;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/g;-><init>(II)V

    return-void
.end method

.method public static a(IZ)Lcom/android/tools/r8/graph/L4;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/L4;

    and-int/lit16 p0, p0, 0x1dff

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/L4;-><init>(I)V

    return-object v0
.end method

.method public static b(IZ)Lcom/android/tools/r8/graph/L4;
    .locals 1

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/graph/L4;->f:Z

    if-nez v0, :cond_1

    and-int/lit16 v0, p0, 0x1dff

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Lcom/android/tools/r8/graph/L4;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/L4;

    const v1, 0x31dff

    and-int/2addr p0, v1

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/L4;-><init>(I)V

    iget p0, v0, Lcom/android/tools/r8/graph/g;->c:I

    const/high16 v1, 0x20000

    invoke-static {p0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/g;->a(I)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final D()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public G()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    const v1, -0x10001

    and-int/2addr v0, v1

    return v0
.end method

.method public H()Z
    .locals 2

    const/16 v0, 0x400

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 2

    const/16 v0, 0x40

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 2

    const/16 v0, 0x100

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 2

    const/16 v0, 0x800

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

.method public final M()Z
    .locals 2

    const/16 v0, 0x80

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public N()Lcom/android/tools/r8/graph/L4;
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-object p0
.end method

.method public O()V
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public final P()Lcom/android/tools/r8/graph/L4;
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 2
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 3
    sget-object v1, Lcom/android/tools/r8/graph/g;->d:Lcom/android/tools/r8/internal/hC;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 5
    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 6
    const-string v1, "bridge"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 7
    const-string v1, "varargs"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 8
    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 9
    const-string v1, "abstract"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 10
    const-string v1, "strictfp"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 11
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

    new-instance v1, Lcom/android/tools/r8/graph/j9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/j9;-><init>(Lcom/android/tools/r8/graph/L4;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/k9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/k9;-><init>(Lcom/android/tools/r8/graph/L4;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/l9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/l9;-><init>(Lcom/android/tools/r8/graph/L4;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/m9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/m9;-><init>(Lcom/android/tools/r8/graph/L4;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/n9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/n9;-><init>(Lcom/android/tools/r8/graph/L4;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/o9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/o9;-><init>(Lcom/android/tools/r8/graph/L4;)V

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
