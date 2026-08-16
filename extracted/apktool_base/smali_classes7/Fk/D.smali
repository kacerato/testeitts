.class public LFk/D;
.super LFk/I;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LFk/I;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LFk/I;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/D;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static z(Ljava/lang/Object;)LFk/D;
    .locals 1

    instance-of v0, p0, LFk/D;

    if-eqz v0, :cond_0

    check-cast p0, LFk/D;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/D;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/D;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
