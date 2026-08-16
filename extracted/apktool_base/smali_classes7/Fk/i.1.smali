.class public LFk/i;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6


# instance fields
.field public final b:I

.field public final c:LFk/s0;


# direct methods
.method public constructor <init>(ILFk/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LFk/i;->b:I

    iput-object p2, p0, LFk/i;->c:LFk/s0;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LFk/i;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LFk/s0;->w(Ljava/lang/Object;)LFk/s0;

    move-result-object p1

    iput-object p1, p0, LFk/i;->c:LFk/s0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method

.method public static B(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method

.method public static C(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method

.method public static D(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LFk/i;
    .locals 2

    instance-of v0, p0, LFk/i;

    if-eqz v0, :cond_0

    check-cast p0, LFk/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/i;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/i;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method

.method public static y(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method

.method public static z(LFk/s0;)LFk/i;
    .locals 2

    new-instance v0, LFk/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LFk/i;-><init>(ILFk/s0;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LFk/i;->b:I

    iget-object v2, p0, LFk/i;->c:LFk/s0;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LFk/i;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unknown choice"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " years"

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sixty hours"

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hours"

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " minute"

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mS"

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LFk/i;->c:LFk/s0;

    iget-object v1, v1, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "uS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u()I
    .locals 1

    iget v0, p0, LFk/i;->b:I

    return v0
.end method

.method public v()LFk/s0;
    .locals 1

    iget-object v0, p0, LFk/i;->c:LFk/s0;

    return-object v0
.end method
