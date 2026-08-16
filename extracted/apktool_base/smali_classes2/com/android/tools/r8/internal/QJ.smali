.class public final Lcom/android/tools/r8/internal/QJ;
.super Lcom/android/tools/r8/internal/WJ;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/WJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/QJ;->o:Z

    sget-boolean p3, Lcom/android/tools/r8/internal/QJ;->p:Z

    if-nez p3, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "<init>"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final A2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/QJ;->o:Z

    return v0
.end method

.method public final O1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 3

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/android/tools/r8/internal/yE;->c:Lcom/android/tools/r8/internal/uE;

    .line 31
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    .line 32
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/tools/r8/internal/WJ;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->a:Lcom/android/tools/r8/ir/optimize/B;

    return-object p1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    if-ne v0, p2, :cond_2

    .line 37
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$c;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 50
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 51
    :cond_5
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1

    .line 52
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/android/tools/r8/ir/optimize/D;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/ir/optimize/D;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 18
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 20
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 21
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 23
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 24
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 25
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/ir/optimize/X;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/NJ;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v0

    .line 2
    iget v1, p1, Lcom/android/tools/r8/internal/Kn;->o:I

    if-le v0, v1, :cond_0

    .line 3
    iput v0, p1, Lcom/android/tools/r8/internal/Kn;->o:I

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->b(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/QJ;->p:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->c(Lcom/android/tools/r8/internal/Kn;)V

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;Lcom/android/tools/r8/internal/xw0;)I

    move-result v1

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/Zp;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/Zp;-><init>(IILcom/android/tools/r8/graph/A2;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [I

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;[I)I

    move-result v4

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/Yp;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    aget v6, v0, v2

    const/4 v2, 0x1

    aget v7, v0, v2

    const/4 v2, 0x2

    aget v8, v0, v2

    const/4 v2, 0x3

    aget v9, v0, v2

    const/4 v2, 0x4

    aget v10, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/Yp;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    move-object v2, v1

    .line 13
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 57
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/QJ;->o:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    const/16 v2, 0xce

    goto :goto_0

    :cond_0
    const/16 v2, 0xcd

    .line 58
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/QJ;->o:Z

    const/16 v3, 0xb7

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 28
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p5, p2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 63
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object p5, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p3, p5}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p5

    .line 65
    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Z
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    instance-of v0, p2, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fE;->f()Lcom/android/tools/r8/internal/p;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/aS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/p;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c0()Lcom/android/tools/r8/internal/QJ;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "Direct"

    return-object v0
.end method
