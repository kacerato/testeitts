.class public final Lcom/android/tools/r8/shaking/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/diagnostic/internal/m;
    .locals 2

    .line 40
    sget-boolean v0, Lcom/android/tools/r8/diagnostic/internal/m;->c:Z

    .line 41
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/l;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/l;-><init>()V

    .line 42
    new-instance v1, Lcom/android/tools/r8/shaking/nf;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/nf;-><init>(Lcom/android/tools/r8/diagnostic/internal/l;)V

    invoke-virtual {p0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 43
    new-instance p0, Lcom/android/tools/r8/diagnostic/internal/m;

    iget-object v0, v0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/diagnostic/internal/m;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 39
    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/CB;->a()Lcom/android/tools/r8/internal/CB;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/synthesis/G;)Ljava/util/Set;
    .locals 5

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/CB;->a()Lcom/android/tools/r8/internal/CB;

    move-result-object v0

    .line 57
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E5;

    .line 58
    invoke-interface {v1}, Lcom/android/tools/r8/graph/E5;->B()Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CB;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v1}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 62
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object v4, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 65
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CB;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    sget-boolean v3, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v3, :cond_5

    .line 70
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 73
    :cond_5
    :goto_1
    invoke-interface {p2, v2}, Lcom/android/tools/r8/synthesis/G;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;

    move-result-object v1

    .line 74
    sget-boolean v2, Lcom/android/tools/r8/shaking/t2;->d:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    if-nez v2, :cond_9

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 76
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/J2;

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 78
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 80
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 81
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 82
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/CB;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 83
    :cond_a
    sget-boolean v2, Lcom/android/tools/r8/shaking/t2;->d:Z

    if-nez v2, :cond_c

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 84
    :cond_c
    :goto_5
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/CB;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 85
    :cond_d
    instance-of v3, v2, Lcom/android/tools/r8/graph/M2;

    if-eqz v3, :cond_e

    .line 86
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/CB;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 88
    :cond_e
    sget-boolean v3, Lcom/android/tools/r8/shaking/t2;->d:Z

    if-eqz v3, :cond_f

    goto :goto_4

    .line 89
    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    .line 90
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected synthesizing context: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_10
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 5

    .line 11
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/E5;

    .line 15
    invoke-static {v2}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    .line 17
    array-length v4, v0

    if-ge v4, v3, :cond_0

    .line 18
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 19
    :cond_0
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 20
    :cond_1
    new-instance p2, Lcom/android/tools/r8/diagnostic/internal/h;

    .line 21
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 22
    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/diagnostic/internal/h;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/internal/hC;)V

    .line 23
    iget-object p0, p0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->u0()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/of;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/of;-><init>(Lcom/android/tools/r8/internal/IC;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ui;)V
    .locals 1

    .line 1
    iget-object p2, p3, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 6
    :cond_0
    iget-object p2, p3, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    :cond_1
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 0

    .line 91
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p0, Lcom/android/tools/r8/shaking/hf;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/hf;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p4, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 93
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 94
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E5;)Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 103
    invoke-interface {p1}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/et;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 95
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 96
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 97
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/QC;
    .locals 9

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->x5:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->C5:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->N5:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->P5:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->u5:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->i6:Lcom/android/tools/r8/graph/M2;

    filled-new-array/range {v2 .. v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xU;->h()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/jf;

    invoke-direct {v3, v1, p0}, Lcom/android/tools/r8/shaking/jf;-><init>(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/y;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p0, Lcom/android/tools/r8/shaking/kf;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/shaking/kf;-><init>(Lcom/android/tools/r8/internal/IC;)V

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/qi;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;
    .locals 3

    invoke-static {p0}, Lcom/android/tools/r8/shaking/t2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-static {p0}, Lcom/android/tools/r8/shaking/t2;->d(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;

    move-result-object v1

    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    new-instance v2, Lcom/android/tools/r8/shaking/gf;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/tools/r8/shaking/gf;-><init>(Ljava/util/Set;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/et;)V

    return-object v2
.end method

.method public static d(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    const-string v0, "L$-vivified-$/"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/shaking/ff;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/ff;-><init>(Lcom/android/tools/r8/graph/L2;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/shaking/u2;
    .locals 3

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/shaking/t2;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/shaking/mf;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/mf;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/G;)Ljava/util/IdentityHashMap;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/shaking/u2;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 36
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/u2;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/G;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 45
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 49
    invoke-static {p1, v2, p2}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/synthesis/G;)Ljava/util/Set;

    move-result-object v2

    .line 50
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/shaking/t2;->c(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;

    move-result-object p2

    .line 52
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 53
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/if;

    invoke-direct {v2, p2, p1, v0}, Lcom/android/tools/r8/shaking/if;-><init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V
    .locals 2

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/shaking/t2;->d:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 26
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/lf;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/lf;-><init>()V

    .line 29
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 30
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
