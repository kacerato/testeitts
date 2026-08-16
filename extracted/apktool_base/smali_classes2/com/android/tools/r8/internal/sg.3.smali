.class public final Lcom/android/tools/r8/internal/sg;
.super Lcom/android/tools/r8/internal/mg;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tg;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/pg;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/internal/mg;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/mg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/pg;Lcom/android/tools/r8/internal/pg;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/pg;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/Bo0;->a(Lcom/android/tools/r8/internal/pg;)Lcom/android/tools/r8/internal/wX;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/pg;

    return-object p0

    .line 2
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/xX;

    .line 3
    instance-of v1, v0, Lcom/android/tools/r8/internal/tv0;

    if-nez v1, :cond_4

    .line 4
    move-object v1, p3

    check-cast v1, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v1, v1, Lcom/android/tools/r8/internal/tv0;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez v1, :cond_3

    .line 7
    instance-of v0, v0, Lcom/android/tools/r8/internal/ng;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_3
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object p2

    .line 10
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object p3

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/android/tools/r8/internal/ng;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/ng;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/pg;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/pg;)V
    .locals 0

    .line 25
    invoke-interface {p2}, Lcom/android/tools/r8/internal/pg;->a()Lcom/android/tools/r8/internal/pg;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/wX;
    .locals 3

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/at1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/at1;-><init>(Ljava/util/Map;)V

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/sg;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/sg;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pg;

    if-eqz p1, :cond_0

    return-object p1

    .line 15
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/internal/xX;
    .locals 6

    sget-object v0, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    .line 26
    sget-boolean v1, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez v1, :cond_1

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zt;

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zt;

    if-nez v4, :cond_4

    goto :goto_2

    .line 34
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/pg;

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/pg;

    .line 36
    invoke-static {p1, p3, v5, v3, v0}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/pg;Lcom/android/tools/r8/internal/pg;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/pg;

    move-result-object v3

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    instance-of v5, v5, Lcom/android/tools/r8/internal/tv0;

    if-eqz v5, :cond_5

    .line 39
    sget-object p1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    return-object p1

    .line 40
    :cond_5
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 42
    sget-object p1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    return-object p1

    .line 43
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/sg;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/sg;-><init>(Ljava/util/HashMap;)V

    return-object p1
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final i()Lcom/android/tools/r8/internal/tg;
    .locals 0

    return-object p0
.end method

.method public final j()Lcom/android/tools/r8/internal/sg;
    .locals 0

    return-object p0
.end method
