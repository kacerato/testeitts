.class public LFk/q0;
.super LFk/v0;
.source "SourceFile"


# static fields
.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-wide v0, LFk/p0;->d:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, LFk/q0;->d:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/q0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(LFk/v0;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, LFk/x0;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/q0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LFk/v0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static x(Ljava/lang/Object;)LFk/q0;
    .locals 1

    instance-of v0, p0, LFk/v0;

    if-eqz v0, :cond_0

    new-instance v0, LFk/q0;

    check-cast p0, LFk/v0;

    invoke-direct {v0, p0}, LFk/q0;-><init>(LFk/v0;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/q0;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/q0;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y()LFk/q0;
    .locals 5

    new-instance v0, LFk/q0;

    const-wide/16 v1, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long/2addr v3, v1

    sget-wide v1, LFk/q0;->d:J

    sub-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, LFk/q0;-><init>(J)V

    return-object v0
.end method

.method public static z(J)LFk/q0;
    .locals 3

    new-instance v0, LFk/q0;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    sget-wide v1, LFk/q0;->d:J

    sub-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, LFk/q0;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public A()J
    .locals 4

    invoke-virtual {p0}, LFk/x0;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/b;->m(Ljava/math/BigInteger;)J

    move-result-wide v0

    sget-wide v2, LFk/q0;->d:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
