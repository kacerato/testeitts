.class public LOi/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 3

    new-instance v0, LXi/N0;

    iget-object v1, p0, LOi/P;->g:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, LXi/N0;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, LXi/N0;->e()LXi/O0;

    move-result-object v1

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 4

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LOi/P;->g:Ljava/security/SecureRandom;

    new-instance p1, LHi/c;

    const/4 v0, 0x0

    sget-object v1, LBi/o;->KEYGEN:LBi/o;

    const-string v2, "X25519KeyGen"

    const/16 v3, 0x80

    invoke-direct {p1, v2, v3, v0, v1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method
