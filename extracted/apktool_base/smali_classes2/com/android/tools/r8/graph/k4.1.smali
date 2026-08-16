.class public final Lcom/android/tools/r8/graph/k4;
.super Lcom/android/tools/r8/internal/Uw;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/j4;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Object;

.field public final h:Lcom/android/tools/r8/graph/H3$e;

.field public i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j4;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Uw;-><init>(ILcom/android/tools/r8/internal/Uw;)V

    iput-object v1, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iput p2, p0, Lcom/android/tools/r8/graph/k4;->d:I

    iput-object p3, p0, Lcom/android/tools/r8/graph/k4;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/graph/k4;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/tools/r8/graph/k4;->g:Ljava/lang/Object;

    iget-object p2, p1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p2, p2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p4, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p3, p5, p2, p4, p1}, Lcom/android/tools/r8/graph/H3;->b(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/k4;->h:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)Lcom/android/tools/r8/graph/R2;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 82
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 83
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_4

    .line 84
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 85
    sget-boolean p2, Lcom/android/tools/r8/graph/k4;->j:Z

    const/4 v0, 0x1

    if-nez p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    .line 86
    sget-object p1, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    return-object p1

    :cond_3
    sget-object p1, Lcom/android/tools/r8/graph/R2$c;->f:Lcom/android/tools/r8/graph/R2$c;

    return-object p1

    .line 87
    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_5

    .line 88
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$d;->a(B)Lcom/android/tools/r8/graph/R2$d;

    move-result-object p1

    return-object p1

    .line 89
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_7

    .line 90
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    .line 91
    sget-object p2, Lcom/android/tools/r8/graph/R2$j;->e:Lcom/android/tools/r8/graph/R2$j;

    if-nez p1, :cond_6

    return-object p2

    :cond_6
    new-instance p2, Lcom/android/tools/r8/graph/R2$j;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/R2$j;-><init>(S)V

    return-object p2

    .line 92
    :cond_7
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_9

    .line 93
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-char p1, p1

    .line 94
    sget-object p2, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    if-nez p1, :cond_8

    return-object p2

    :cond_8
    new-instance p2, Lcom/android/tools/r8/graph/R2$e;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/R2$e;-><init>(C)V

    return-object p2

    .line 95
    :cond_9
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_a

    .line 96
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p1

    return-object p1

    .line 97
    :cond_a
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_b

    .line 98
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$g;->a(F)Lcom/android/tools/r8/graph/R2$g;

    move-result-object p1

    return-object p1

    .line 99
    :cond_b
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_c

    .line 100
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/R2$i;->a(J)Lcom/android/tools/r8/graph/R2$i;

    move-result-object p1

    return-object p1

    .line 101
    :cond_c
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_d

    .line 102
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/R2$f;->a(D)Lcom/android/tools/r8/graph/R2$f;

    move-result-object p1

    return-object p1

    .line 103
    :cond_d
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_e

    .line 104
    new-instance p1, Lcom/android/tools/r8/graph/R2$k;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    return-object p1

    .line 105
    :cond_e
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected static-value type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v4, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    move-object v1, p3

    move v2, p4

    move v5, p1

    move-object v6, p2

    .line 110
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;ILcom/android/tools/r8/internal/tu0;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v1, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/rO;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/D50;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/C50;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/internal/C50;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/graph/k4;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/graph/k4;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/D50;-><init>(Lcom/android/tools/r8/internal/C50;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v7, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v7, v0, p1}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v1, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v1, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    iget-object v5, p0, Lcom/android/tools/r8/graph/k4;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/tools/r8/graph/k4;->f:Ljava/lang/String;

    .line 11
    new-instance v8, Lcom/android/tools/r8/graph/me;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/graph/me;-><init>(Lcom/android/tools/r8/graph/h4;)V

    move-object v1, p1

    move v2, p2

    .line 12
    invoke-static/range {v1 .. v8}, Lcom/android/tools/r8/internal/rO;->a(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-boolean v1, v0, Lcom/android/tools/r8/graph/j4;->D:Z

    iget-object v2, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Ldalvik/annotation/optimization/ReachabilitySensitive;"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/tools/r8/graph/j4;->D:Z

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/ne;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/ne;-><init>()V

    .line 21
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 7

    .line 22
    iget v0, p0, Lcom/android/tools/r8/graph/k4;->d:I

    sget-object v1, Lcom/android/tools/r8/graph/o4;->d:[B

    const v1, -0x60001

    and-int/2addr v0, v1

    .line 23
    invoke-static {v0}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/k4;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/graph/k4;->f:Ljava/lang/String;

    .line 25
    iget-object v5, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 26
    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v5, v1, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v3, v2, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 28
    iget-object v4, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    iget-object v4, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 31
    sget-boolean v5, Lcom/android/tools/r8/internal/tc0;->g:Z

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The java.lang.Record class has no fields."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 32
    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 34
    sget-object v5, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v2, v5, :cond_2

    .line 35
    iget-object v2, v3, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 36
    iget-object v3, v2, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    .line 37
    monitor-enter v3

    .line 38
    :try_start_0
    iget-object v2, v2, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 39
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 40
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v3, v2, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 41
    iget-object v4, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 42
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 43
    iget-object v4, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 44
    iget-object v6, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_2

    .line 45
    :cond_3
    iget-object v6, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_4

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V

    .line 47
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v3, v2, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 48
    iget-object v4, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 49
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 50
    iget-object v4, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 51
    iget-object v6, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 52
    sget-boolean v4, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The VarHandle class has no fields."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 53
    :cond_6
    iget-object v6, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_7

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/graph/h4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V

    .line 55
    :cond_7
    sget-object v2, Lcom/android/tools/r8/internal/Lw;->a:Lcom/android/tools/r8/internal/Lw;

    .line 56
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j4;->z:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 58
    iget-object v2, p0, Lcom/android/tools/r8/graph/k4;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v3, v3, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v3, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 59
    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/o4;->a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/tools/r8/graph/k4;->g:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v4, v3}, Lcom/android/tools/r8/graph/k4;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)Lcom/android/tools/r8/graph/R2;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 61
    :goto_4
    sget-object v4, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 62
    new-instance v4, Lcom/android/tools/r8/graph/g1$a;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 63
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v1

    .line 64
    iput-object v0, v1, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 65
    iget-object v4, p0, Lcom/android/tools/r8/graph/k4;->h:Lcom/android/tools/r8/graph/H3$e;

    .line 66
    iput-object v4, v1, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    .line 67
    iput-object v2, v1, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    .line 68
    iput-object v3, v1, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    .line 69
    iget v2, p0, Lcom/android/tools/r8/graph/k4;->d:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    move v5, v6

    .line 70
    :goto_5
    iput-boolean v5, v1, Lcom/android/tools/r8/graph/g1$a;->j:Z

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 75
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 76
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/graph/k4;->c:Lcom/android/tools/r8/graph/j4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "` has multiple definitions"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
