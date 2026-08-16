.class public LXi/L;
.super LXi/J;
.source "SourceFile"


# instance fields
.field public final d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;LXi/G;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, LXi/J;-><init>(ZLXi/G;)V

    invoke-virtual {p2, p1}, LXi/G;->g(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LXi/L;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/L;->d:Ljava/math/BigInteger;

    return-object v0
.end method
