.class public final Lcom/android/tools/r8/naming/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/Y5;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Lcom/android/tools/r8/naming/m0;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/naming/m0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/z;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/z;->d:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/z;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/z;->g:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/naming/z;->b:Lcom/android/tools/r8/graph/Y5;

    iput-object p3, p0, Lcom/android/tools/r8/naming/z;->e:Lcom/android/tools/r8/naming/m0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/naming/Q0;)V
    .locals 0

    .line 123
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/Q0;->a(Lcom/android/tools/r8/naming/Q0;)V

    .line 124
    sget-boolean p0, Lcom/android/tools/r8/naming/Q0;->e:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p0, :cond_3

    .line 125
    iget-object p0, p2, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 126
    :cond_3
    :goto_1
    iput-object p1, p2, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 58
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 59
    iget-object p3, p0, Lcom/android/tools/r8/naming/z;->g:Ljava/util/IdentityHashMap;

    .line 60
    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/Q0;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->d:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/naming/m4;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/m4;-><init>(Lcom/android/tools/r8/naming/z;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/Q0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ns0;Ljava/util/List;)Lcom/android/tools/r8/naming/x;
    .locals 3

    .line 1
    const-string v0, "reserve-names"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/z;->c()V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 4
    const-string v0, "rename-definitions"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 5
    new-instance v0, Lcom/android/tools/r8/naming/y;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/y;-><init>(Lcom/android/tools/r8/naming/z;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/naming/y;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/util/Set;

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/z;->a(Ljava/util/Set;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/z;->a()V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/z;->b()V

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 11
    new-instance p1, Lcom/android/tools/r8/naming/x;

    iget-object p2, p0, Lcom/android/tools/r8/naming/z;->c:Ljava/util/IdentityHashMap;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/x;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 63
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    new-instance v2, Lcom/android/tools/r8/graph/d6;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 66
    iput-boolean v3, v2, Lcom/android/tools/r8/graph/T;->e:Z

    .line 67
    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/naming/s4;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/naming/s4;-><init>(Lcom/android/tools/r8/naming/z;Ljava/util/Map;)V

    .line 69
    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)V
    .locals 7

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->f:Ljava/util/IdentityHashMap;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 16
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->f:Ljava/util/IdentityHashMap;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 18
    sget-boolean v2, Lcom/android/tools/r8/naming/z;->h:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/z;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/Q0;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->B0()Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    .line 21
    iget-object v3, v2, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v2, v2, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v2

    .line 22
    :cond_4
    :goto_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23
    iget-object v3, v2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/tools/r8/graph/F0;

    .line 25
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->e:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/C;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/P0;

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 31
    iget-object v5, v5, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    .line 32
    invoke-virtual {v5, v4, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 35
    iget-object v5, p0, Lcom/android/tools/r8/naming/z;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v5, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 36
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/naming/z;->g:Ljava/util/IdentityHashMap;

    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 39
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 42
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_7

    .line 43
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->f:Ljava/util/IdentityHashMap;

    .line 44
    invoke-interface {v4, v3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 45
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/naming/z;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/Q0;

    move-result-object v4

    if-eq v4, v1, :cond_8

    .line 46
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/naming/Q0;->a(Lcom/android/tools/r8/naming/Q0;)V

    .line 47
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 48
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object v6, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v6, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v4, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_7

    .line 50
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 51
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 52
    :cond_a
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/naming/z;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/naming/Q0;)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/naming/Q0;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    new-instance v1, Lcom/android/tools/r8/naming/l4;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/naming/l4;-><init>(Lcom/android/tools/r8/naming/z;Lcom/android/tools/r8/naming/Q0;)V

    .line 57
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->B0()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 95
    iget-object v0, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Lcom/android/tools/r8/graph/F0;

    .line 99
    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->e:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/tools/r8/naming/z;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/naming/B;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/naming/z;->b(Lcom/android/tools/r8/naming/B;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/B;Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/graph/F5;)V
    .locals 1

    .line 127
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/naming/z;->b(Lcom/android/tools/r8/naming/B;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    .line 131
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/C;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/P0;

    .line 132
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 133
    iget-object p2, p2, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    .line 134
    invoke-virtual {p2, p1, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)V
    .locals 9

    .line 70
    sget-boolean v0, Lcom/android/tools/r8/naming/z;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 71
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Lcom/android/tools/r8/naming/B;

    iget-object v2, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/naming/z;->e:Lcom/android/tools/r8/naming/m0;

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;)V

    goto :goto_2

    .line 73
    :cond_2
    new-instance v2, Lcom/android/tools/r8/naming/n4;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/naming/n4;-><init>(Lcom/android/tools/r8/naming/z;)V

    .line 74
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/B;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 77
    iget-object v3, v1, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/A;

    .line 79
    new-instance v6, Lcom/android/tools/r8/naming/A;

    .line 80
    iget-object v7, v4, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    .line 81
    iget v8, v4, Lcom/android/tools/r8/naming/A;->c:I

    iget v4, v4, Lcom/android/tools/r8/naming/A;->b:I

    invoke-direct {v6, v7, v8, v4}, Lcom/android/tools/r8/naming/A;-><init>(Lcom/android/tools/r8/naming/B;II)V

    .line 82
    invoke-virtual {v2, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    :cond_3
    new-instance v3, Lcom/android/tools/r8/naming/B;

    iget-object v4, v1, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    iget-object v5, v1, Lcom/android/tools/r8/naming/B;->e:Lcom/android/tools/r8/naming/m0;

    iget-object v1, v1, Lcom/android/tools/r8/naming/B;->d:Lcom/android/tools/r8/naming/Q0;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/Q0;Ljava/util/IdentityHashMap;)V

    move-object v1, v3

    .line 84
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/naming/z;->f:Ljava/util/IdentityHashMap;

    iget-object v3, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 85
    invoke-interface {v2, v3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 86
    iget-object v3, p0, Lcom/android/tools/r8/naming/z;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/Q0;

    .line 87
    new-instance v3, Lcom/android/tools/r8/naming/B;

    iget-object v4, v1, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    iget-object v5, v1, Lcom/android/tools/r8/naming/B;->e:Lcom/android/tools/r8/naming/m0;

    iget-object v1, v1, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/Q0;Ljava/util/IdentityHashMap;)V

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/o4;

    invoke-direct {v2, p0, v3}, Lcom/android/tools/r8/naming/o4;-><init>(Lcom/android/tools/r8/naming/z;Lcom/android/tools/r8/naming/B;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-object v4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v2, v4}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    :cond_4
    if-nez v0, :cond_6

    .line 91
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 92
    :cond_6
    :goto_3
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 6

    .line 104
    new-instance v0, Lcom/android/tools/r8/naming/Q0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/naming/Q0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 105
    new-instance v1, Lcom/android/tools/r8/naming/Q0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/naming/Q0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 106
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/E0;

    .line 107
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->f:Ljava/util/IdentityHashMap;

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 108
    invoke-interface {v4, v5, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 109
    iget-object v5, p0, Lcom/android/tools/r8/naming/z;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/Q0;

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/naming/Q0;->a(Lcom/android/tools/r8/naming/Q0;)V

    .line 111
    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->g:Ljava/util/IdentityHashMap;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 112
    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 113
    sget-boolean v4, Lcom/android/tools/r8/naming/z;->h:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 114
    :cond_2
    :goto_1
    new-instance v4, Lcom/android/tools/r8/naming/q4;

    invoke-direct {v4, v1, v0}, Lcom/android/tools/r8/naming/q4;-><init>(Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/naming/Q0;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 115
    :cond_3
    new-instance v2, Lcom/android/tools/r8/naming/B;

    iget-object v3, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/naming/z;->e:Lcom/android/tools/r8/naming/m0;

    .line 116
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/Q0;Ljava/util/IdentityHashMap;)V

    .line 117
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    .line 118
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    sget-boolean v3, Lcom/android/tools/r8/naming/z;->h:Z

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 120
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/naming/r4;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/tools/r8/naming/r4;-><init>(Lcom/android/tools/r8/naming/z;Lcom/android/tools/r8/naming/B;Lcom/android/tools/r8/naming/Q0;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    sget-object v4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final b(Lcom/android/tools/r8/naming/B;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/graph/L2;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/naming/B;->e:Lcom/android/tools/r8/naming/m0;

    .line 2
    invoke-interface {v0, p2}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/C;->b()Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/tools/r8/naming/A;

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/naming/B;->e:Lcom/android/tools/r8/naming/m0;

    iget-object v0, v0, Lcom/android/tools/r8/naming/B;->f:Ljava/util/function/BiPredicate;

    invoke-interface {v1, p2, p1, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/naming/A;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 8
    sget-boolean v1, Lcom/android/tools/r8/naming/A;->e:Z

    if-nez v1, :cond_b

    iget-object p1, p1, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    iget-object p1, p1, Lcom/android/tools/r8/naming/B;->d:Lcom/android/tools/r8/naming/Q0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v2, p1, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/tools/r8/naming/P0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, v1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, v1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    iget-object v1, p1, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-nez v1, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iget-object v3, v1, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/tools/r8/naming/P0;

    if-nez v1, :cond_5

    :goto_1
    move-object v3, v2

    goto :goto_2

    .line 19
    :cond_5
    iget-object v3, v1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    if-eqz v3, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    iget-object v1, v1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    :goto_2
    if-nez v3, :cond_a

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-nez p1, :cond_7

    goto :goto_3

    .line 22
    :cond_7
    iget-object v1, p1, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/tools/r8/naming/P0;

    if-nez p1, :cond_8

    goto :goto_3

    .line 25
    :cond_8
    iget-object v1, p1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    if-eqz v2, :cond_9

    goto :goto_3

    .line 26
    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    :goto_3
    if-nez v2, :cond_a

    goto :goto_4

    .line 27
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_b
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-eq v0, p1, :cond_c

    .line 29
    iget-object p1, p0, Lcom/android/tools/r8/naming/z;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/Q0;
    .locals 1

    .line 30
    new-instance p1, Lcom/android/tools/r8/naming/Q0;

    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/Q0;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    new-instance v1, Lcom/android/tools/r8/naming/k4;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/k4;-><init>(Lcom/android/tools/r8/naming/z;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/i;->a(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/B;
    .locals 2

    .line 6
    new-instance p1, Lcom/android/tools/r8/naming/B;

    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/naming/z;->e:Lcom/android/tools/r8/naming/m0;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;)V

    return-object p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    new-instance v1, Lcom/android/tools/r8/graph/d6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/z;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/naming/p4;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/naming/p4;-><init>(Lcom/android/tools/r8/naming/z;)V

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method
