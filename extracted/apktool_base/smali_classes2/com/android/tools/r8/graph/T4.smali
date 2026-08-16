.class public Lcom/android/tools/r8/graph/T4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/function/Function;

.field public final b:Z

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/T4;->c:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/T4;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/graph/T4;->a:Ljava/util/function/Function;

    iput-boolean p2, p0, Lcom/android/tools/r8/graph/T4;->b:Z

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/S4;)V
    .locals 2

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/graph/S4;->a:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/S4;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/graph/S4;->a:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eq v0, p1, :cond_1

    .line 21
    sget-object v1, Lcom/android/tools/r8/graph/S4;->b:Lcom/android/tools/r8/graph/S4;

    if-eq v0, v1, :cond_1

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/graph/S4;->a:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/T4;->b:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/b0;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {p3}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    .line 12
    new-instance p1, Lcom/android/tools/r8/graph/S4;

    invoke-direct {p1, p4}, Lcom/android/tools/r8/graph/S4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/T4;->c:Ljava/util/IdentityHashMap;

    new-instance p2, Lcom/android/tools/r8/graph/Ra;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/Ra;-><init>()V

    .line 14
    invoke-static {p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    invoke-interface {p1, p5, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 15
    new-instance p2, Lcom/android/tools/r8/graph/Sa;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/Sa;-><init>(Ljava/util/Map;)V

    invoke-interface {p3, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    iget-object p1, p5, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    new-instance p2, Lcom/android/tools/r8/graph/Ta;

    invoke-direct {p2, p0, p5, p3}, Lcom/android/tools/r8/graph/Ta;-><init>(Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    iget-object p1, p5, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0, p5, p3, p1}, Lcom/android/tools/r8/graph/T4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/T4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/graph/T4;->b(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/T4;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/T4;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/S4;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v1, Lcom/android/tools/r8/graph/S4;->b:Lcom/android/tools/r8/graph/S4;

    if-eq v0, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 8

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/T4;->d:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/T4;->a:Ljava/util/function/Function;

    invoke-interface {v0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/b0;

    new-instance v7, Lcom/android/tools/r8/graph/Qa;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/graph/Qa;-><init>(Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {v0, v7}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method
