.class public Lcom/android/tools/r8/internal/x9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 9
    sget-object p2, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Va;->f()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 2

    .line 5
    sget-object p3, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 7
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p3, Lcom/android/tools/r8/internal/qh;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-direct {p3, p2, v0, v1}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
