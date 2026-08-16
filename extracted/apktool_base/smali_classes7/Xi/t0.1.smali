.class public LXi/t0;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:I


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, LXi/t0;->c:Ljava/math/BigInteger;

    iput-object p3, p0, LXi/t0;->d:Ljava/math/BigInteger;

    iput p4, p0, LXi/t0;->e:I

    return-void
.end method


# virtual methods
.method public d()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/t0;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LXi/t0;->e:I

    return v0
.end method

.method public f()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/t0;->d:Ljava/math/BigInteger;

    return-object v0
.end method
