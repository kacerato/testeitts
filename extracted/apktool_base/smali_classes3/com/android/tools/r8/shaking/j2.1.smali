.class public final Lcom/android/tools/r8/shaking/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/dex/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/l2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/j2;->a(Lcom/android/tools/r8/graph/I2;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)Z
    .locals 1

    .line 12
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "DexMethodHandle are not supported when tracing for legacy multi dex"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)Z
    .locals 1

    .line 11
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "CallSite are not supported when tracing for legacy multi dex"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Z
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 9
    iget-object v4, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v4, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j2;->a:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
