.class public Lml/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lml/e;

.field public h:I

.field public i:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()LBi/c;
    .locals 4

    iget-object v0, p0, Lml/f;->g:Lml/e;

    invoke-virtual {v0}, Lml/e;->c()Lml/h;

    move-result-object v0

    invoke-virtual {v0}, Lml/h;->a()Lml/b;

    move-result-object v0

    invoke-virtual {v0}, Lml/b;->f()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lml/b;->g()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lml/f;->i:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lml/b;->d([B[BLjava/security/SecureRandom;)I

    new-instance v0, Lml/j;

    iget-object v3, p0, Lml/f;->g:Lml/e;

    invoke-virtual {v3}, Lml/e;->c()Lml/h;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lml/j;-><init>(Lml/h;[B)V

    new-instance v2, Lml/i;

    iget-object v3, p0, Lml/f;->g:Lml/e;

    invoke-virtual {v3}, Lml/e;->c()Lml/h;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lml/i;-><init>(Lml/h;[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v0, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method private d(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lml/e;

    iput-object v0, p0, Lml/f;->g:Lml/e;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lml/f;->i:Ljava/security/SecureRandom;

    iget-object p1, p0, Lml/f;->g:Lml/e;

    invoke-virtual {p1}, Lml/e;->c()Lml/h;

    move-result-object p1

    invoke-virtual {p1}, Lml/h;->b()I

    move-result p1

    iput p1, p0, Lml/f;->h:I

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, Lml/f;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lml/f;->d(LBi/G;)V

    return-void
.end method
