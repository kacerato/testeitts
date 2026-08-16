.class public Lcom/android/tools/r8/internal/yb;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:I

.field public final d:Lcom/android/tools/r8/internal/Kw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Kw0;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/yb;->c:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/xb;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/16 v0, 0x39

    return v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x37

    return v0

    :cond_2
    const/16 v0, 0x38

    return v0

    :cond_3
    const/16 v0, 0x36

    return v0

    :cond_4
    const/16 v0, 0x3a

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/tools/r8/internal/yb;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->w()Lcom/android/tools/r8/internal/yb;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/yb;->c:I

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 9
    iget p4, p0, Lcom/android/tools/r8/internal/yb;->c:I

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->d()Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/H9;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of v1, v0, Lcom/android/tools/r8/internal/uI;

    if-nez v1, :cond_1

    .line 13
    instance-of v1, v0, Lcom/android/tools/r8/internal/Fx;

    if-nez v1, :cond_1

    .line 14
    instance-of v1, v0, Lcom/android/tools/r8/internal/tU;

    if-nez v1, :cond_1

    .line 15
    instance-of v1, v0, Lcom/android/tools/r8/internal/kt;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object p1

    .line 18
    invoke-virtual {p3, p4, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/MA1;

    invoke-direct {p2, p0, p3}, Lcom/android/tools/r8/internal/MA1;-><init>(Lcom/android/tools/r8/internal/yb;Lcom/android/tools/r8/internal/O8;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/H9;->b(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/yb;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    new-instance v1, Lcom/android/tools/r8/internal/NA1;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/tools/r8/internal/NA1;-><init>(Lcom/android/tools/r8/internal/yb;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/yb;->c:I

    .line 8
    invoke-virtual {p2, v0, p3, p1}, Lcom/android/tools/r8/internal/H9;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yb;->B()I

    move-result p1

    iget p2, p0, Lcom/android/tools/r8/internal/yb;->c:I

    invoke-virtual {p9, p1, p2}, Lcom/android/tools/r8/internal/EX;->d(II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/yb;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 5

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    iget v1, p0, Lcom/android/tools/r8/internal/yb;->c:I

    .line 21
    iget-object v2, p3, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    .line 22
    new-instance v3, Lcom/android/tools/r8/internal/tb;

    iget-object v4, p2, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-direct {v3, v4, v1, v2}, Lcom/android/tools/r8/internal/tb;-><init>(Lcom/android/tools/r8/internal/sb;ILcom/android/tools/r8/internal/rb;)V

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/sb;)V

    .line 23
    iget-object p2, p2, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 24
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/Mw0;II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/yb;->c:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 4
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final w()Lcom/android/tools/r8/internal/yb;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/yb;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method
