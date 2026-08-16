.class public LXi/d0;
.super LXi/b0;
.source "SourceFile"


# instance fields
.field public d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;LXi/c0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, LXi/b0;-><init>(ZLXi/c0;)V

    iput-object p1, p0, LXi/d0;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/d0;->d:Ljava/math/BigInteger;

    return-object v0
.end method
