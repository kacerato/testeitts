.class public LFk/A;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Loh/s;)V
    .locals 2

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LFk/A;->b:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)LFk/A;
    .locals 1

    instance-of v0, p0, LFk/A;

    if-eqz v0, :cond_0

    check-cast p0, LFk/A;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/A;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/A;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/s;

    iget-object v1, p0, LFk/A;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LFk/A;->b:Ljava/math/BigInteger;

    return-object v0
.end method
