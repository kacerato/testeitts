.class public final Lcom/android/tools/r8/shaking/x1;
.super Lcom/android/tools/r8/shaking/y1;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public h:Lcom/android/tools/r8/internal/AV;

.field public final i:Lcom/android/tools/r8/shaking/w1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/AV;Lcom/android/tools/r8/shaking/w1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/y1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/x1;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/x1;->f:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/tools/r8/shaking/x1;->g:Ljava/util/Map;

    iput-object p7, p0, Lcom/android/tools/r8/shaking/x1;->h:Lcom/android/tools/r8/internal/AV;

    iput-object p8, p0, Lcom/android/tools/r8/shaking/x1;->i:Lcom/android/tools/r8/shaking/w1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 51
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Supplier;Ljava/lang/Object;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 112
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 3

    .line 109
    new-instance v0, Lu/y0;

    invoke-direct {v0}, Lu/y0;-><init>()V

    .line 110
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/wf;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/shaking/wf;-><init>(Ljava/util/function/Supplier;)V

    .line 111
    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/H1;)V
    .locals 1

    .line 121
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p1, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p1, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/p1;)V
    .locals 1

    .line 118
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p1, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/I1;)V
    .locals 5

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 84
    sget-boolean v1, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 86
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 88
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 90
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    instance-of v2, p0, Lcom/android/tools/r8/internal/V00;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 93
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 95
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/shaking/ad;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/shaking/ad;-><init>(Lcom/android/tools/r8/internal/R00;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/shaking/Mf;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/Mf;-><init>()V

    .line 96
    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/Nf;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/Nf;-><init>()V

    .line 97
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 98
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    instance-of v2, p0, Lcom/android/tools/r8/internal/V00;

    if-eqz v2, :cond_4

    goto :goto_2

    .line 100
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 101
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 103
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v1, p3}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    .line 106
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 107
    :cond_7
    :goto_3
    invoke-interface {p2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/I1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/l1;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-boolean p0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez p0, :cond_6

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 57
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_4

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 58
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-boolean v1, p4, Lcom/android/tools/r8/shaking/l1;->n:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    new-instance p2, Ljava/lang/AssertionError;

    .line 63
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p3

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    .line 66
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->V()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-boolean p1, p4, Lcom/android/tools/r8/shaking/l1;->n:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 69
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -> "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": isPinned: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isMinificationAllowed: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isRepackagingAllowed: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 70
    :cond_4
    :goto_1
    invoke-interface {p2, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/l1;

    if-nez v0, :cond_6

    if-nez p0, :cond_5

    goto :goto_2

    .line 71
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/q1;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 75
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 76
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 77
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 79
    :cond_1
    :goto_0
    invoke-interface {p2, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/q1;

    if-nez v0, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/l1;)V
    .locals 1

    .line 168
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/I1;)V
    .locals 0

    .line 171
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/l1;)V
    .locals 0

    .line 169
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/q1;)V
    .locals 0

    .line 174
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 124
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Boolean;)Z
    .locals 0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;
    .locals 1

    .line 142
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 143
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    .line 144
    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 145
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/I1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 140
    sget-object v1, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 141
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;
    .locals 1

    .line 152
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 154
    sget-object v0, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    .line 155
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/q1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/x1;
    .locals 10

    .line 32
    const-string v0, "Rewrite KeepInfoCollection"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;

    move-result-object v2

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->d(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;

    move-result-object v3

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->c(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;

    move-result-object v4

    .line 36
    new-instance p2, Lcom/android/tools/r8/shaking/x1;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->e:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/yf;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/yf;-><init>(Lcom/android/tools/r8/internal/R00;)V

    new-instance v5, Lcom/android/tools/r8/shaking/zf;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/zf;-><init>()V

    .line 37
    invoke-static {v0, v1, v5}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->f:Ljava/util/Map;

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/Af;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Af;-><init>(Lcom/android/tools/r8/internal/R00;)V

    new-instance v6, Lcom/android/tools/r8/shaking/Bf;

    invoke-direct {v6}, Lcom/android/tools/r8/shaking/Bf;-><init>()V

    .line 39
    invoke-static {v0, v1, v6}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->g:Ljava/util/Map;

    .line 40
    new-instance v1, Lcom/android/tools/r8/shaking/Cf;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Cf;-><init>(Lcom/android/tools/r8/internal/R00;)V

    new-instance v7, Lcom/android/tools/r8/shaking/ma;

    invoke-direct {v7}, Lcom/android/tools/r8/shaking/ma;-><init>()V

    .line 41
    invoke-static {v0, v1, v7}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->h:Lcom/android/tools/r8/internal/AV;

    .line 42
    new-instance v8, Lcom/android/tools/r8/internal/AV;

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/internal/AV;->a:Lcom/android/tools/r8/shaking/s2;

    .line 44
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    iget-object v0, v0, Lcom/android/tools/r8/internal/AV;->b:Ljava/util/List;

    invoke-direct {v8, p1, v0}, Lcom/android/tools/r8/internal/AV;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    .line 45
    iget-object v9, p0, Lcom/android/tools/r8/shaking/x1;->i:Lcom/android/tools/r8/shaking/w1;

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/shaking/x1;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/AV;Lcom/android/tools/r8/shaking/w1;)V

    .line 46
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p2
.end method

.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;
    .locals 0

    .line 166
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/I1;)V
    .locals 1

    .line 136
    instance-of v0, p2, Lcom/android/tools/r8/shaking/T4;

    if-eqz v0, :cond_2

    .line 137
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 1

    .line 165
    new-instance v0, Lcom/android/tools/r8/shaking/If;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/If;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Consumer;)V
    .locals 3

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/android/tools/r8/shaking/q1;->n:Lcom/android/tools/r8/shaking/q1;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    sget-boolean p1, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez p1, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/q1;->c()Lcom/android/tools/r8/shaking/p1;

    move-result-object v1

    .line 15
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->l()Lcom/android/tools/r8/shaking/t1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/q1;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->i:Lcom/android/tools/r8/shaking/w1;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/shaking/w1;->a(Lcom/android/tools/r8/shaking/q1;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 125
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 127
    sget-object v1, Lcom/android/tools/r8/shaking/T4;->F:Lcom/android/tools/r8/shaking/T4;

    .line 128
    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 2

    .line 146
    iget-object v0, p2, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 147
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->c()Lcom/android/tools/r8/shaking/t1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/r1;->b(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/tools/r8/shaking/Hf;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/Hf;-><init>(Lcom/android/tools/r8/shaking/H1;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 149
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->g:Ljava/util/Map;

    .line 150
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    new-instance v1, Lcom/android/tools/r8/shaking/ma;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/ma;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    .line 151
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/l1;)V
    .locals 1

    .line 133
    instance-of v0, p2, Lcom/android/tools/r8/shaking/Q4;

    if-eqz v0, :cond_2

    .line 134
    sget-boolean v0, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 21
    iget-object v1, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 23
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 25
    iget-object v1, p1, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 29
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->e:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/Uf;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/Uf;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 114
    iget-object p2, p0, Lcom/android/tools/r8/shaking/x1;->f:Ljava/util/Map;

    new-instance v0, Lcom/android/tools/r8/shaking/Vf;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/shaking/Vf;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 115
    iget-object p2, p0, Lcom/android/tools/r8/shaking/x1;->g:Ljava/util/Map;

    new-instance p3, Lcom/android/tools/r8/shaking/Wf;

    invoke-direct {p3, p1, p4}, Lcom/android/tools/r8/shaking/Wf;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Ef;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/Ef;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/x1;)V
    .locals 2

    .line 131
    iget-object v0, p1, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Kf;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Kf;-><init>(Lcom/android/tools/r8/shaking/x1;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 132
    iget-object p1, p1, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/shaking/Lf;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Lf;-><init>(Lcom/android/tools/r8/shaking/x1;)V

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/y1;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/android/tools/r8/shaking/Jf;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Jf;-><init>(Lcom/android/tools/r8/shaking/x1;)V

    check-cast p1, Lcom/android/tools/r8/shaking/x1;

    .line 130
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/android/tools/r8/shaking/l1;->s:Lcom/android/tools/r8/shaking/l1;

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    sget-boolean p1, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez p1, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 160
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object v1

    .line 161
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->l()Lcom/android/tools/r8/shaking/t1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->i:Lcom/android/tools/r8/shaking/w1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/w1;->a(Lcom/android/tools/r8/shaking/l1;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/tools/r8/shaking/I1;->C:Lcom/android/tools/r8/shaking/I1;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez p1, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->l()Lcom/android/tools/r8/shaking/t1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/I1;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->i:Lcom/android/tools/r8/shaking/w1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/w1;->a(Lcom/android/tools/r8/shaking/I1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/vf;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/shaking/vf;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 13
    const-string v0, "Rewrite class info"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 14
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/Of;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/tools/r8/shaking/Of;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/shaking/Pf;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Pf;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/tools/r8/shaking/Gf;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/Gf;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O5;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Sf;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Sf;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Tf;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Tf;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->h:Lcom/android/tools/r8/internal/AV;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/AV;->a(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Df;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/shaking/Df;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 1
    const-string v0, "Rewrite field info"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->d:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/xf;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/tools/r8/shaking/xf;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/shaking/Ff;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/Ff;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Qf;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/shaking/Qf;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;
    .locals 3

    const-string v0, "Rewrite method info"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x1;->c:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/Rf;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/tools/r8/shaking/Rf;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method
