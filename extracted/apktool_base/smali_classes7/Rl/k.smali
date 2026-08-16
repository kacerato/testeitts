.class public LRl/k;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LRl/o;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LRl/o;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LRl/k;->d:LRl/o;

    return-void
.end method


# virtual methods
.method public c()LRl/o;
    .locals 1

    iget-object v0, p0, LRl/k;->d:LRl/o;

    return-object v0
.end method
