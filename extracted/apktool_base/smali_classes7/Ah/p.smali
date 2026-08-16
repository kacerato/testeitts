.class public LAh/p;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LAh/p;->b:I

    iput-object p2, p0, LAh/p;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LAh/p;->b:I

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, LAh/p;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LAh/p;
    .locals 1

    instance-of v0, p0, LAh/p;

    if-eqz v0, :cond_0

    check-cast p0, LAh/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAh/p;

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LAh/p;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()I
    .locals 1

    iget v0, p0, LAh/p;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, LAh/p;->b:I

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LAh/p;->u()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public final u()[B
    .locals 5

    iget-object v0, p0, LAh/p;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_0
    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LAh/p;->c:Ljava/math/BigInteger;

    return-object v0
.end method
