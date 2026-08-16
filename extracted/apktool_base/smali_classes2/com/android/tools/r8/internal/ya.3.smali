.class public final Lcom/android/tools/r8/internal/ya;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:I


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    iput p1, p0, Lcom/android/tools/r8/internal/ya;->d:I

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xbb

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/internal/ya;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ya;

    iget v1, p0, Lcom/android/tools/r8/internal/ya;->d:I

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/ya;-><init>(ILcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "newunboxedenum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 9
    iget-object p3, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 11
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object p3, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    iget v0, p0, Lcom/android/tools/r8/internal/ya;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {p3, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    const/4 v2, 0x2

    .line 13
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/vZ;

    invoke-direct {v1, p3, v0, p2}, Lcom/android/tools/r8/internal/vZ;-><init>(Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/xw0;)V

    .line 15
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ya;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Eb;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
