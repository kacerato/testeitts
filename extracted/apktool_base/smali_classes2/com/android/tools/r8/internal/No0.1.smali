.class public final Lcom/android/tools/r8/internal/No0;
.super Lcom/android/tools/r8/internal/hw;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ww;


# static fields
.field public static final synthetic m:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/hw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/Oy;)Ljava/lang/Boolean;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/l1;

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p0

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/shaking/y1;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final F1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final L0()Lcom/android/tools/r8/internal/No0;
    .locals 0

    return-object p0
.end method

.method public final T()Lcom/android/tools/r8/internal/ww;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/X;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/hw;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_0
    new-instance v2, Lcom/android/tools/r8/internal/ts;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ts;-><init>(ILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 10
    :pswitch_1
    new-instance v2, Lcom/android/tools/r8/internal/ns;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ns;-><init>(ILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 11
    :pswitch_2
    new-instance v2, Lcom/android/tools/r8/internal/ss;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ss;-><init>(ILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 12
    :pswitch_3
    new-instance v2, Lcom/android/tools/r8/internal/qs;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/qs;-><init>(ILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 13
    :pswitch_4
    new-instance v2, Lcom/android/tools/r8/internal/ps;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ps;-><init>(ILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 14
    :pswitch_5
    new-instance v2, Lcom/android/tools/r8/internal/os;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/os;-><init>(ILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 15
    :pswitch_6
    new-instance v2, Lcom/android/tools/r8/internal/rs;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/rs;-><init>(ILcom/android/tools/r8/graph/l1;)V

    .line 16
    :goto_0
    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 36
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0xb3

    .line 37
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/wb;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 0

    .line 45
    invoke-static {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/Oc;->b(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;II)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z

    move-result p1

    return p1

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 1

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 27
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1, p2, p4, v2}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yE;Lcom/android/tools/r8/graph/D3;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    .line 7
    sget-boolean p4, Lcom/android/tools/r8/internal/No0;->m:Z

    if-nez p4, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "NoSuchFieldError (resolution failure) should be caught."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    new-instance p4, Lcom/android/tools/r8/internal/FO0;

    invoke-direct {p4, p2}, Lcom/android/tools/r8/internal/FO0;-><init>(Lcom/android/tools/r8/graph/F0;)V

    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p1, v2, p4}, Lcom/android/tools/r8/graph/y;->a(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_3

    return v2

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    .line 12
    check-cast p4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 13
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p4

    if-eqz p4, :cond_4

    return v2

    .line 14
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    .line 16
    :cond_5
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 17
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/No0;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "StaticPut instructions define no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; field: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/No0;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method
