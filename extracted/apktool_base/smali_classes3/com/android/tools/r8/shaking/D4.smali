.class public Lcom/android/tools/r8/shaking/D4;
.super Lcom/android/tools/r8/shaking/E4;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/hC;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Set;

.field public final i:Lcom/android/tools/r8/internal/W60;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Set;

.field public final l:Ljava/util/Set;

.field public final m:Lcom/android/tools/r8/internal/W;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/nI;)V
    .locals 0

    invoke-direct {p0, p1, p8, p11, p12}, Lcom/android/tools/r8/shaking/E4;-><init>(Lcom/android/tools/r8/shaking/C;Ljava/util/Map;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/D4;->f:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/D4;->g:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/D4;->h:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/tools/r8/shaking/D4;->i:Lcom/android/tools/r8/internal/W60;

    iput-object p7, p0, Lcom/android/tools/r8/shaking/D4;->j:Ljava/util/Map;

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/D4;->k:Ljava/util/Set;

    invoke-static {p10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    check-cast p13, Lcom/android/tools/r8/internal/W;

    iput-object p13, p0, Lcom/android/tools/r8/shaking/D4;->m:Lcom/android/tools/r8/internal/W;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/o0;
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/o0;
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)Lcom/android/tools/r8/shaking/I4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/M70;",
            "Lcom/android/tools/r8/graph/Y5;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/r8/shaking/v3;",
            ">;)",
            "Lcom/android/tools/r8/shaking/I4;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/android/tools/r8/shaking/I4;

    .line 110
    sget-object v1, Lcom/android/tools/r8/shaking/w4;->c:Lcom/android/tools/r8/shaking/w4;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    instance-of v2, p1, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/X70;

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/X70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    .line 115
    :goto_0
    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/tools/r8/shaking/I4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/x4;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    .line 36
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j;Ljava/util/Map;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 3

    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    instance-of p3, p2, Lcom/android/tools/r8/graph/M2;

    const-string v0, "` to be pinned"

    const-string v1, "Expected reference `"

    if-eqz p3, :cond_3

    .line 87
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 88
    sget-boolean p3, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object p0

    .line 90
    sget-boolean p3, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez p3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 92
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 93
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {p3, p2, v2, p0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 95
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 96
    :cond_2
    :goto_0
    new-instance p0, Lcom/android/tools/r8/shaking/u5;

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/u5;-><init>()V

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void

    .line 97
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    .line 98
    sget-boolean p3, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez p3, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 99
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object p0

    .line 100
    sget-boolean p3, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez p3, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 102
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {p3, p2, v2, p0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    .line 104
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    .line 105
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 106
    :cond_6
    :goto_1
    iget-object p0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p3, Lcom/android/tools/r8/shaking/v5;

    invoke-direct {p3}, Lcom/android/tools/r8/shaking/v5;-><init>()V

    .line 107
    invoke-interface {p1, p0, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 108
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)V
    .locals 5

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ;->X0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/v3;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v2, v1, Lcom/android/tools/r8/shaking/G3;

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/v3;->p()Lcom/android/tools/r8/shaking/G3;

    move-result-object v2

    .line 22
    iget-object v3, v2, Lcom/android/tools/r8/shaking/G3;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    .line 24
    iput-object v4, v2, Lcom/android/tools/r8/shaking/G3;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    new-instance v3, Lcom/android/tools/r8/internal/lK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/lK0;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 28
    iget-object v3, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v4, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;-><init>(Lcom/android/tools/r8/shaking/G3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 29
    :cond_4
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/v3;->o:Z

    if-nez v2, :cond_3

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/errors/UnusedProguardKeepRuleDiagnostic;-><init>(Lcom/android/tools/r8/shaking/v3;)V

    monitor-enter v2

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 32
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v2

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/tools/r8/shaking/L5;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/shaking/L5;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)Z
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 68
    iget-object p0, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/shaking/s2;)Z
    .locals 0

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/O5;)V

    .line 59
    iget-object p0, p1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/J2;)Z
    .locals 3

    .line 46
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/D5;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/D5;-><init>(Lcom/android/tools/r8/graph/d1;)V

    new-instance v1, Lcom/android/tools/r8/shaking/E5;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/E5;-><init>(Lcom/android/tools/r8/graph/d1;)V

    new-instance v2, Lcom/android/tools/r8/shaking/F5;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/F5;-><init>(Lcom/android/tools/r8/graph/d1;)V

    .line 47
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/o0;

    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/o0;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/shaking/s1;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    .line 52
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/s1;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->s()Lcom/android/tools/r8/shaking/k1;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 9
    sget-boolean p2, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected kept type `"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to be live"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)Z
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)Z
    .locals 0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of p0, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/D4;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 60
    const-string v2, "Rewrite RootSet"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/shaking/g5;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/g5;-><init>()V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 63
    new-instance v2, Lcom/android/tools/r8/shaking/D4;

    .line 64
    iget-object v3, v0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    move-object/from16 v4, p1

    .line 65
    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    iget-object v7, v0, Lcom/android/tools/r8/shaking/D4;->f:Ljava/util/Set;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/D4;->g:Ljava/util/Set;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/D4;->h:Ljava/util/Set;

    iget-object v10, v0, Lcom/android/tools/r8/shaking/D4;->i:Lcom/android/tools/r8/internal/W60;

    iget-object v11, v0, Lcom/android/tools/r8/shaking/D4;->j:Ljava/util/Map;

    iget-object v12, v0, Lcom/android/tools/r8/shaking/E4;->b:Ljava/util/Map;

    iget-object v13, v0, Lcom/android/tools/r8/shaking/D4;->k:Ljava/util/Set;

    iget-object v14, v0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    iget-object v15, v0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/E4;->d:Lcom/android/tools/r8/internal/h80;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/D4;->m:Lcom/android/tools/r8/internal/W;

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v16, v3

    invoke-direct/range {v4 .. v17}, Lcom/android/tools/r8/shaking/D4;-><init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/nI;)V

    .line 66
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v2
.end method

.method public a(Lcom/android/tools/r8/graph/D5;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p1

    new-instance v1, Lcom/android/tools/r8/shaking/G5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/G5;-><init>()V

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/K5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/K5;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 53
    const-string v0, "Prune RootSet"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 55
    new-instance v1, Lcom/android/tools/r8/shaking/t5;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/t5;-><init>(Lcom/android/tools/r8/graph/O5;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Ljava/util/function/Predicate;)V

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 12
    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/B5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/B5;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/C5;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/shaking/C5;-><init>(Lcom/android/tools/r8/shaking/D4;Lcom/android/tools/r8/graph/y;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s2;->a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 3

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object p3, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 73
    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_5

    .line 75
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/D4;->n:Z

    const-string v1, "Expected kept field `"

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` to be read"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 80
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` to be written"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/z4;)V
    .locals 2

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/shaking/E4;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/J5;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/J5;-><init>(Lcom/android/tools/r8/shaking/D4;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/nJ;)Z
    .locals 1

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 41
    sget-object v0, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 42
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p2

    .line 43
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/A5;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/A5;-><init>()V

    .line 44
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 81
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 83
    :cond_1
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p2, :cond_2

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)V
    .locals 9

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 21
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 23
    sget-object v3, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/H5;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/H5;-><init>()V

    new-instance v4, Lcom/android/tools/r8/shaking/I5;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/shaking/I5;-><init>(Lcom/android/tools/r8/graph/j;Ljava/util/Map;)V

    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/s2;->a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 27
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 28
    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    .line 29
    sget-object v4, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    .line 30
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 31
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/v2;

    .line 32
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v7

    const-string v8, "` from the root set to be present"

    if-eqz v7, :cond_3

    .line 33
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    if-nez v5, :cond_1

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/android/tools/r8/graph/md;

    invoke-direct {v7}, Lcom/android/tools/r8/graph/md;-><init>()V

    .line 35
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 36
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 37
    :cond_1
    sget-boolean v7, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez v7, :cond_0

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected field `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 39
    :cond_3
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    if-nez v4, :cond_4

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v7}, Lcom/android/tools/r8/graph/I9;-><init>()V

    .line 41
    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 43
    :cond_4
    sget-boolean v7, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 44
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected method `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 45
    :cond_6
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 46
    :cond_7
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 47
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 49
    sget-boolean v2, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez v2, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected library type in root set: `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_2
    if-nez v2, :cond_b

    .line 50
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected type `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` to be present"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_b
    :goto_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/shaking/D4;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    .line 7
    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected kept method `"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` to be targeted"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v1, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 12
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 17
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected non-abstract kept method `"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` to be live"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 2
    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/w5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/w5;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/x5;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/shaking/x5;-><init>(Lcom/android/tools/r8/shaking/D4;Lcom/android/tools/r8/graph/y;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s2;->a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 2
    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/y5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/y5;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/z5;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/shaking/z5;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s2;->a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RootSet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nreasonAsked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/D4;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nidentifierNameStrings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nifRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
