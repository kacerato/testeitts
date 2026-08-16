.class public Lcl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lcl/i;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()LBi/c;
    .locals 14

    iget-object v0, p0, Lcl/g;->g:Lcl/i;

    invoke-virtual {v0}, Lcl/i;->a()Lcl/b;

    move-result-object v0

    iget-object v1, p0, Lcl/g;->h:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lcl/b;->v(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lcl/b;->b()[[B

    move-result-object v0

    new-instance v1, Lcl/k;

    iget-object v2, p0, Lcl/g;->g:Lcl/i;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {v1, v2, v4, v6}, Lcl/k;-><init>(Lcl/i;[B[B)V

    new-instance v2, Lcl/j;

    iget-object v8, p0, Lcl/g;->g:Lcl/i;

    const/4 v4, 0x2

    aget-object v9, v0, v4

    const/4 v4, 0x3

    aget-object v10, v0, v4

    const/4 v4, 0x4

    aget-object v11, v0, v4

    aget-object v12, v0, v3

    aget-object v13, v0, v5

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcl/j;-><init>(Lcl/i;[B[B[B[B[B)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v1, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method private d(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcl/f;

    invoke-virtual {v0}, Lcl/f;->c()Lcl/i;

    move-result-object v0

    iput-object v0, p0, Lcl/g;->g:Lcl/i;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcl/g;->h:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, Lcl/g;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lcl/g;->d(LBi/G;)V

    return-void
.end method
