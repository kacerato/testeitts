.class public Lal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lal/f;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 1

    move-object v0, p1

    check-cast v0, Lal/l;

    invoke-virtual {v0}, Lal/i;->d()Lal/j;

    move-result-object v0

    invoke-virtual {v0}, Lal/j;->a()Lal/d;

    move-result-object v0

    invoke-virtual {v0}, Lal/d;->p()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lal/f;->b(LXi/c;I)LBi/P;

    move-result-object p1

    return-object p1
.end method

.method public b(LXi/c;I)LBi/P;
    .locals 3

    check-cast p1, Lal/l;

    invoke-virtual {p1}, Lal/i;->d()Lal/j;

    move-result-object v0

    invoke-virtual {v0}, Lal/j;->a()Lal/d;

    move-result-object v0

    invoke-virtual {v0}, Lal/d;->n()I

    move-result v1

    new-array v1, v1, [B

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    invoke-virtual {p1}, Lal/l;->e()[B

    move-result-object p1

    iget-object v2, p0, Lal/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, p2, p1, v2}, Lal/d;->v([B[B[BLjava/security/SecureRandom;)I

    new-instance p1, Lpl/e;

    invoke-direct {p1, p2, v1}, Lpl/e;-><init>([B[B)V

    return-object p1
.end method
