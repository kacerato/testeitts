.class public final Lcom/android/tools/r8/internal/kt0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/O60;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Lcom/android/tools/r8/internal/j80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O60;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kt0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/kt0;->g:Ljava/util/Set;

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kt0;->b:Lcom/android/tools/r8/internal/O60;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;)I
    .locals 5

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 79
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 80
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    const/4 v1, 0x3

    if-eqz v0, :cond_a

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result v2

    if-nez v2, :cond_a

    .line 84
    iget v2, v0, Lcom/android/tools/r8/graph/o3;->b:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 86
    :cond_1
    iget v0, v0, Lcom/android/tools/r8/graph/o3;->b:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 88
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 90
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 93
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    .line 95
    iget-object v3, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    if-eq v3, p0, :cond_8

    .line 97
    iget-object p0, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 101
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 102
    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/graph/t5;)Z

    move-result p0

    goto :goto_1

    .line 103
    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/internal/Fm0;->d:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_8

    return v2

    :cond_8
    return v1

    .line 104
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->a0()Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    :goto_2
    return v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 75
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/ci1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ci1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/android/tools/r8/internal/jt0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/jt0;-><init>(Lcom/android/tools/r8/internal/kt0;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->p0()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    sget-boolean v0, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    monitor-enter p1

    .line 58
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VY;

    .line 59
    iput-object v0, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 60
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget p1, v0, Lcom/android/tools/r8/internal/VY;->b:I

    or-int/lit8 p1, p1, 0x2

    .line 62
    iput p1, v0, Lcom/android/tools/r8/internal/VY;->b:I

    return-void

    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p1

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/d;)V
    .locals 2

    .line 125
    sget-boolean v0, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 126
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    .line 127
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p2

    .line 128
    iget-object p2, p2, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    .line 129
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/m80;

    .line 130
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 131
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    sget-object v1, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 134
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    .line 135
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 136
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/d;)V
    .locals 1

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    check-cast p1, Lcom/android/tools/r8/graph/n3;

    .line 111
    iget-object p1, p1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o3;->a()V

    .line 114
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    .line 115
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p3

    .line 116
    iget-object p3, p3, Lcom/android/tools/r8/graph/a;->a:Ljava/util/Map;

    .line 117
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/m80;

    .line 118
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 119
    iget-object p3, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    iget-object p3, p0, Lcom/android/tools/r8/internal/kt0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 122
    invoke-virtual {p3, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/m80;

    .line 123
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 124
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/i;)V
    .locals 2

    .line 161
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 162
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Zh1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Zh1;-><init>(Lcom/android/tools/r8/internal/kt0;Lcom/android/tools/r8/graph/m3;)V

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 165
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/ai1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/ai1;-><init>(Lcom/android/tools/r8/internal/kt0;Lcom/android/tools/r8/graph/m3;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/bi1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/bi1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    .line 66
    invoke-static {v1, v2, v0, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/J;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/bi1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/bi1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    .line 68
    invoke-static {v1, v2, v0, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/shaking/i;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kt0;->b(Lcom/android/tools/r8/shaking/i;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->b:Lcom/android/tools/r8/internal/O60;

    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    .line 72
    iget-object v0, p1, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 73
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/qU;->c(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    .line 74
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/internal/m80;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 2
    const-string v1, "Trivial field accesses analysis"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 4
    :cond_0
    const-string p2, "Compute fields of interest"

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 7
    iget-object v6, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;)I

    move-result v6

    .line 8
    invoke-static {v6}, Lcom/android/tools/r8/c;->b(I)I

    move-result v7

    if-eqz v7, :cond_5

    if-eq v7, v5, :cond_4

    .line 9
    sget-boolean v3, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v3, :cond_2

    if-ne v6, v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/kt0;->g:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->i()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;)I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 15
    iget-object v3, p0, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_9
    sget-boolean v2, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v2, :cond_8

    const/4 v2, 0x2

    if-eq v3, v2, :cond_8

    if-ne v3, v4, :cond_a

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_b
    sget-boolean p2, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/J;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 20
    sget-boolean v3, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v3, :cond_d

    .line 21
    iget-object v2, v2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_f
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 24
    const-string p2, "Enqueue methods for reprocessing"

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/shaking/i;Ljava/util/concurrent/ExecutorService;)V

    .line 26
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 27
    const-string p1, "Clear reads and writes from fields of interest"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 28
    iget-object p1, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 31
    iget-object v1, p1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->a()V

    goto :goto_3

    .line 34
    :cond_10
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 36
    iget-object v1, p1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 37
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object v1, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    iput-object v1, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    goto :goto_4

    .line 40
    :cond_11
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 42
    iget-object v1, p1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 43
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->a()V

    goto :goto_5

    .line 45
    :cond_12
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 46
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    new-instance p2, Lcom/android/tools/r8/internal/di1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/di1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 48
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/di1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/di1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/ei1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/ei1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->b:Lcom/android/tools/r8/internal/O60;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/tools/r8/internal/fi1;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/fi1;-><init>(Lcom/android/tools/r8/internal/O60;)V

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 52
    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/Wr0;->a(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;ZLcom/android/tools/r8/graph/m3;)Z
    .locals 4

    .line 137
    sget-boolean v0, Lcom/android/tools/r8/internal/kt0;->i:Z

    if-nez v0, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    check-cast p3, Lcom/android/tools/r8/graph/n3;

    .line 142
    iget-object p3, p3, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 143
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/o3;

    const/4 v1, 0x0

    if-nez p3, :cond_5

    if-eqz v0, :cond_4

    return v1

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected program field with concrete accesses to be present in field access collection"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 145
    :cond_5
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result v0

    if-nez v0, :cond_c

    .line 146
    iget v0, p3, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 148
    :cond_7
    iget p3, p3, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_9

    goto :goto_2

    :cond_9
    if-eqz p2, :cond_b

    .line 149
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 150
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 151
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 153
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 156
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 157
    iget-object p2, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 158
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/shaking/i;

    .line 159
    iget-object p3, p3, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 160
    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/graph/t5;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_2
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/m3;Ljava/util/Map$Entry;)Z
    .locals 2

    .line 105
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    instance-of v0, v0, Lcom/android/tools/r8/graph/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 108
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/graph/g1;ZLcom/android/tools/r8/graph/m3;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/g1;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/G1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v2

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/i;)V
    .locals 2

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Xh1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Xh1;-><init>(Lcom/android/tools/r8/internal/kt0;Lcom/android/tools/r8/graph/m3;)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/Yh1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yh1;-><init>(Lcom/android/tools/r8/internal/kt0;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/m3;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, v0, Lcom/android/tools/r8/graph/a;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/kt0;->a(Lcom/android/tools/r8/graph/g1;ZLcom/android/tools/r8/graph/m3;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
