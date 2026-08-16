.class public LUl/b;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LUl/e;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LUl/e;)V
    .locals 3

    invoke-virtual {p2}, LUl/e;->d()[I

    move-result-object v0

    invoke-virtual {p2}, LUl/e;->d()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p2}, LUl/e;->d()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LUl/b;->d:LUl/e;

    return-void
.end method


# virtual methods
.method public c()LUl/e;
    .locals 1

    iget-object v0, p0, LUl/b;->d:LUl/e;

    return-object v0
.end method
