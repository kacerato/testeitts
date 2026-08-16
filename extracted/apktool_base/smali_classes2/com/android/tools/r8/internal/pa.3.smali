.class public Lcom/android/tools/r8/internal/pa;
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

    iput p2, p0, Lcom/android/tools/r8/internal/pa;->c:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pa;->V()I

    move-result v0

    return v0
.end method

.method public final V()I
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/oa;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

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

    const/16 v0, 0x18

    return v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

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
    const/16 v0, 0x16

    return v0

    :cond_2
    const/16 v0, 0x17

    return v0

    :cond_3
    const/16 v0, 0x15

    return v0

    :cond_4
    const/16 v0, 0x19

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/tools/r8/internal/pa;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->n()Lcom/android/tools/r8/internal/pa;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/pa;->c:I

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 6

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/pa;->c:I

    .line 8
    iget-object v4, p0, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

    new-instance v5, Lcom/android/tools/r8/internal/Hp1;

    invoke-direct {v5, p0, p3}, Lcom/android/tools/r8/internal/Hp1;-><init>(Lcom/android/tools/r8/internal/pa;Lcom/android/tools/r8/internal/O8;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;ILcom/android/tools/r8/internal/Kw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 16
    invoke-interface {p3}, Lcom/android/tools/r8/internal/jy;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/android/tools/r8/internal/jy;->k()Lcom/android/tools/r8/internal/S60;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/pa;->e:Z

    if-nez p1, :cond_2

    invoke-interface {p3}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p3}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected attempt to read local of type top at index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget p2, p0, Lcom/android/tools/r8/internal/pa;->c:I

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 22
    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget p2, p0, Lcom/android/tools/r8/internal/pa;->c:I

    add-int/lit8 p2, p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/android/tools/r8/internal/hv;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pa;->V()I

    move-result p1

    iget p2, p0, Lcom/android/tools/r8/internal/pa;->c:I

    invoke-virtual {p9, p1, p2}, Lcom/android/tools/r8/internal/EX;->d(II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/pa;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 10
    iget p3, p0, Lcom/android/tools/r8/internal/pa;->c:I

    .line 11
    iget-object v0, p2, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 12
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 13
    iget-object v0, p3, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 14
    iget-object v0, p3, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/Mw0;II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/pa;->c:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 4
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final n()Lcom/android/tools/r8/internal/pa;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/pa;->c:I

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
