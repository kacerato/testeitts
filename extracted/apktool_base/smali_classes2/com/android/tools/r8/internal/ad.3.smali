.class public abstract Lcom/android/tools/r8/internal/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/EJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Yi$a;
    .locals 2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/CJ;->a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Yi;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Yi;->a()Lcom/android/tools/r8/internal/Yi$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Zc;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/EJ;

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/Ns0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/internal/Ns0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/tools/r8/internal/EJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/E1;)V

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/O41;

    invoke-direct {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/O41;-><init>(Lcom/android/tools/r8/internal/EJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 9
    const-string p2, "Data flow analysis"

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Yi$a;

    if-nez p1, :cond_1

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    return-object p0

    .line 11
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/P41;

    invoke-direct {p2, p1, p0}, Lcom/android/tools/r8/internal/P41;-><init>(Lcom/android/tools/r8/internal/Yi$a;Lcom/android/tools/r8/graph/y;)V

    const-string p0, "Externalize"

    invoke-virtual {p3, p0, p2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/v50;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of p1, p0, Lcom/android/tools/r8/internal/v7;

    if-eqz p1, :cond_2

    .line 14
    sget-object p0, Lcom/android/tools/r8/internal/o2;->a:Lcom/android/tools/r8/internal/o2;

    return-object p0

    .line 15
    :cond_2
    instance-of p1, p0, Lcom/android/tools/r8/internal/wv0;

    if-eqz p1, :cond_3

    .line 16
    sget-object p0, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    return-object p0

    .line 17
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Hg;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Hg;-><init>(Lcom/android/tools/r8/internal/v50;)V

    return-object p1

    .line 18
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Yi$a;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/v50;
    .locals 2

    .line 24
    iget-object p0, p0, Lcom/android/tools/r8/internal/Yi$a;->a:Ljava/util/IdentityHashMap;

    .line 25
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D1;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/D1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 27
    :cond_1
    check-cast v0, Lcom/android/tools/r8/internal/v50;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/v50;->e()Lcom/android/tools/r8/internal/v50;

    move-result-object p0

    return-object p0
.end method
