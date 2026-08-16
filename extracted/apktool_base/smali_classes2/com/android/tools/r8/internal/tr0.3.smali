.class public abstract Lcom/android/tools/r8/internal/tr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/on0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tr0;->a:Lcom/android/tools/r8/internal/hC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tr0;->b:Lcom/android/tools/r8/internal/B60;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/aB;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(II)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/B60;
    .locals 0

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    return-object p1
.end method

.method public final a(IIILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(IILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IIZ)V
    .locals 0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IZ)V
    .locals 0

    .line 4
    iget-object p3, p0, Lcom/android/tools/r8/internal/tr0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/Consumer;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->a()Ljava/util/function/BiConsumer;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/j1;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final c(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final c()Z
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final d(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()V
    .locals 0

    .line 2
    return-void
.end method

.method public final e(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/N8;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tr0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final g(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/B60;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tr0;->b:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method
