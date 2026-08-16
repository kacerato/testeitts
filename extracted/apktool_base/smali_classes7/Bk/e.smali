.class public LBk/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LBk/e;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LBk/e;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LBk/e;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LBk/e;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LBk/e;
    .locals 1

    instance-of v0, p0, LFk/w0;

    if-eqz v0, :cond_0

    check-cast p0, LBk/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LBk/e;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, LBk/e;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/s;

    iget-object v1, p0, LBk/e;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LBk/e;->b:Ljava/math/BigInteger;

    return-object v0
.end method
