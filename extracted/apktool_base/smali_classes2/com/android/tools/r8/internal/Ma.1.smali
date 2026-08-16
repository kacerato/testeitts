.class public Lcom/android/tools/r8/internal/Ma;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/ka;

.field public final d:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ma;->c:Lcom/android/tools/r8/internal/ka;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ma;->d:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ma;)I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ma;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/O;Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/JM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/JM0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/KM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/KM0;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p0

    .line 6
    invoke-virtual {p1, v0, p0, p0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Ma;)Lcom/android/tools/r8/internal/ka;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Ma;->c:Lcom/android/tools/r8/internal/ka;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final C()I
    .locals 1

    const/16 v0, 0xd2

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ma;->d:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/Ma;

    new-instance v0, Lcom/android/tools/r8/internal/LM0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/LM0;-><init>(Lcom/android/tools/r8/graph/O;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ma;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/Ma;->c:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p2

    invoke-virtual {p9, p1, p2}, Lcom/android/tools/r8/internal/EX;->b(ILcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 11
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Ma;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ma;->d:Lcom/android/tools/r8/internal/B60;

    .line 13
    iget-object p3, p3, Lcom/android/tools/r8/internal/hb;->t:Lcom/android/tools/r8/internal/J8;

    .line 14
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/J8;->b(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/ub;->c:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-object p3, p2, Lcom/android/tools/r8/internal/ub;->b:Lcom/android/tools/r8/internal/B60;

    .line 18
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ma;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v0

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 9
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final q()Lcom/android/tools/r8/internal/Ma;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
