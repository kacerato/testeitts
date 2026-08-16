.class public Lcom/android/tools/r8/internal/ka;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public c:Lcom/android/tools/r8/internal/XQ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka;->c:Lcom/android/tools/r8/internal/XQ;

    return-void
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

    const/16 v0, 0xd1

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final V()Lcom/android/tools/r8/internal/XQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ka;->c:Lcom/android/tools/r8/internal/XQ;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ka;->c:Lcom/android/tools/r8/internal/XQ;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ka;->c:Lcom/android/tools/r8/internal/XQ;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p3

    .line 6
    check-cast p3, Lcom/android/tools/r8/graph/K;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, p3, Lcom/android/tools/r8/graph/K;->a:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object p3, p3, Lcom/android/tools/r8/graph/K;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

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

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Lcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->b(Lcom/android/tools/r8/internal/ka;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/ka;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
