.class public LXi/A;
.super LXi/x;
.source "SourceFile"


# instance fields
.field public d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;LXi/z;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, LXi/x;-><init>(ZLXi/z;)V

    iput-object p1, p0, LXi/A;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/A;->d:Ljava/math/BigInteger;

    return-object v0
.end method
