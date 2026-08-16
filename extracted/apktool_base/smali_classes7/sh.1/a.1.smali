.class public Lsh/a;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:J = 0xffffffffL


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lsh/a;->b:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/s;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lsh/a;->u(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lsh/a;-><init>(J)V

    return-void
.end method

.method public static u(Ljava/math/BigInteger;)J
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "id out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Ljava/lang/Object;)Lsh/a;
    .locals 1

    instance-of v0, p0, Lsh/a;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/a;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/a;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/s;

    iget-wide v1, p0, Lsh/a;->b:J

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    return-object v0
.end method

.method public v()J
    .locals 2

    iget-wide v0, p0, Lsh/a;->b:J

    return-wide v0
.end method
