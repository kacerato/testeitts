.class public final Lcom/android/tools/r8/graph/F5;
.super Lcom/android/tools/r8/graph/F0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/G5;


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/graph/F0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method


# virtual methods
.method public final O()Lcom/android/tools/r8/graph/G5;
    .locals 0

    return-object p0
.end method

.method public final W()Lcom/android/tools/r8/graph/F5;
    .locals 0

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-ne v0, p1, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/o3;

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/tools/r8/graph/n7;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/graph/n7;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/k3;)V

    .line 13
    iget-object v0, v1, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/d;->b(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Lcom/android/tools/r8/graph/F0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/graph/F5;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final c0()Lcom/android/tools/r8/kotlin/Q;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    return-object v0
.end method

.method public final getContext()Lcom/android/tools/r8/graph/o0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getHolder()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final getHolder()Lcom/android/tools/r8/graph/H2;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/graph/F5;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method
