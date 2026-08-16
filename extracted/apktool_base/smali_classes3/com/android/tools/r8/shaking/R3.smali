.class public Lcom/android/tools/r8/shaking/R3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/R3$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/android/tools/r8/shaking/S2;

.field public final c:Lcom/android/tools/r8/shaking/S2;

.field public final d:Lcom/android/tools/r8/shaking/U3;

.field public final e:Lcom/android/tools/r8/shaking/i4;

.field public final f:Lcom/android/tools/r8/shaking/Y3;

.field public final g:Ljava/util/List;

.field public final h:Lcom/android/tools/r8/shaking/T3;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/U3;Lcom/android/tools/r8/shaking/i4;Lcom/android/tools/r8/shaking/Y3;Ljava/util/List;Lcom/android/tools/r8/shaking/T3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/R3;->b:Lcom/android/tools/r8/shaking/S2;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/R3;->c:Lcom/android/tools/r8/shaking/S2;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/R3;->d:Lcom/android/tools/r8/shaking/U3;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    iput-object p6, p0, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    if-eqz p7, :cond_0

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/R3;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/android/tools/r8/shaking/R3;->h:Lcom/android/tools/r8/shaking/T3;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/shaking/R3$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/R3$a;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/R3$a;-><init>()V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/i4;
    .locals 0

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i4;)Ljava/lang/Iterable;
    .locals 0

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    .line 37
    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 41
    sget-object v3, Lcom/android/tools/r8/shaking/Y3;->a:Lcom/android/tools/r8/shaking/V3;

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/Y3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    goto :goto_1

    .line 43
    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 44
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/shaking/R3;->g:Ljava/util/List;

    if-nez v3, :cond_2

    .line 45
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    .line 46
    :cond_2
    new-instance v4, Lcom/android/tools/r8/shaking/ua;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/shaking/ua;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object p1

    :goto_2
    const/4 v3, 0x4

    .line 47
    new-array v3, v3, [Ljava/lang/Iterable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/R3;
    .locals 10

    .line 49
    new-instance v9, Lcom/android/tools/r8/shaking/R3;

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v3

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v4

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v0

    move-object v6, v0

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/Y3;->a()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v0

    move-object v7, v0

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move-object p1, v5

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/shaking/sa;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/shaking/sa;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 58
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 59
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v8

    move-object v0, v9

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/shaking/R3;-><init>(Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/U3;Lcom/android/tools/r8/shaking/i4;Lcom/android/tools/r8/shaking/Y3;Ljava/util/List;Lcom/android/tools/r8/shaking/T3;)V

    return-object v9
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/tools/r8/shaking/Q3;->a:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/shaking/D;->a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/tools/r8/shaking/Y3;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/shaking/S2;->a(Lcom/android/tools/r8/graph/g;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/shaking/S2;->b(Lcom/android/tools/r8/graph/g;)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object p4

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p2, v0}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/G0;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/shaking/S2;->a(Lcom/android/tools/r8/graph/g;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/shaking/S2;->b(Lcom/android/tools/r8/graph/g;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/G0;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/D;)Z
    .locals 5

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/tools/r8/shaking/Q3;->a:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 19
    :pswitch_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 20
    :cond_0
    :pswitch_1
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/shaking/D;->a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/String;

    move-result-object p4

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/tools/r8/shaking/Y3;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    goto/16 :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/shaking/S2;->a(Lcom/android/tools/r8/graph/g;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/shaking/S2;->b(Lcom/android/tools/r8/graph/g;)Z

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_1

    .line 24
    :cond_2
    iget-object p4, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-static {p4, p1, p3}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/G0;Ljava/util/function/Consumer;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of p3, p3, Lcom/android/tools/r8/shaking/k4;

    if-eqz p3, :cond_4

    return v3

    .line 28
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 29
    array-length p4, p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq p4, v0, :cond_5

    goto :goto_1

    :cond_5
    move p4, v2

    .line 30
    :goto_0
    array-length v0, p3

    if-ge p4, v0, :cond_7

    .line 31
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i4;

    aget-object v1, p3, p4

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_7
    return v3

    .line 32
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/shaking/S2;->a(Lcom/android/tools/r8/graph/g;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/shaking/S2;->b(Lcom/android/tools/r8/graph/g;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_1

    .line 35
    :cond_9
    iget-object p2, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/G0;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    :cond_a
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lcom/android/tools/r8/shaking/S2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->b:Lcom/android/tools/r8/shaking/S2;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/i4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/i4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->g:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/shaking/Y3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/R3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/shaking/R3;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->b:Lcom/android/tools/r8/shaking/S2;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/R3;->b:Lcom/android/tools/r8/shaking/S2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->c:Lcom/android/tools/r8/shaking/S2;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/R3;->c:Lcom/android/tools/r8/shaking/S2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->d:Lcom/android/tools/r8/shaking/U3;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/R3;->d:Lcom/android/tools/r8/shaking/U3;

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    if-eqz v0, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/i4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    if-eqz v0, :cond_8

    :goto_1
    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/R3;->g:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    return v1
.end method

.method public f()Lcom/android/tools/r8/shaking/S2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->c:Lcom/android/tools/r8/shaking/S2;

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/shaking/T3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->h:Lcom/android/tools/r8/shaking/T3;

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/shaking/U3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->d:Lcom/android/tools/r8/shaking/U3;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->b:Lcom/android/tools/r8/shaking/S2;

    iget v1, v1, Lcom/android/tools/r8/shaking/S2;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->c:Lcom/android/tools/r8/shaking/S2;

    iget v1, v1, Lcom/android/tools/r8/shaking/S2;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->d:Lcom/android/tools/r8/shaking/U3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i4;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->f:Lcom/android/tools/r8/shaking/Y3;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public i()Lcom/android/tools/r8/shaking/i4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/ta;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/ta;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/R3;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3;->h:Lcom/android/tools/r8/shaking/T3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i4;

    const-string v3, "@"

    invoke-static {v0, v3, v2}, Lcom/android/tools/r8/shaking/K3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->b:Lcom/android/tools/r8/shaking/S2;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/shaking/K3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->c:Lcom/android/tools/r8/shaking/S2;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/S2;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v4, " !"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/shaking/K3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/shaking/Q3;->a:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x20

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Unknown kind of member rule"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v1, "<methods>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v1, "<fields>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/R3;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R3;->h:Lcom/android/tools/r8/shaking/T3;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/T3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
