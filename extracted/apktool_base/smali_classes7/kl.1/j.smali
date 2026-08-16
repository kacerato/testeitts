.class public Lkl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljava/security/SecureRandom;

.field public h:Lkl/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 4

    iget-object v0, p0, Lkl/j;->h:Lkl/l;

    invoke-virtual {v0}, Lkl/l;->a()Lkl/h;

    move-result-object v0

    invoke-virtual {v0}, Lkl/h;->G()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lkl/h;->F()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lkl/j;->g:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lkl/h;->w([B[BLjava/security/SecureRandom;)V

    new-instance v0, Lkl/n;

    iget-object v3, p0, Lkl/j;->h:Lkl/l;

    invoke-direct {v0, v3, v2}, Lkl/n;-><init>(Lkl/l;[B)V

    new-instance v2, Lkl/m;

    iget-object v3, p0, Lkl/j;->h:Lkl/l;

    invoke-direct {v2, v3, v1}, Lkl/m;-><init>(Lkl/l;[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v0, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public b(LBi/G;)V
    .locals 1

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lkl/j;->g:Ljava/security/SecureRandom;

    check-cast p1, Lkl/i;

    invoke-virtual {p1}, Lkl/i;->c()Lkl/l;

    move-result-object p1

    iput-object p1, p0, Lkl/j;->h:Lkl/l;

    return-void
.end method
