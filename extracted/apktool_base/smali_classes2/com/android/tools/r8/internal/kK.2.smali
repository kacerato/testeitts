.class public final enum Lcom/android/tools/r8/internal/kK;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/android/tools/r8/internal/kK;

.field public static final enum e:Lcom/android/tools/r8/internal/kK;

.field public static final enum f:Lcom/android/tools/r8/internal/kK;

.field public static final enum g:Lcom/android/tools/r8/internal/kK;

.field public static final enum h:Lcom/android/tools/r8/internal/kK;

.field public static final enum i:Lcom/android/tools/r8/internal/kK;

.field public static final enum j:Lcom/android/tools/r8/internal/kK;

.field public static final enum k:Lcom/android/tools/r8/internal/kK;

.field public static final synthetic l:Z = true


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/16 v1, 0x76

    const-string v2, "DIRECT"

    const/4 v3, 0x0

    const/16 v4, 0x70

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/16 v1, 0x78

    const-string v2, "INTERFACE"

    const/4 v3, 0x1

    const/16 v4, 0x72

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/16 v1, 0x77

    const-string v2, "STATIC"

    const/4 v3, 0x2

    const/16 v4, 0x71

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/16 v1, 0x75

    const-string v2, "SUPER"

    const/4 v3, 0x3

    const/16 v4, 0x6f

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/16 v1, 0x74

    const-string v2, "VIRTUAL"

    const/4 v3, 0x4

    const/16 v4, 0x6e

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const-string v1, "NEW_ARRAY"

    const/4 v2, 0x5

    const/16 v3, 0x23

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->i:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/4 v1, 0x6

    const-string v2, "MULTI_NEW_ARRAY"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->j:Lcom/android/tools/r8/internal/kK;

    new-instance v0, Lcom/android/tools/r8/internal/kK;

    const/16 v1, 0xfb

    const-string v2, "POLYMORPHIC"

    const/16 v3, 0x8

    const/16 v4, 0xfa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/kK;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/tools/r8/internal/kK;->b:I

    iput p3, p0, Lcom/android/tools/r8/internal/kK;->c:I

    return-void
.end method

.method public static a(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown CfInvoke opcode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 4
    :pswitch_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/k2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    sget-object p0, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;
    .locals 9

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, p3, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object p1, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 22
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p0

    .line 24
    iget-object p0, p0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 25
    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 27
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 29
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object v8, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 30
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v0, v6

    move-object v1, p0

    move-object v3, v8

    move-object v4, p3

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p0

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 38
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-nez v0, :cond_6

    .line 39
    sget-object p0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 40
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, p3, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 41
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq p3, v1, :cond_7

    .line 42
    sget-object p0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object p0

    .line 43
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-nez p1, :cond_a

    .line 44
    iget-object p1, p2, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz p1, :cond_8

    .line 45
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 46
    iget-object p3, p1, Lcom/android/tools/r8/internal/nx0;->b:Lcom/android/tools/r8/internal/m6;

    .line 47
    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    iget-object p1, p1, Lcom/android/tools/r8/internal/nx0;->c:Lcom/android/tools/r8/internal/m6;

    .line 48
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 49
    :cond_8
    sget-boolean p1, Lcom/android/tools/r8/internal/kK;->l:Z

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p1

    if-nez p1, :cond_b

    .line 50
    iget-object p0, p0, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_a
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 53
    sget-object p0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object p0

    :cond_b
    :goto_1
    return-object v8
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 54
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xb6

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb7

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v2

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0xb8

    return v0

    :cond_3
    const/16 v0, 0xb9

    return v0

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public final a(Z)I
    .locals 2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    const/16 p1, 0xb6

    return p1

    .line 57
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0xd0

    return p1

    :cond_2
    const/16 p1, 0xcf

    return p1

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0xcc

    return p1

    :cond_4
    const/16 p1, 0xb8

    return p1

    :cond_5
    const/16 p1, 0xb9

    return p1

    :cond_6
    if-eqz p1, :cond_7

    const/16 p1, 0xce

    return p1

    :cond_7
    const/16 p1, 0xcd

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/B2;
    .locals 2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 59
    sget-object p1, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion to method handle with unexpected invoke type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    sget-object p1, Lcom/android/tools/r8/graph/B2;->l:Lcom/android/tools/r8/graph/B2;

    return-object p1

    .line 62
    :cond_2
    sget-object p1, Lcom/android/tools/r8/graph/B2;->g:Lcom/android/tools/r8/graph/B2;

    return-object p1

    .line 63
    :cond_3
    sget-object p1, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    return-object p1

    .line 64
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<init>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 65
    sget-object p1, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    return-object p1

    .line 66
    :cond_5
    sget-object p1, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    return-object p1
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
