.class public final Lcom/android/tools/r8/internal/En;
.super Lcom/android/tools/r8/internal/Fn;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/EB;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Fn;-><init>(Lcom/android/tools/r8/internal/zE;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/En;->e:I

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/Kn;)I
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 68
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 69
    iget-object v1, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 71
    iget v0, v0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 72
    iget-object p2, p2, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 73
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)I
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 47
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v0

    .line 49
    sget-boolean v1, Lcom/android/tools/r8/internal/Fn;->d:Z

    if-nez v1, :cond_1

    iget v2, p0, Lcom/android/tools/r8/internal/Fn;->c:I

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Fn;->c:I

    if-nez v1, :cond_3

    .line 51
    iget v1, v0, Lcom/android/tools/r8/internal/Fn;->c:I

    if-ltz v1, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_3
    :goto_1
    iget v1, v0, Lcom/android/tools/r8/internal/Fn;->c:I

    if-ge v1, v2, :cond_6

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 55
    sget-boolean v1, Lcom/android/tools/r8/internal/En;->f:Z

    if-nez v1, :cond_5

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/16 v1, -0x8000

    if-ge v0, v1, :cond_7

    goto :goto_3

    .line 56
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    sub-int/2addr v1, v0

    const/16 v0, 0x7fff

    if-le v1, v0, :cond_7

    .line 58
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 59
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 61
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kn;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 63
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 64
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object p1

    .line 65
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    if-ne v0, p1, :cond_8

    const/4 p1, 0x3

    goto :goto_4

    :cond_8
    const/4 p1, 0x2

    .line 66
    :goto_4
    iput p1, p0, Lcom/android/tools/r8/internal/En;->e:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result v1

    const/4 v3, 0x1

    if-gez v2, :cond_0

    .line 9
    iput-boolean v3, p1, Lcom/android/tools/r8/internal/Kn;->p:Z

    .line 10
    :cond_0
    iget v4, p0, Lcom/android/tools/r8/internal/En;->e:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 11
    sget-boolean v4, Lcom/android/tools/r8/internal/En;->f:Z

    if-nez v4, :cond_2

    .line 12
    iget-object v4, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 13
    check-cast v4, Lcom/android/tools/r8/internal/EB;

    .line 14
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v5

    .line 15
    iget-object v5, v5, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_2
    :goto_0
    new-instance v4, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/kr;-><init>()V

    add-int/lit8 v2, v2, -0x1

    .line 18
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    sget-boolean v4, Lcom/android/tools/r8/internal/En;->f:Z

    if-nez v4, :cond_5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/zn;->a:[I

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 23
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 26
    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/internal/Cp;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/Cp;-><init>(II)V

    goto :goto_4

    .line 27
    :pswitch_1
    new-instance p1, Lcom/android/tools/r8/internal/Ap;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/Ap;-><init>(II)V

    goto :goto_4

    .line 28
    :pswitch_2
    new-instance p1, Lcom/android/tools/r8/internal/yp;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/yp;-><init>(II)V

    goto :goto_4

    .line 29
    :pswitch_3
    new-instance p1, Lcom/android/tools/r8/internal/wp;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/wp;-><init>(II)V

    goto :goto_4

    .line 30
    :pswitch_4
    new-instance p1, Lcom/android/tools/r8/internal/up;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/up;-><init>(II)V

    goto :goto_4

    .line 31
    :pswitch_5
    new-instance p1, Lcom/android/tools/r8/internal/sp;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/sp;-><init>(II)V

    goto :goto_4

    .line 32
    :cond_6
    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result p1

    .line 33
    sget-object v0, Lcom/android/tools/r8/internal/zn;->a:[I

    .line 34
    iget-object v3, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 35
    check-cast v3, Lcom/android/tools/r8/internal/EB;

    .line 36
    iget-object v3, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    :goto_2
    const/4 p1, 0x0

    goto :goto_4

    .line 38
    :pswitch_6
    new-instance v0, Lcom/android/tools/r8/internal/Bp;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/Bp;-><init>(III)V

    :goto_3
    move-object p1, v0

    goto :goto_4

    .line 39
    :pswitch_7
    new-instance v0, Lcom/android/tools/r8/internal/zp;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/zp;-><init>(III)V

    goto :goto_3

    .line 40
    :pswitch_8
    new-instance v0, Lcom/android/tools/r8/internal/xp;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/xp;-><init>(III)V

    goto :goto_3

    .line 41
    :pswitch_9
    new-instance v0, Lcom/android/tools/r8/internal/vp;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/vp;-><init>(III)V

    goto :goto_3

    .line 42
    :pswitch_a
    new-instance v0, Lcom/android/tools/r8/internal/tp;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/tp;-><init>(III)V

    goto :goto_3

    .line 43
    :pswitch_b
    new-instance v0, Lcom/android/tools/r8/internal/rp;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/rp;-><init>(III)V

    goto :goto_3

    .line 44
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 45
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z
    .locals 6

    .line 74
    instance-of v0, p1, Lcom/android/tools/r8/internal/En;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/En;

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 77
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 78
    iget-object v2, v0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 79
    iget-object v3, p1, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 80
    check-cast v3, Lcom/android/tools/r8/internal/EB;

    .line 81
    iget-object v3, v3, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-ne v2, v3, :cond_3

    .line 82
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result v0

    new-array v4, v3, [I

    aput v0, v4, v1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result v0

    invoke-virtual {p0, v3, p2}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result v4

    new-array v5, v2, [I

    aput v0, v5, v1

    aput v4, v5, v3

    move-object v4, v5

    .line 85
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    .line 86
    check-cast v0, Lcom/android/tools/r8/internal/EB;

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result p1

    new-array p2, v3, [I

    aput p1, p2, v1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result v0

    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/En;->a(ILcom/android/tools/r8/internal/Kn;)I

    move-result p1

    new-array p2, v2, [I

    aput v0, p2, v1

    aput p1, p2, v3

    .line 90
    :goto_1
    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/En;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
