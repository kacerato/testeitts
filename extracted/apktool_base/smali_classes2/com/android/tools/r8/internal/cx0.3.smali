.class public final Lcom/android/tools/r8/internal/cx0;
.super Lcom/android/tools/r8/internal/pd;
.source "SourceFile"


# static fields
.field public static final synthetic r:Z = true


# instance fields
.field public final n:Lcom/android/tools/r8/internal/nx0;

.field public final o:Ljava/util/IdentityHashMap;

.field public final p:Lcom/android/tools/r8/internal/r6;

.field public final q:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nx0;Lcom/android/tools/r8/internal/r6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/r6;Ljava/util/Set;)V
    .locals 6

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v4, p2, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/pd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/o6;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/cx0;->o:Ljava/util/IdentityHashMap;

    iput-object p6, p0, Lcom/android/tools/r8/internal/cx0;->p:Lcom/android/tools/r8/internal/r6;

    iput-object p7, p0, Lcom/android/tools/r8/internal/cx0;->q:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;Ljava/util/Map;)Z
    .locals 0

    .line 97
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->q:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p2

    add-int/2addr p2, v2

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p2

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p2

    .line 11
    iput-boolean v2, p2, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p2

    .line 13
    sget-object p3, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 14
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p3, v1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v0, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_4
    :goto_1
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/Hv;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p2

    .line 23
    sget-object p3, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 24
    sget-object p3, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    .line 25
    invoke-static {p2, v1, p3}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 27
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_7

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p2

    if-ne p3, p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    if-ne p0, p5, :cond_0

    .line 1
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 2
    sget-object v5, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 3
    new-instance p2, Lcom/android/tools/r8/internal/NW;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 4
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 5
    invoke-interface {p6, p1}, Lcom/android/tools/r8/internal/Gz;->a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 7

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 39
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 40
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/cx0;->g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 41
    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    if-eqz p3, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_5
    :goto_2
    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 45
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/cx0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 47
    iget-object v1, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 48
    iget-object p3, p0, Lcom/android/tools/r8/internal/cx0;->o:Ljava/util/IdentityHashMap;

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 50
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 51
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    :goto_3
    move-object v3, p2

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_8

    .line 52
    sget-object v4, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 53
    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 54
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 55
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 56
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 57
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/tools/r8/internal/cx0;->a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v6

    .line 58
    iget-object p1, p0, Lcom/android/tools/r8/internal/cx0;->q:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 59
    sget-object p1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    :goto_5
    move-object v5, p1

    goto :goto_6

    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    goto :goto_5

    .line 60
    :goto_6
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    move-object v1, p1

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    goto :goto_8

    .line 62
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    .line 63
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 64
    invoke-interface {p2, p3}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    move-object p3, p2

    .line 65
    :cond_9
    check-cast p3, Lcom/android/tools/r8/graph/v2;

    .line 66
    move-object v3, p3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    if-nez v0, :cond_a

    .line 67
    iget-object p2, p0, Lcom/android/tools/r8/internal/R00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->j0:Z

    if-eqz p2, :cond_a

    new-instance p2, Lcom/android/tools/r8/internal/R71;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/R71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    .line 68
    iget-object p3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 69
    invoke-virtual {v3, p2, p3}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/u1;)V

    .line 70
    :cond_a
    new-instance p2, Lcom/android/tools/r8/internal/S71;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/S71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    .line 71
    iget-object p3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 72
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    if-ne v1, v2, :cond_b

    move-object v2, v3

    goto :goto_7

    .line 73
    :cond_b
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/J2;

    .line 74
    invoke-virtual {v3, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    move-object v2, p2

    .line 75
    :goto_7
    sget-object v4, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 76
    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 77
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 78
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 79
    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 80
    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/tools/r8/internal/cx0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;

    move-result-object v5

    .line 81
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 82
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 83
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 84
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/tools/r8/internal/cx0;->a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v6

    .line 85
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 86
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    :goto_8
    if-nez v0, :cond_d

    .line 87
    iget-object p2, p0, Lcom/android/tools/r8/internal/R00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->j0:Z

    if-eqz p2, :cond_d

    .line 88
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 89
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 90
    iget-object p3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 91
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 92
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/m51;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/m51;-><init>(Lcom/android/tools/r8/internal/nx0;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_9

    .line 93
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_9
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->q:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    sget-object p1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 31
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 32
    iget-object p2, p2, Lcom/android/tools/r8/internal/nx0;->b:Lcom/android/tools/r8/internal/m6;

    .line 33
    invoke-interface {p2, p3}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 34
    iget-object p2, p0, Lcom/android/tools/r8/internal/R00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-nez p1, :cond_1

    .line 37
    sget-object p1, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    return-object p1

    :cond_1
    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 105
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cx0;->b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 108
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cx0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 109
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_5

    .line 110
    instance-of v1, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 111
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 112
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-nez v0, :cond_7

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 100
    new-instance v1, Lcom/android/tools/r8/internal/U71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/U71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/y1;->c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 101
    new-instance v1, Lcom/android/tools/r8/internal/V71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/V71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/y1;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 102
    new-instance v1, Lcom/android/tools/r8/internal/W71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/W71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/cx0;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 96
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1, p1}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/P71;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/P71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/u1;)V

    :cond_0
    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->p:Lcom/android/tools/r8/internal/r6;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cx0;->g(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/T71;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/T71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/u1;)V

    :cond_1
    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->p:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/r6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 4
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 5
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/cx0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 4
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/X71;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/X71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/u1;)V

    :cond_1
    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->p:Lcom/android/tools/r8/internal/r6;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Y71;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Y71;-><init>(Lcom/android/tools/r8/internal/cx0;)V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/v2;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/u1;)V

    :cond_1
    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/cx0;->r:Z

    if-nez v1, :cond_2

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 14
    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/internal/Hz;->g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 16
    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 18
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    if-nez v1, :cond_4

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/cx0;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/Q71;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Q71;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 20
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final h(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final i(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final j(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final k(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final l(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
