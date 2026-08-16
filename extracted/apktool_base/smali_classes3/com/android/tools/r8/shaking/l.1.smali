.class public final Lcom/android/tools/r8/shaking/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/shaking/l;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/rd;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/rd;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/shaking/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/k;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/k;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Ljava/util/Map;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/internal/F4;)V
    .locals 1

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    sget-boolean v0, Lcom/android/tools/r8/internal/F4;->e:Z

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p3, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 44
    iget-object p0, p3, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/F4;->c:Z

    invoke-static {p0, v0, p3}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)Lcom/android/tools/r8/internal/F4;

    move-result-object p3

    .line 45
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F4;->b()Z

    move-result p0

    if-nez p0, :cond_3

    .line 46
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/internal/F4;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 15
    :goto_0
    sget-boolean p4, Lcom/android/tools/r8/internal/F4;->e:Z

    if-nez p4, :cond_2

    .line 16
    iget-object p4, p5, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    .line 17
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p5, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_2
    :goto_1
    iget-object p4, p5, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 20
    iget-object p4, p5, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p4

    .line 21
    iget-object p4, p4, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p4}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    if-eq p0, p4, :cond_3

    .line 24
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance p2, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 27
    iget-object p0, p5, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    iget-boolean p4, p5, Lcom/android/tools/r8/internal/F4;->c:Z

    invoke-static {p0, p2, p4}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)Lcom/android/tools/r8/internal/F4;

    move-result-object p5

    .line 28
    :cond_3
    sget-boolean p0, Lcom/android/tools/r8/shaking/l;->b:Z

    if-nez p0, :cond_5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/F4;->b()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 29
    :cond_5
    :goto_2
    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/F4;->d:Lcom/android/tools/r8/internal/F4;

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/F4;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/l;
    .locals 3

    .line 30
    const-string v0, "Prune AssumeInfoCollection"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 31
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/ud;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/shaking/ud;-><init>(Lcom/android/tools/r8/graph/O5;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 33
    new-instance p1, Lcom/android/tools/r8/shaking/l;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/l;-><init>(Ljava/util/IdentityHashMap;)V

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/l;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/l;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/l;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/l;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/shaking/sd;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/sd;-><init>(Lcom/android/tools/r8/shaking/l;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite AssumeInfoCollection"

    invoke-virtual {p4, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/l;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z
    .locals 1

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/l;
    .locals 3

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/td;

    invoke-direct {v2, p2, p3, p1, v0}, Lcom/android/tools/r8/shaking/td;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p1, Lcom/android/tools/r8/shaking/l;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/l;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p1
.end method
