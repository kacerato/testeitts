.class public final Lcom/android/tools/r8/internal/E9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/J2;

.field public final d:Lcom/android/tools/r8/internal/ZY;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/E9;->d:Lcom/android/tools/r8/internal/ZY;

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

    const/16 v0, 0xca

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    check-cast p1, Lcom/android/tools/r8/internal/E9;

    iget-object p1, p1, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/E9;->d:Lcom/android/tools/r8/internal/ZY;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ZY;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    sget-boolean p2, Lcom/android/tools/r8/internal/E9;->e:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of p2, p2, Lcom/android/tools/r8/graph/M2;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "CfDexItemBasedConstString instructions should always be rewritten into CfConstString"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/E9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 10
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 13
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object p3, p0, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/E9;->d:Lcom/android/tools/r8/internal/ZY;

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v1

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/uq;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
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
