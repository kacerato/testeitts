.class public LZk/d;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LZk/g;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LZk/g;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LZk/d;->d:LZk/g;

    return-void
.end method


# virtual methods
.method public c()LZk/g;
    .locals 1

    iget-object v0, p0, LZk/d;->d:LZk/g;

    return-object v0
.end method
