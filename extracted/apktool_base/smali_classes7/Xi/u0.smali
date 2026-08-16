.class public LXi/u0;
.super LXi/t0;
.source "SourceFile"


# instance fields
.field public f:Ljava/math/BigInteger;

.field public g:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/util/Vector;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, LXi/t0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p4, p0, LXi/u0;->g:Ljava/util/Vector;

    iput-object p5, p0, LXi/u0;->f:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public g()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/u0;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public h()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LXi/u0;->g:Ljava/util/Vector;

    return-object v0
.end method
