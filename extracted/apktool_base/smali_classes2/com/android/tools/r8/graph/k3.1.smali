.class public Lcom/android/tools/r8/graph/k3;
.super Lcom/android/tools/r8/graph/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/g<",
        "Lcom/android/tools/r8/graph/k3;",
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

.method public static e(I)Lcom/android/tools/r8/graph/k3;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/k3;

    and-int/lit16 p0, p0, 0x50df

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/k3;-><init>(I)V

    return-object v0
.end method

.method public static g(I)Lcom/android/tools/r8/graph/k3;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/k3;->f:Z

    if-nez v0, :cond_1

    and-int/lit16 v0, p0, 0x50df

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/k3;

    and-int/lit16 p0, p0, 0x50df

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/k3;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public D()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    return v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final G()Z
    .locals 2

    const/16 v0, 0x4000

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final H()Z
    .locals 2

    const/16 v0, 0x80

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 2

    const/16 v0, 0x40

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    sget-object v1, Lcom/android/tools/r8/graph/g;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "volatile"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "transient"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "enum"

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

    new-instance v1, Lcom/android/tools/r8/graph/ze;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/ze;-><init>(Lcom/android/tools/r8/graph/k3;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Ae;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/Ae;-><init>(Lcom/android/tools/r8/graph/k3;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Be;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/Be;-><init>(Lcom/android/tools/r8/graph/k3;)V

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
