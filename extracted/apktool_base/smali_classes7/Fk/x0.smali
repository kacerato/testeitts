.class public abstract LFk/x0;
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

    invoke-direct {p0, p1}, LFk/x0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/x0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, LFk/x0;->u()V

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LFk/x0;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/s;

    iget-object v1, p0, LFk/x0;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public abstract u()V
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LFk/x0;->b:Ljava/math/BigInteger;

    return-object v0
.end method
