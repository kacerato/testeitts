.class public LXi/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:LXi/F0;

.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(LXi/F0;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, LXi/G0;

    if-nez v0, :cond_0

    iput-object p1, p0, LXi/D0;->b:LXi/F0;

    iput-object p2, p0, LXi/D0;->c:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RSA parameters should be for a public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/D0;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public b()LXi/F0;
    .locals 1

    iget-object v0, p0, LXi/D0;->b:LXi/F0;

    return-object v0
.end method
