.class public abstract Lcom/android/tools/r8/internal/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->A:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/android/tools/r8/internal/m4;->b:Lcom/android/tools/r8/internal/m4;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 36
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/android/tools/r8/internal/em1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/em1;-><init>()V

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/fm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fm1;-><init>()V

    .line 40
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/gm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gm1;-><init>()V

    .line 41
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/c4;Ljava/util/HashSet;)V
    .locals 6

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/n4;->a:Z

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/graph/y;->G:Lcom/android/tools/r8/internal/CA;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/CA;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 24
    iget-object v4, p1, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    .line 25
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 26
    invoke-static {p0, v2, p2, v0}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 27
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H2;->L1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 29
    iget-object v5, p1, Lcom/android/tools/r8/internal/c4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 30
    invoke-static {p0, v3, p2, v0}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 31
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    .line 32
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/hm1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/hm1;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p0

    .line 33
    sget-boolean p1, Lcom/android/tools/r8/internal/n4;->a:Z

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_3
    return-void
.end method

.method public static varargs a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l4;->a()Lcom/android/tools/r8/internal/G00;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/c4;

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/n4;->a:Z

    if-nez v1, :cond_0

    .line 7
    array-length v1, p1

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 9
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    invoke-static {p0, v0, v2}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/c4;Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->h:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method
