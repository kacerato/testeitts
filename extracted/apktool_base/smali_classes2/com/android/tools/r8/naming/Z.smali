.class public final Lcom/android/tools/r8/naming/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/naming/m0;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lcom/android/tools/r8/naming/Y;

.field public final e:Lcom/android/tools/r8/internal/eA;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Lcom/android/tools/r8/naming/b0;

.field public final i:Lcom/android/tools/r8/naming/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/Z;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/naming/Y;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/Y;-><init>(Lcom/android/tools/r8/naming/Z;)V

    iput-object v0, p0, Lcom/android/tools/r8/naming/Z;->d:Lcom/android/tools/r8/naming/Y;

    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/naming/Z;->f:Ljava/util/IdentityHashMap;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/naming/Z;->b:Lcom/android/tools/r8/naming/m0;

    invoke-static {}, Lcom/android/tools/r8/naming/Z;->c()Ljava/util/function/Function;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/naming/e0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/android/tools/r8/naming/e0;-><init>(Lcom/android/tools/r8/naming/e0;Ljava/util/function/Function;)V

    iput-object v2, p0, Lcom/android/tools/r8/naming/Z;->i:Lcom/android/tools/r8/naming/e0;

    const/4 p1, 0x0

    invoke-virtual {v0, v3, v2, p1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/Z;->b()Ljava/util/function/Function;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/naming/b0;

    invoke-direct {v0, v3, p1, p2, v2}, Lcom/android/tools/r8/naming/b0;-><init>(Lcom/android/tools/r8/naming/b0;Ljava/util/function/Function;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/e0;)V

    iput-object v0, p0, Lcom/android/tools/r8/naming/Z;->h:Lcom/android/tools/r8/naming/b0;

    invoke-virtual {v1, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/e0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/e0;
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/naming/e0;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/c0;->b:Ljava/util/function/Function;

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/naming/e0;-><init>(Lcom/android/tools/r8/naming/e0;Ljava/util/function/Function;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/naming/e0;Ljava/util/Map;Lcom/android/tools/r8/graph/H0;)V
    .locals 2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/naming/e0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c()Ljava/util/function/Function;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/naming/E2;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/E2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/naming/e0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;
    .locals 2

    .line 57
    iget-object p3, p0, Lcom/android/tools/r8/naming/Z;->f:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->h:Lcom/android/tools/r8/naming/b0;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/b0;

    .line 58
    new-instance p3, Lcom/android/tools/r8/naming/b0;

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/naming/c0;->b:Ljava/util/function/Function;

    .line 60
    iget-object v1, p1, Lcom/android/tools/r8/naming/b0;->e:Lcom/android/tools/r8/naming/m0;

    invoke-direct {p3, p1, v0, v1, p2}, Lcom/android/tools/r8/naming/b0;-><init>(Lcom/android/tools/r8/naming/b0;Ljava/util/function/Function;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/e0;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/e0;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/e0;

    if-eqz v0, :cond_0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/e0;

    return-object p1

    .line 103
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/naming/Z;->j:Z

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 104
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 105
    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/e0;

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find reservation state for frontier type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Tn;)Ljava/util/Map;
    .locals 5

    .line 12
    iget-object v0, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    .line 15
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    iget-object v3, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/e0;

    if-eqz v2, :cond_1

    .line 21
    new-instance v3, Lcom/android/tools/r8/naming/F2;

    invoke-direct {v3, v2, p1}, Lcom/android/tools/r8/naming/F2;-><init>(Lcom/android/tools/r8/naming/e0;Ljava/util/Map;)V

    invoke-interface {p2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 22
    :cond_1
    new-instance v2, Lcom/android/tools/r8/naming/G2;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/naming/G2;-><init>(Lcom/android/tools/r8/naming/Z;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    new-instance v1, Lcom/android/tools/r8/graph/d6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 27
    iput-boolean v2, v1, Lcom/android/tools/r8/graph/T;->e:Z

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/naming/y2;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/naming/y2;-><init>(Lcom/android/tools/r8/naming/Z;)V

    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)V
    .locals 7

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    .line 33
    invoke-interface {v2, v0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/e0;

    .line 34
    sget-boolean v2, Lcom/android/tools/r8/naming/Z;->j:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find reservation state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 36
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->f:Ljava/util/IdentityHashMap;

    new-instance v3, Lcom/android/tools/r8/naming/z2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/tools/r8/naming/z2;-><init>(Lcom/android/tools/r8/naming/Z;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/naming/e0;)V

    .line 37
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/b0;

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->b:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->C0()Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/A2;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/A2;-><init>()V

    .line 40
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result p1

    .line 44
    invoke-static {v1, v2, p1}, Lcom/android/tools/r8/internal/AT;->a(Lcom/android/tools/r8/internal/sK;Ljava/util/Comparator;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H0;

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/naming/Z;->b:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/naming/b0;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 51
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 53
    iget-object v5, p0, Lcom/android/tools/r8/naming/Z;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v6, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/a0;

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v4, v3}, Lcom/android/tools/r8/naming/a0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 3

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->C0()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 62
    iget-object v0, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/tools/r8/graph/H0;

    .line 66
    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->b:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/e0;)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    new-instance v1, Lcom/android/tools/r8/naming/D2;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/naming/D2;-><init>(Lcom/android/tools/r8/naming/e0;)V

    .line 72
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/e0;

    .line 73
    iget-object p3, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 74
    sget-object p3, Lcom/android/tools/r8/internal/Un;->d:Lcom/android/tools/r8/internal/Sn;

    .line 75
    new-instance p3, Lcom/android/tools/r8/internal/Tn;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/Tn;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->C0()Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 77
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->u:Lcom/android/tools/r8/internal/pB;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/pB;->a(Lcom/android/tools/r8/internal/sK;)Ljava/lang/Iterable;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H0;

    .line 79
    iget-object v3, p0, Lcom/android/tools/r8/naming/Z;->b:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p2, v2, v3}, Lcom/android/tools/r8/naming/e0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 82
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 83
    instance-of v3, v3, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 85
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 86
    iget-object v4, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/naming/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Tn;)Ljava/util/Map;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H0;

    .line 91
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 93
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 97
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/naming/e0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/b0;

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->h:Lcom/android/tools/r8/naming/b0;

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/Z;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/e0;

    move-result-object v1

    .line 21
    sget-boolean v2, Lcom/android/tools/r8/naming/Z;->j:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find reservation state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 22
    :cond_3
    :goto_1
    new-instance v2, Lcom/android/tools/r8/naming/b0;

    .line 23
    iget-object v3, v0, Lcom/android/tools/r8/naming/c0;->b:Ljava/util/function/Function;

    .line 24
    iget-object v4, v0, Lcom/android/tools/r8/naming/b0;->e:Lcom/android/tools/r8/naming/m0;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/tools/r8/naming/b0;-><init>(Lcom/android/tools/r8/naming/b0;Ljava/util/function/Function;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/e0;)V

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_4
    return-object v0
.end method

.method public final b()Ljava/util/function/Function;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 3
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/tools/r8/naming/Z;->c()Ljava/util/function/Function;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/naming/B2;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/B2;-><init>()V

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/E0;)V
    .locals 4

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    if-ne v1, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->g:Ljava/util/IdentityHashMap;

    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 10
    sget-boolean v3, Lcom/android/tools/r8/naming/Z;->j:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/naming/Z;->i:Lcom/android/tools/r8/naming/e0;

    .line 12
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/e0;

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/naming/Z;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/e0;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    new-instance v1, Lcom/android/tools/r8/naming/H2;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/H2;-><init>(Lcom/android/tools/r8/naming/Z;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/naming/Z;->i:Lcom/android/tools/r8/naming/e0;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/naming/Z;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/e0;)V

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/graph/d6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    iget-object v0, p0, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/naming/C2;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/naming/C2;-><init>(Lcom/android/tools/r8/naming/Z;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method
