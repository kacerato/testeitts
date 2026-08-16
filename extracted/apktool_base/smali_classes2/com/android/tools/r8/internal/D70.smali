.class public abstract Lcom/android/tools/r8/internal/D70;
.super Lcom/android/tools/r8/internal/pu0;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pu0;-><init>()V

    return-void
.end method

.method public static a(CZ)Lcom/android/tools/r8/internal/D70;
    .locals 2

    const/16 v0, 0x46

    if-eq p0, v0, :cond_7

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid descriptor char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :pswitch_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->e()Lcom/android/tools/r8/internal/n7;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_1
    if-eqz p1, :cond_4

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->g()Lcom/android/tools/r8/internal/n8;

    move-result-object p0

    return-object p0

    .line 23
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/bJ;

    const-string p1, "No value type for void type."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz p1, :cond_5

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->n()Lcom/android/tools/r8/internal/Rl0;

    move-result-object p0

    return-object p0

    :cond_5
    :pswitch_2
    if-eqz p1, :cond_6

    .line 25
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->h()Lcom/android/tools/r8/internal/bc;

    move-result-object p0

    return-object p0

    .line 26
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p0

    return-object p0

    .line 27
    :cond_7
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;
    .locals 3

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/C70;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid numeric type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :pswitch_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_1
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B()Lcom/android/tools/r8/internal/p10;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    return-object v0
.end method

.method public abstract D()Ljava/lang/String;
.end method

.method public abstract E()Ljava/lang/String;
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/android/tools/r8/internal/n7;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/n8;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/Rl0;

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 7
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/internal/bc;

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 9
    :cond_3
    instance-of v0, p0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_4

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 11
    :cond_4
    instance-of v0, p0, Lcom/android/tools/r8/internal/Fx;

    if-eqz v0, :cond_5

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 13
    :cond_5
    instance-of v0, p0, Lcom/android/tools/r8/internal/tU;

    if-eqz v0, :cond_6

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 15
    :cond_6
    instance-of v0, p0, Lcom/android/tools/r8/internal/kt;

    if-eqz v0, :cond_7

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 17
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Imprecise primitive type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lcom/android/tools/r8/internal/D70;
    .locals 0

    return-object p0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
