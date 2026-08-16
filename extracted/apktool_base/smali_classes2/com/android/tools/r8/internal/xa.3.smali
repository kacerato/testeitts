.class public Lcom/android/tools/r8/internal/xa;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/xa;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbc

    return v0

    :cond_0
    const/16 v0, 0xbd

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final V()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for new-array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/16 v0, 0x8

    return v0

    :cond_0
    const/16 v0, 0xb

    return v0

    :cond_1
    const/16 v0, 0xa

    return v0

    :cond_2
    const/4 v0, 0x4

    return v0

    :cond_3
    const/16 v0, 0x9

    return v0

    :cond_4
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/internal/xa;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/xa;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result p2

    if-nez p2, :cond_0

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xa;->V()I

    move-result p1

    const/16 p2, 0xbc

    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->b(II)V

    return-void

    .line 8
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/xa;->d:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->y0()I

    move-result p2

    const/4 p6, 0x1

    :goto_1
    if-ge p6, p2, :cond_3

    .line 12
    const-string p8, "["

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 14
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 15
    invoke-virtual {p4, p5, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 16
    invoke-virtual {p7, p2}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xbd

    .line 19
    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/xa;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 26
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 27
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    .line 31
    invoke-virtual {p1, p3, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 32
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    const/4 v2, 0x2

    .line 33
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 34
    new-instance v1, Lcom/android/tools/r8/internal/oZ;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/tools/r8/internal/oZ;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 35
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Eb;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
