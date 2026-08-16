.class public final Lcom/android/tools/r8/internal/Wa;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:[Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wa;->c:[Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/h11;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/h11;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Wa;)[Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/Wa;->c:[Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final C()I
    .locals 1

    const/16 v0, 0xd3

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->t()Lcom/android/tools/r8/internal/Wa;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/g11;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/g11;-><init>()V

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 5

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wa;->c:[Lcom/android/tools/r8/graph/l1;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 23
    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3, v4}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Wa;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 4

    .line 8
    iget-object p3, p0, Lcom/android/tools/r8/internal/Wa;->c:[Lcom/android/tools/r8/graph/l1;

    array-length p3, p3

    .line 9
    new-array v0, p3, [I

    add-int/lit8 v1, p3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v2

    .line 11
    iget v2, v2, Lcom/android/tools/r8/internal/ob;->a:I

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wa;->c:[Lcom/android/tools/r8/graph/l1;

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/CH;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/CH;-><init>([II)V

    .line 14
    iput p3, v2, Lcom/android/tools/r8/internal/CH;->c:I

    .line 15
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 17
    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 19
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 20
    invoke-virtual {p1, v1, v2, p2}, Lcom/android/tools/r8/internal/aB;->a([Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/CH;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/g11;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/g11;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final t()Lcom/android/tools/r8/internal/Wa;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
