.class public Lcom/android/tools/r8/internal/Kd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:Ljava/util/function/BiConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kd;->a:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Kd;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Kd;->c:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kd;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p2, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    :cond_1
    return-object p2
.end method

.method public a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Kd;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Kd;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Kd;->b:Lcom/android/tools/r8/graph/H2;

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Kd;->c:Ljava/util/function/BiConsumer;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Kd;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kd;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kd;->b:Lcom/android/tools/r8/graph/H2;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
