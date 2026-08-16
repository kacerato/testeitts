.class public final Lcom/android/tools/r8/internal/pf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Hz;

.field public final b:Lcom/android/tools/r8/internal/vf0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/pf0;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pf0;->a:Lcom/android/tools/r8/internal/Hz;

    .line 43
    iget-object v2, v0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    .line 44
    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;)V
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/e1;)V

    return-void

    .line 14
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Tp1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Tp1;-><init>(Lcom/android/tools/r8/internal/pf0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/R2$b;->d(Ljava/util/function/Consumer;)V

    return-void

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->t0()Lcom/android/tools/r8/graph/T2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/T2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->y0()Lcom/android/tools/r8/graph/W2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 18
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    :cond_0
    return-void

    .line 22
    :pswitch_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->u0()Lcom/android/tools/r8/graph/U2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/U2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 23
    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pf0;->a:Lcom/android/tools/r8/internal/Hz;

    .line 24
    iget-object v2, v0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    .line 25
    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void

    .line 26
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/C2;

    .line 27
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 30
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/pf0;->c:Z

    if-nez v0, :cond_3

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 34
    iget-object v2, v0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 35
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 36
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    :cond_4
    return-void

    .line 39
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Y2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/I2;

    new-instance v0, Lcom/android/tools/r8/internal/Up1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Up1;-><init>(Lcom/android/tools/r8/internal/pf0;)V

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/I2;->d(Ljava/util/function/Consumer;)V

    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/graph/e1;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/pf0;->b:Lcom/android/tools/r8/internal/vf0;

    iget-object v1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pf0;->a:Lcom/android/tools/r8/internal/Hz;

    .line 5
    iget-object v3, v0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    .line 6
    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Vp1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Vp1;-><init>(Lcom/android/tools/r8/internal/pf0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/e1;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)V
    .locals 0

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/e1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/t0;)V
    .locals 0

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/R2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Sp1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sp1;-><init>(Lcom/android/tools/r8/internal/pf0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/z5;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sp1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sp1;-><init>(Lcom/android/tools/r8/internal/pf0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/z5;->d(Ljava/util/function/Consumer;)V

    return-void
.end method
