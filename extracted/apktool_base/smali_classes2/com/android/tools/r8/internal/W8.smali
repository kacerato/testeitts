.class public Lcom/android/tools/r8/internal/W8;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xbe

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

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/H9;->g()Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    const/16 p1, 0xbe

    .line 2
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Va;->h()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/W8;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 10
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p1, p3, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/P3;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/P3;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

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
