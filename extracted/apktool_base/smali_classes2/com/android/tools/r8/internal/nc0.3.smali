.class public final Lcom/android/tools/r8/internal/nc0;
.super Lcom/android/tools/r8/internal/qc0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/qc0;-><init>([Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Xm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xm1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nc0;)[Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/nc0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    new-instance v1, Lcom/android/tools/r8/internal/Wm1;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Wm1;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    sget-object p1, Lcom/android/tools/r8/graph/l1;->j:[Lcom/android/tools/r8/graph/l1;

    .line 12
    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/l1;

    .line 13
    iget-object p2, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    if-eq p1, p2, :cond_0

    .line 14
    new-instance p2, Lcom/android/tools/r8/internal/nc0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/nc0;-><init>([Lcom/android/tools/r8/graph/l1;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/d1;I)Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    aget-object p3, v0, p3

    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 8
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 9
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Vm1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/Vm1;-><init>(Lcom/android/tools/r8/internal/nc0;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/d1;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/qc0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Ljava/util/function/IntFunction;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ym1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ym1;-><init>()V

    return-object v0
.end method
