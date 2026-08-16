.class public final Lcom/android/tools/r8/internal/pc0;
.super Lcom/android/tools/r8/internal/qc0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# instance fields
.field public final d:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/qc0;-><init>([Lcom/android/tools/r8/graph/l1;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pc0;->d:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Qp1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qp1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Rp1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rp1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/oc0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/oc0;-><init>()V

    .line 4
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pc0;)[Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/pc0;)[Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/pc0;->d:[Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/pc0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    new-instance v1, Lcom/android/tools/r8/internal/Np1;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Np1;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    sget-object p1, Lcom/android/tools/r8/graph/l1;->j:[Lcom/android/tools/r8/graph/l1;

    .line 7
    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/l1;

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    if-eq p1, p2, :cond_0

    .line 9
    new-instance p2, Lcom/android/tools/r8/internal/pc0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/pc0;->d:[Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/pc0;-><init>([Ljava/lang/String;[Lcom/android/tools/r8/graph/l1;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public final synthetic a(I)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/pc0;->d:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 3
    new-instance p3, Lcom/android/tools/r8/internal/Pp1;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/Pp1;-><init>(Lcom/android/tools/r8/internal/pc0;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/qc0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Ljava/util/function/IntFunction;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Op1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Op1;-><init>()V

    return-object v0
.end method
