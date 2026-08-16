.class public abstract Lcom/android/tools/r8/internal/VJ;
.super Lcom/android/tools/r8/internal/NJ;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final l:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/NJ;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/VJ;
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4
    sget-boolean p0, Lcom/android/tools/r8/internal/VJ;->m:Z

    if-nez p0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/mK;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 6
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected invoke type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/hK;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/hK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    return-object p0

    .line 8
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/gK;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    return-object p0

    .line 9
    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/TJ;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/TJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 10
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/QJ;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/QJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/C4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/D4;)V
    .locals 1

    .line 12
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract A2()Z
.end method

.method public B2()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final P1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 5

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/VJ;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 32
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 35
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 40
    iget v4, v4, Lcom/android/tools/r8/graph/L2;->e:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 41
    :pswitch_1
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->X1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42
    new-instance v2, Lcom/android/tools/r8/internal/bg;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/bg;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 43
    :pswitch_2
    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    new-instance v2, Lcom/android/tools/r8/internal/Zf;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Zf;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 45
    :cond_3
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    new-instance v2, Lcom/android/tools/r8/internal/eg;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/eg;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 47
    :pswitch_3
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->Y1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 48
    new-instance v2, Lcom/android/tools/r8/internal/cg;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/cg;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 49
    :pswitch_4
    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->Z1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    new-instance v2, Lcom/android/tools/r8/internal/dg;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/dg;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 51
    :cond_4
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 52
    new-instance v2, Lcom/android/tools/r8/internal/hg;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/hg;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 53
    :pswitch_5
    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->W1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    new-instance v2, Lcom/android/tools/r8/internal/ag;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/ag;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    .line 55
    :cond_5
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 56
    new-instance v2, Lcom/android/tools/r8/internal/fg;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/fg;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    .line 57
    invoke-virtual {v2, p0, v0, p2, p3}, Lcom/android/tools/r8/internal/gg;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    :cond_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/P;
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 26
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/NJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 63
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    .line 64
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object p2

    if-eqz p2, :cond_3

    move p2, v1

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne p3, v0, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 2

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 17
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    move p2, v0

    .line 19
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 21
    iget-object p3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 23
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;
    .locals 0

    .line 3
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/aS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/m80;
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/TJ;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/android/tools/r8/internal/lu0;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    iget-object v4, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move-object v2, v1

    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    iget-object v4, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {v3, p2, p1, v0, v2}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {v3, p2, p1}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    return-object v1

    :cond_7
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/LY0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/LY0;-><init>(Lcom/android/tools/r8/internal/m80;)V

    new-instance v1, Lcom/android/tools/r8/internal/MY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/MY0;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object p2
.end method

.method public final d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    sget-boolean p2, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/VJ;->f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object p1

    instance-of p2, p1, Lcom/android/tools/r8/graph/T5;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h3;->a()Lcom/android/tools/r8/graph/T5;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/T5;->b:Lcom/android/tools/r8/graph/H0;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e0()Lcom/android/tools/r8/internal/VJ;
    .locals 0

    return-object p0
.end method

.method public final f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2, p2, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p1, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object p2, p2, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-static {p2, p2, p1}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    return-object p1

    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/graph/Z4;->a:Z

    sget-object p1, Lcom/android/tools/r8/graph/m5;->b:Lcom/android/tools/r8/graph/m5;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; method: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v2()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method
