.class public Lal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lal/g;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()LBi/c;
    .locals 4

    iget-object v0, p0, Lal/h;->g:Lal/g;

    invoke-virtual {v0}, Lal/g;->c()Lal/j;

    move-result-object v0

    invoke-virtual {v0}, Lal/j;->a()Lal/d;

    move-result-object v0

    invoke-virtual {v0}, Lal/d;->r()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lal/d;->s()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lal/h;->h:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lal/d;->w([B[BLjava/security/SecureRandom;)V

    new-instance v0, Lal/l;

    iget-object v3, p0, Lal/h;->g:Lal/g;

    invoke-virtual {v3}, Lal/g;->c()Lal/j;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lal/l;-><init>(Lal/j;[B)V

    new-instance v2, Lal/k;

    iget-object v3, p0, Lal/h;->g:Lal/g;

    invoke-virtual {v3}, Lal/g;->c()Lal/j;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lal/k;-><init>(Lal/j;[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v0, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method private d(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lal/g;

    iput-object v0, p0, Lal/h;->g:Lal/g;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lal/h;->h:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, Lal/h;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lal/h;->d(LBi/G;)V

    return-void
.end method
