.class public LRl/b;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LRl/e;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LRl/e;)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LRl/b;->d:LRl/e;

    return-void
.end method


# virtual methods
.method public c()LRl/e;
    .locals 1

    iget-object v0, p0, LRl/b;->d:LRl/e;

    return-object v0
.end method
