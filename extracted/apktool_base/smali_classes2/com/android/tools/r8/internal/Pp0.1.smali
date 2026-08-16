.class public final Lcom/android/tools/r8/internal/Pp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Qp0;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/String;
    .locals 6

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pp0;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->Q1()Z

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 33
    iget-object v5, v4, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v5, v0, :cond_5

    iget-object v4, v4, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v0, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 35
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v4, v0, :cond_5

    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 39
    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 40
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 41
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 42
    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 43
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-static {v1, p1, v2, v0}, Lcom/android/tools/r8/internal/rp0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1

    .line 47
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 48
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 49
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 50
    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 51
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 52
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 53
    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 54
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    return-object v1

    .line 55
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    .line 56
    sget-boolean v0, Lcom/android/tools/r8/internal/Pp0;->b:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 59
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_a
    :goto_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 62
    const-string p1, ""

    return-object p1

    .line 63
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-nez v0, :cond_c

    .line 64
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 66
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-static {v1, p1, v0, v2}, Lcom/android/tools/r8/internal/rp0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/WJ;)Z
    .locals 5

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->P1()Z

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 70
    iget-object v3, v2, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 71
    :cond_0
    iget-object v3, v2, Lcom/android/tools/r8/graph/q2;->e:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_8

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 72
    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 73
    iget-object v3, v2, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/graph/q2;->e:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_8

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pp0;->b(Lcom/android/tools/r8/internal/WJ;)Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v4

    return p1

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 78
    iget-object v3, v2, Lcom/android/tools/r8/graph/q2;->c:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_7

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_5

    goto :goto_1

    .line 79
    :cond_5
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 80
    iget-object v2, v1, Lcom/android/tools/r8/graph/q2;->c:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v2, :cond_7

    iget-object v1, v1, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 81
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p1

    goto :goto_0

    .line 83
    :cond_8
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    goto :goto_0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq v0, p2, :cond_2

    return v1

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    if-eq v0, p1, :cond_4

    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    if-eq v0, p1, :cond_4

    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    if-eq v0, p1, :cond_4

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/zE;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_1

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 7
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 8
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 9
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 10
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v4, :cond_7

    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->m:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 12
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 13
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 15
    iget-object v4, v3, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v4, :cond_7

    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->m:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v3, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v4, :cond_5

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v3, :cond_6

    .line 17
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v1

    :cond_8
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/WJ;)Z
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_1

    .line 12
    iget-object v1, v2, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/graph/q2;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 15
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Pp0;->b:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/graph/q2;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
