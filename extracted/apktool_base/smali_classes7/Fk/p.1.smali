.class public LFk/p;
.super LFk/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LFk/s0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LFk/s0;-><init>(J)V

    return-void
.end method

.method public constructor <init>(LFk/s0;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, LFk/x0;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/s0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, LFk/s0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, LFk/s0;-><init>(Loh/s;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)LFk/p;
    .locals 1

    instance-of v0, p0, LFk/p;

    if-eqz v0, :cond_0

    check-cast p0, LFk/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/p;

    invoke-static {p0}, LFk/s0;->w(Ljava/lang/Object;)LFk/s0;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/p;-><init>(LFk/s0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
