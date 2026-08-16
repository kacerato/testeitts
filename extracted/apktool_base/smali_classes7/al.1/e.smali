.class public Lal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public a:Lal/d;

.field public b:Lal/i;


# direct methods
.method public constructor <init>(Lal/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lal/e;->b:Lal/i;

    invoke-virtual {p1}, Lal/i;->d()Lal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lal/e;->d(Lal/j;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lal/e;->a:Lal/d;

    invoke-virtual {v0}, Lal/d;->n()I

    move-result v0

    return v0
.end method

.method public b([B)[B
    .locals 1

    iget-object v0, p0, Lal/e;->a:Lal/d;

    invoke-virtual {v0}, Lal/d;->p()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lal/e;->c([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public c([BI)[B
    .locals 2

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    iget-object v0, p0, Lal/e;->a:Lal/d;

    iget-object v1, p0, Lal/e;->b:Lal/i;

    check-cast v1, Lal/k;

    invoke-virtual {v1}, Lal/k;->i()[B

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lal/d;->u([B[B[B)I

    return-object p2
.end method

.method public final d(Lal/j;)V
    .locals 3

    invoke-virtual {p1}, Lal/j;->a()Lal/d;

    move-result-object p1

    iput-object p1, p0, Lal/e;->a:Lal/d;

    iget-object p1, p0, Lal/e;->b:Lal/i;

    check-cast p1, Lal/k;

    invoke-virtual {p1}, Lal/k;->i()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lal/e;->a:Lal/d;

    invoke-virtual {v1}, Lal/d;->r()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lal/k;

    invoke-virtual {p1}, Lal/i;->d()Lal/j;

    move-result-object v1

    iget-object v2, p0, Lal/e;->a:Lal/d;

    invoke-virtual {p1}, Lal/k;->i()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lal/d;->g([B)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lal/k;-><init>(Lal/j;[B)V

    iput-object v0, p0, Lal/e;->b:Lal/i;

    :cond_0
    return-void
.end method
