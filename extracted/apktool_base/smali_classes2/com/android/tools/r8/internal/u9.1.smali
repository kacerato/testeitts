.class public final Lcom/android/tools/r8/internal/u9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Ah;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

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

    const/16 v0, 0xce

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    check-cast p1, Lcom/android/tools/r8/internal/u9;

    iget-object p1, p1, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 1

    .line 26
    iget-object p2, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 27
    iget-object p2, p2, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    const/4 v0, 0x2

    .line 31
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    .line 32
    sget-boolean p1, Lcom/android/tools/r8/internal/u9;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    .line 6
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/graph/A2;

    const/4 v0, 0x2

    invoke-virtual {p8, p1, v0, p6}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p1

    .line 8
    iget-object p6, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 9
    iget-object p6, p6, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p8, p6, v0, p2}, Lcom/android/tools/r8/internal/RR;->a(Ljava/util/List;ILcom/android/tools/r8/graph/H5;)Ljava/util/List;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/Object;

    const/4 p8, 0x0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p8, v0, :cond_0

    .line 13
    invoke-interface {p2, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    .line 14
    invoke-static {v0, p7, p3}, Lcom/android/tools/r8/internal/ha;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/wh;

    iget-object p8, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 16
    iget-object p8, p8, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    .line 17
    invoke-virtual {p8}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p8

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p4, p5, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 21
    invoke-virtual {p7, p3, p4}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-virtual {p1, p7}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/Qz;

    move-result-object p1

    invoke-direct {p2, p8, p3, p1, p6}, Lcom/android/tools/r8/internal/wh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p9, p2}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/u9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 35
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Unsupported dynamic constant (not desugaring)"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final d()Lcom/android/tools/r8/internal/u9;
    .locals 0

    return-object p0
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Eb;
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
