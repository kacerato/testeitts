.class public LFk/h;
.super LFk/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LFk/s0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LFk/s0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)LFk/h;
    .locals 1

    instance-of v0, p0, LFk/h;

    if-eqz v0, :cond_0

    check-cast p0, LFk/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/h;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/h;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
