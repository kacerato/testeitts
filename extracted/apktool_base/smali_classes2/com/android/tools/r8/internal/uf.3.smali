.class public final Lcom/android/tools/r8/internal/uf;
.super Lcom/android/tools/r8/internal/rf;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Ff0;

.field public final c:Lcom/android/tools/r8/internal/Ff0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rf;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uf;->b:Lcom/android/tools/r8/internal/Ff0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uf;->c:Lcom/android/tools/r8/internal/Ff0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I
    .locals 2

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/uf;->c:Lcom/android/tools/r8/internal/Ff0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Ff0;->a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/uf;->c:Lcom/android/tools/r8/internal/Ff0;

    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/Ff0;->a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/qf;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/tools/r8/internal/qf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/rf;)V

    .line 11
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    .line 12
    iget p1, v1, Lcom/android/tools/r8/internal/qf;->d:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/uf;->b:Lcom/android/tools/r8/internal/Ff0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Ff0;->a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/uf;->b:Lcom/android/tools/r8/internal/Ff0;

    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/Ff0;->a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/rf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method
