.class public final Lcom/android/tools/r8/kotlin/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# instance fields
.field public final a:Lcom/android/tools/r8/kotlin/K;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/K;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/O;->a:Lcom/android/tools/r8/kotlin/K;

    iput-boolean p2, p0, Lcom/android/tools/r8/kotlin/O;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/O;->a:Lcom/android/tools/r8/kotlin/K;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/K;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/rQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rQ;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    iget-boolean p1, p0, Lcom/android/tools/r8/kotlin/O;->b:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/O;->a:Lcom/android/tools/r8/kotlin/K;

    new-instance p2, Lcom/android/tools/r8/kotlin/j1;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/kotlin/j1;-><init>(Lcom/android/tools/r8/internal/rQ;)V

    invoke-virtual {p1, p2, v1, p3}, Lcom/android/tools/r8/kotlin/K;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 6
    iget-object v2, p2, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/kotlin/O;->a:Lcom/android/tools/r8/kotlin/K;

    if-ne v2, v3, :cond_1

    move-object v1, p2

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/O;->a:Lcom/android/tools/r8/kotlin/K;

    new-instance p2, Lcom/android/tools/r8/kotlin/j1;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/kotlin/j1;-><init>(Lcom/android/tools/r8/internal/rQ;)V

    invoke-virtual {p1, p2, v1, p3}, Lcom/android/tools/r8/kotlin/K;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method
