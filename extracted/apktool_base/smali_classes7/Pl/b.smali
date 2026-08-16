.class public LPl/b;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LPl/f;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LPl/f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LPl/b;->d:LPl/f;

    return-void
.end method


# virtual methods
.method public c()LPl/f;
    .locals 1

    iget-object v0, p0, LPl/b;->d:LPl/f;

    return-object v0
.end method
