.class public Lcom/android/tools/r8/internal/A9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final C()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->e()Lcom/android/tools/r8/internal/A9;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/A9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 6
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 9
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object p3, p0, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/vh;

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v1, p2, p3}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/A9;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final e()Lcom/android/tools/r8/internal/A9;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
