.class public final Lcom/android/tools/r8/shaking/k2;
.super Lcom/android/tools/r8/graph/f6;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/shaking/l2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/l2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/f6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J5;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 7
    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/k2;->e:Lcom/android/tools/r8/shaking/l2;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
