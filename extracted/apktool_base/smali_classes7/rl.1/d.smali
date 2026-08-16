.class public Lrl/d;
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

.method private c()LBi/c;
    .locals 6

    new-instance v0, Lcl/g;

    invoke-direct {v0}, Lcl/g;-><init>()V

    new-instance v1, Lcl/f;

    iget-object v2, p0, Lrl/d;->g:Ljava/security/SecureRandom;

    sget-object v3, Lcl/i;->g:Lcl/i;

    invoke-direct {v1, v2, v3}, Lcl/f;-><init>(Ljava/security/SecureRandom;Lcl/i;)V

    invoke-virtual {v0, v1}, Lcl/g;->b(LBi/G;)V

    new-instance v1, LOi/P;

    invoke-direct {v1}, LOi/P;-><init>()V

    new-instance v2, LXi/M0;

    iget-object v3, p0, Lrl/d;->g:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, LXi/M0;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v2}, LOi/P;->b(LBi/G;)V

    invoke-virtual {v0}, Lcl/g;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v1}, LOi/P;->a()LBi/c;

    move-result-object v1

    new-instance v2, LBi/c;

    new-instance v3, Lrl/g;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v4

    invoke-virtual {v1}, LBi/c;->b()LXi/c;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lrl/g;-><init>(LXi/c;LXi/c;)V

    new-instance v4, Lrl/f;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    invoke-virtual {v1}, LBi/c;->a()LXi/c;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lrl/f;-><init>(LXi/c;LXi/c;)V

    invoke-direct {v2, v3, v4}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method private d(LBi/G;)V
    .locals 0

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lrl/d;->g:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, Lrl/d;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lrl/d;->d(LBi/G;)V

    return-void
.end method
