.class public abstract Lcom/android/tools/r8/graph/f6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/J5;

.field public c:Lcom/android/tools/r8/internal/Zs0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(ILcom/android/tools/r8/graph/C2;)V
    .locals 0

    .line 21
    iget-object p1, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 24
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->b(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 25
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 26
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 27
    iget-object p2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/M2;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 29
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 30
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 31
    :pswitch_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->b(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 32
    :pswitch_7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 33
    :pswitch_8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 34
    :pswitch_9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->h(Lcom/android/tools/r8/graph/l1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;)V
.end method

.method public a(Lcom/android/tools/r8/graph/D0;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    if-eq v1, v2, :cond_1

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;I)V
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 37
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    .line 38
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 39
    :goto_1
    sget-boolean v1, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v1, :cond_3

    .line 40
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p2, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    if-ge v4, p2, :cond_f

    .line 41
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_c

    const/16 v5, 0x8

    if-eq v2, v5, :cond_a

    const/16 v5, 0xa

    if-eq v2, v5, :cond_9

    const/16 v5, 0x12

    if-eq v2, v5, :cond_5

    .line 43
    sget-boolean v2, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->N0()Z

    move-result v2

    if-nez v2, :cond_d

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->O0()Z

    move-result v2

    if-nez v2, :cond_d

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->M0()Z

    move-result v2

    if-nez v2, :cond_d

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->L0()Z

    move-result v2

    if-nez v2, :cond_d

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v2

    if-nez v2, :cond_d

    .line 48
    instance-of v1, v1, Lcom/android/tools/r8/graph/b3;

    if-eqz v1, :cond_4

    goto/16 :goto_5

    .line 49
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/Au0;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->r0()Lcom/android/tools/r8/graph/S2;

    move-result-object v1

    .line 52
    sget-boolean v2, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    .line 54
    iget-object v5, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-static {v1, v2, v5}, Lcom/android/tools/r8/internal/Au0;->a(Lcom/android/tools/r8/graph/S2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_5

    .line 57
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported const dynamic in call site "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 59
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw p1

    .line 62
    :cond_9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_5

    .line 63
    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/C2;

    if-eqz v0, :cond_b

    move v2, v3

    goto :goto_4

    :cond_b
    const/4 v2, 0x2

    .line 64
    :goto_4
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    goto :goto_5

    .line 65
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/I2;)V

    .line 66
    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_f
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)V
    .locals 3

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    .line 69
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/l1;)V
.end method

.method public a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/s8;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/y5;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/B60;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->k()Z

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

.method public a(Lcom/android/tools/r8/internal/Ja;)V
    .locals 0

    .line 16
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ja;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/La;)V
    .locals 0

    .line 17
    invoke-interface {p1}, Lcom/android/tools/r8/internal/La;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/Hz;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/android/tools/r8/graph/A2;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)V
.end method

.method public b(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/s8;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public c(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/f6;->d:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->b()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/android/tools/r8/internal/kK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public c(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public abstract c(Lcom/android/tools/r8/graph/l1;)V
.end method

.method public abstract d(Lcom/android/tools/r8/graph/A2;)V
.end method

.method public d(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public d(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->c(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public e(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public e(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method

.method public abstract e(Lcom/android/tools/r8/graph/l1;)V
.end method

.method public abstract f(Lcom/android/tools/r8/graph/A2;)V
.end method

.method public abstract f(Lcom/android/tools/r8/graph/M2;)V
.end method

.method public f(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public abstract g(Lcom/android/tools/r8/graph/A2;)V
.end method

.method public abstract g(Lcom/android/tools/r8/graph/l1;)V
.end method

.method public h(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method
