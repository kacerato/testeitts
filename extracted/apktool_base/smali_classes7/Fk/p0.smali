.class public LFk/p0;
.super LFk/t0;
.source "SourceFile"


# static fields
.field public static d:J = 0xf9cebab800L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LFk/t0;-><init>(J)V

    return-void
.end method

.method public constructor <init>(LFk/t0;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, LFk/x0;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/p0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LFk/t0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static x(Ljava/lang/Object;)LFk/p0;
    .locals 1

    instance-of v0, p0, LFk/t0;

    if-eqz v0, :cond_0

    new-instance v0, LFk/p0;

    check-cast p0, LFk/t0;

    invoke-direct {v0, p0}, LFk/p0;-><init>(LFk/t0;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/p0;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/p0;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y()LFk/p0;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, LFk/p0;->z(J)LFk/p0;

    move-result-object v0

    return-object v0
.end method

.method public static z(J)LFk/p0;
    .locals 3

    new-instance v0, LFk/p0;

    sget-wide v1, LFk/p0;->d:J

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, LFk/p0;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public A()J
    .locals 4

    invoke-virtual {p0}, LFk/x0;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-wide v2, LFk/p0;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, LFk/p0;->A()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
