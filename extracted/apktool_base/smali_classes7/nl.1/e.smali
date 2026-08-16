.class public Lnl/e;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:LBi/y;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LBi/y;)V
    .locals 1

    const/16 v0, 0x2100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lnl/e;->d:LBi/y;

    return-void
.end method


# virtual methods
.method public c()LBi/y;
    .locals 1

    iget-object v0, p0, Lnl/e;->d:LBi/y;

    return-object v0
.end method
