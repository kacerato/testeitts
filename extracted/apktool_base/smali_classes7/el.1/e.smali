.class public Lel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lel/d;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()LBi/c;
    .locals 4

    iget-object v0, p0, Lel/e;->g:Lel/d;

    invoke-virtual {v0}, Lel/d;->c()Lel/h;

    move-result-object v0

    invoke-virtual {v0}, Lel/h;->c()Lel/a;

    move-result-object v0

    invoke-virtual {v0}, Lel/a;->f()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lel/a;->g()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lel/e;->k:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lel/a;->k([B[BLjava/security/SecureRandom;)V

    new-instance v0, Lel/j;

    iget-object v3, p0, Lel/e;->g:Lel/d;

    invoke-virtual {v3}, Lel/d;->c()Lel/h;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lel/j;-><init>(Lel/h;[B)V

    new-instance v2, Lel/i;

    iget-object v3, p0, Lel/e;->g:Lel/d;

    invoke-virtual {v3}, Lel/d;->c()Lel/h;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lel/i;-><init>(Lel/h;[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v0, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method private d(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lel/d;

    iput-object v0, p0, Lel/e;->g:Lel/d;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lel/e;->k:Ljava/security/SecureRandom;

    iget-object p1, p0, Lel/e;->g:Lel/d;

    invoke-virtual {p1}, Lel/d;->c()Lel/h;

    move-result-object p1

    invoke-virtual {p1}, Lel/h;->d()I

    move-result p1

    iput p1, p0, Lel/e;->h:I

    iget-object p1, p0, Lel/e;->g:Lel/d;

    invoke-virtual {p1}, Lel/d;->c()Lel/h;

    move-result-object p1

    invoke-virtual {p1}, Lel/h;->b()I

    move-result p1

    iput p1, p0, Lel/e;->i:I

    iget-object p1, p0, Lel/e;->g:Lel/d;

    invoke-virtual {p1}, Lel/d;->c()Lel/h;

    move-result-object p1

    invoke-virtual {p1}, Lel/h;->a()I

    move-result p1

    iput p1, p0, Lel/e;->j:I

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, Lel/e;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lel/e;->d(LBi/G;)V

    return-void
.end method
