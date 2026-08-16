.class public Lgl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lgl/g;

.field public o:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 2

    const/16 v0, 0x30

    new-array v0, v0, [B

    iget-object v1, p0, Lgl/h;->o:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, v0}, Lgl/h;->c([B)LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lgl/g;

    iput-object v0, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lgl/h;->o:Ljava/security/SecureRandom;

    iget-object p1, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, Lgl/g;->c()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->d()I

    move-result p1

    iput p1, p0, Lgl/h;->g:I

    iget-object p1, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, Lgl/g;->c()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->c()I

    move-result p1

    iput p1, p0, Lgl/h;->h:I

    iget-object p1, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, Lgl/g;->c()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->a()I

    move-result p1

    iput p1, p0, Lgl/h;->i:I

    iget-object p1, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, Lgl/g;->c()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->m()I

    move-result p1

    iput p1, p0, Lgl/h;->j:I

    iget-object p1, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, Lgl/g;->c()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->o()I

    move-result p1

    iput p1, p0, Lgl/h;->k:I

    iget-object p1, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {p1}, Lgl/g;->c()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->n()I

    move-result p1

    iput p1, p0, Lgl/h;->l:I

    iget p1, p0, Lgl/h;->g:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgl/h;->m:I

    return-void
.end method

.method public final c([B)LBi/c;
    .locals 3

    iget-object v0, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {v0}, Lgl/g;->c()Lgl/j;

    move-result-object v0

    invoke-virtual {v0}, Lgl/j;->b()Lgl/d;

    move-result-object v0

    iget v1, p0, Lgl/h;->m:I

    add-int/lit8 v2, v1, 0x28

    new-array v2, v2, [B

    add-int/lit8 v1, v1, 0x50

    new-array v1, v1, [B

    invoke-virtual {v0, v2, v1, p1}, Lgl/d;->h([B[B[B)V

    new-instance p1, Lgl/l;

    iget-object v0, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {v0}, Lgl/g;->c()Lgl/j;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lgl/l;-><init>(Lgl/j;[B)V

    new-instance v0, Lgl/k;

    iget-object v2, p0, Lgl/h;->n:Lgl/g;

    invoke-virtual {v2}, Lgl/g;->c()Lgl/j;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lgl/k;-><init>(Lgl/j;[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, p1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public d([B)LBi/c;
    .locals 0

    invoke-virtual {p0, p1}, Lgl/h;->c([B)LBi/c;

    move-result-object p1

    return-object p1
.end method
