.class public final Lcom/android/tools/r8/internal/c2;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/shaking/b3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/c2;->e:Lcom/android/tools/r8/shaking/b3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AdaptClassStringsRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/c2;->e:Lcom/android/tools/r8/shaking/b3;

    .line 3
    iget-object p2, p2, Lcom/android/tools/r8/shaking/b3;->a:Lcom/android/tools/r8/internal/hC;

    .line 4
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/c2;->e:Lcom/android/tools/r8/shaking/b3;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/b3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x10

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/naming/D;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v3, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
