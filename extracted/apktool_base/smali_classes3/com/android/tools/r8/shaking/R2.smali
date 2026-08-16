.class public abstract Lcom/android/tools/r8/shaking/R2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 15
    check-cast p0, Lcom/android/tools/r8/graph/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$c;->g:Lcom/android/tools/r8/graph/A2;

    .line 20
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 27
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kR;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 29
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 11
    new-instance v0, Lcom/android/tools/r8/shaking/pa;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/shaking/pa;-><init>(Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/y;)V

    new-instance v1, Lcom/android/tools/r8/shaking/qa;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/qa;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    .line 13
    check-cast p1, Lcom/android/tools/r8/graph/t5;

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Z
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/graph/t5;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/ra;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/ra;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiPredicate;)Z

    move-result p0

    return p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 9
    :cond_1
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method
