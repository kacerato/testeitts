.class public Lcom/android/tools/r8/internal/M9;
.super Lcom/android/tools/r8/internal/ja;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/ka;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ka;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ja;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xa7

    return v0
.end method

.method public final D()Lcom/android/tools/r8/internal/ka;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    check-cast p1, Lcom/android/tools/r8/internal/M9;

    iget-object p1, p1, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p3

    .line 5
    check-cast p3, Lcom/android/tools/r8/graph/K;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p3, Lcom/android/tools/r8/graph/K;->a:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

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

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p1

    const/16 p2, 0xa7

    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->a(ILcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/M9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/ka;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
