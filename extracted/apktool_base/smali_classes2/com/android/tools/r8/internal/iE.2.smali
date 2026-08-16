.class public final Lcom/android/tools/r8/internal/iE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/x1;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/AA;

.field public final e:Ljava/util/List;

.field public final f:Lcom/android/tools/r8/internal/eE;

.field public final g:Lcom/android/tools/r8/internal/wA;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/AA;Ljava/util/List;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/eE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iE;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/iE;->b:Lcom/android/tools/r8/internal/x1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    iput-object p4, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/android/tools/r8/internal/iE;->f:Lcom/android/tools/r8/internal/eE;

    iput-object p5, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    sget-boolean p1, Lcom/android/tools/r8/internal/iE;->h:Z

    if-nez p1, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    invoke-interface {p4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/Wd1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Wd1;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_3

    if-eqz p6, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public static a(ILjava/util/List;)Ljava/util/Set;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Td1;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/Td1;-><init>(Ljava/util/List;I)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->a(Lcom/android/tools/r8/internal/Yx;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/j1;->t:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    .line 127
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;ILjava/util/function/Consumer;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Yd1;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Yd1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;ILcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 4
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/qd;->a:Lcom/android/tools/r8/internal/hC;

    .line 17
    new-instance v2, Lcom/android/tools/r8/internal/Zd1;

    invoke-direct {v2, p2, p4}, Lcom/android/tools/r8/internal/Zd1;-><init>(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/A2;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p4

    invoke-virtual {v0, v1, p1, v2, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/hC;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 21
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    iget-object p4, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    .line 23
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p3, p1, p4, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/Vd1;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/Vd1;-><init>(Lcom/android/tools/r8/internal/td;)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 9
    const-string v1, "$r8$init$synthetic"

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/td;)V
    .locals 12

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 32
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v5

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v6

    add-int/2addr v6, v5

    new-array v5, v6, [Lcom/android/tools/r8/graph/M2;

    .line 34
    array-length v7, v4

    invoke-static {v4, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v2

    .line 35
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_5

    .line 36
    iget-object v8, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/iE;->a(ILjava/util/List;)Ljava/util/Set;

    move-result-object v8

    .line 37
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-le v9, v3, :cond_4

    .line 38
    iget-object v9, p0, Lcom/android/tools/r8/internal/iE;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v8, v9}, Lcom/android/tools/r8/graph/P2;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 39
    sget-boolean v9, Lcom/android/tools/r8/internal/iE;->h:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/tools/r8/internal/iE;->a:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-static {v9, v8}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 41
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_3
    :goto_2
    aput-object v8, v5, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_8

    .line 44
    sget-boolean v4, Lcom/android/tools/r8/internal/iE;->h:Z

    if-nez v4, :cond_7

    invoke-static {v5}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    sub-int/2addr v6, v3

    .line 45
    iget-object v4, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    aput-object v4, v5, v6

    .line 46
    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v6, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    .line 47
    iget-object v6, v6, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 48
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 49
    iget-object v7, v4, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 50
    invoke-virtual {v4, v7, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    .line 52
    iget-object v6, p1, Lcom/android/tools/r8/internal/qd;->a:Lcom/android/tools/r8/internal/hC;

    .line 53
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/Vd1;

    invoke-direct {v7, p3}, Lcom/android/tools/r8/internal/Vd1;-><init>(Lcom/android/tools/r8/internal/td;)V

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v8

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/hC;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/Hv;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object v4

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 58
    iget-object p1, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    iget-object p2, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    .line 60
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v6, v5, v2}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    goto :goto_4

    .line 61
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->d()Z

    move-result v6

    if-nez v6, :cond_a

    .line 62
    iget-object p1, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2, v5, v3}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    goto :goto_6

    .line 63
    :cond_a
    iget-object v6, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H5;

    .line 64
    invoke-virtual {p0, p1, p3, v7, v5}, Lcom/android/tools/r8/internal/iE;->a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 65
    iget-object v9, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    .line 66
    iget-object v9, v9, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    .line 67
    invoke-virtual {v9, v8, v8}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v9, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    .line 69
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/A2;

    .line 70
    invoke-virtual {v9, v10, v8, v2}, Lcom/android/tools/r8/internal/wA;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    .line 71
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    new-instance v8, Lcom/android/tools/r8/internal/Xd1;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/Xd1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 72
    invoke-virtual {p2, v7, v8}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    goto :goto_5

    .line 73
    :cond_b
    :goto_6
    invoke-virtual {p0, p3, v5}, Lcom/android/tools/r8/internal/iE;->a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->d()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 75
    iget-object p2, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    invoke-virtual {p2, p1, v5, v3}, Lcom/android/tools/r8/internal/wA;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    .line 76
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    if-eqz v1, :cond_e

    .line 77
    new-instance v2, Lcom/android/tools/r8/internal/Av;

    iget-object v6, p0, Lcom/android/tools/r8/internal/iE;->b:Lcom/android/tools/r8/internal/x1;

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/x1;->b(Ljava/lang/Object;)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v2, v6, v7}, Lcom/android/tools/r8/internal/Av;-><init>(J)V

    .line 79
    :cond_e
    iget-object v6, p0, Lcom/android/tools/r8/internal/iE;->g:Lcom/android/tools/r8/internal/wA;

    .line 80
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 81
    iget-object v7, v6, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    .line 82
    invoke-virtual {v7, p2, v5}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_d

    .line 83
    iget-object v6, v6, Lcom/android/tools/r8/internal/wA;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, p2, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 84
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->b()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->d()Z

    move-result p2

    if-nez p2, :cond_10

    .line 86
    iget-object p2, p0, Lcom/android/tools/r8/internal/iE;->c:Lcom/android/tools/r8/graph/u1;

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 88
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    goto/16 :goto_f

    .line 89
    :cond_10
    sget-object p2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 90
    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    const/16 v0, 0x1001

    .line 91
    invoke-static {v0, v3}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->f:Lcom/android/tools/r8/internal/eE;

    iget-object v3, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    new-instance v4, Lcom/android/tools/r8/internal/hD;

    if-eqz v1, :cond_11

    .line 97
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/AA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    move-object v6, v1

    goto :goto_8

    :cond_11
    move-object v6, v2

    :goto_8
    iget-object v8, v0, Lcom/android/tools/r8/internal/eE;->a:Ljava/util/LinkedHashMap;

    iget-object v9, v0, Lcom/android/tools/r8/internal/eE;->b:Ljava/util/LinkedHashMap;

    iget-object v10, v0, Lcom/android/tools/r8/internal/eE;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v11, v0, Lcom/android/tools/r8/internal/eE;->d:Ljava/util/ArrayList;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/tools/r8/internal/hD;-><init>(Lcom/android/tools/r8/graph/l1;ILjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V

    goto :goto_d

    .line 98
    :cond_12
    sget-boolean v0, Lcom/android/tools/r8/internal/iE;->h:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->d()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 99
    :cond_14
    :goto_9
    new-instance v4, Lcom/android/tools/r8/internal/Zh;

    if-nez v0, :cond_16

    .line 100
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->b()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_a

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 101
    :cond_16
    :goto_a
    new-instance v0, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 103
    iget-object v5, p0, Lcom/android/tools/r8/internal/iE;->b:Lcom/android/tools/r8/internal/x1;

    .line 104
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/x1;->b(Ljava/lang/Object;)I

    move-result v5

    .line 105
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 106
    invoke-virtual {v0, v5, v3}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 107
    :cond_17
    iget-object v1, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/AA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    goto :goto_c

    :cond_18
    move-object v1, v2

    :goto_c
    invoke-direct {v4, v0, v1, v7}, Lcom/android/tools/r8/internal/Zh;-><init>(Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/graph/l1;I)V

    .line 108
    :goto_d
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 110
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 111
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v1

    .line 112
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/Ib;

    goto :goto_e

    .line 113
    :cond_1a
    iput-object v2, p2, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 114
    iget-object v0, p1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 115
    iput-object v0, p2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 116
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 117
    iput-object p1, p2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 118
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 119
    :goto_f
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 120
    sget-boolean p2, Lcom/android/tools/r8/internal/iE;->h:Z

    if-nez p2, :cond_1c

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    instance-of p2, p2, Lcom/android/tools/r8/graph/l0;

    if-nez p2, :cond_1c

    .line 122
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->z0()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_10

    .line 124
    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1c
    :goto_10
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->f:Lcom/android/tools/r8/internal/eE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iE;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/Ud1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ud1;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iE;->d:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
