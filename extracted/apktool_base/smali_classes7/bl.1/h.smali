.class public Lbl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:Lbl/f;

.field public b:Lbl/g;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, Lbl/f;

    iput-object p1, p0, Lbl/h;->a:Lbl/f;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lbl/h;->c:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_0
    check-cast p2, Lbl/f;

    iput-object p2, p0, Lbl/h;->a:Lbl/f;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast p2, Lbl/g;

    iput-object p2, p0, Lbl/h;->b:Lbl/g;

    :goto_1
    return-void
.end method

.method public b([B)[B
    .locals 11

    iget-object v0, p0, Lbl/h;->a:Lbl/f;

    invoke-virtual {v0}, Lbl/d;->d()Lbl/e;

    move-result-object v0

    iget-object v1, p0, Lbl/h;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lbl/e;->a(Ljava/security/SecureRandom;)Lbl/a;

    move-result-object v2

    array-length v4, p1

    iget-object v0, p0, Lbl/h;->a:Lbl/f;

    iget-object v5, v0, Lbl/f;->d:[B

    iget-object v6, v0, Lbl/f;->e:[B

    iget-object v7, v0, Lbl/f;->f:[B

    iget-object v8, v0, Lbl/f;->i:[B

    iget-object v9, v0, Lbl/f;->g:[B

    iget-object v10, v0, Lbl/f;->h:[B

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lbl/a;->w([BI[B[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B[B)Z
    .locals 8

    iget-object v0, p0, Lbl/h;->b:Lbl/g;

    invoke-virtual {v0}, Lbl/d;->d()Lbl/e;

    move-result-object v0

    iget-object v1, p0, Lbl/h;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lbl/e;->a(Ljava/security/SecureRandom;)Lbl/a;

    move-result-object v2

    array-length v5, p2

    iget-object v0, p0, Lbl/h;->b:Lbl/g;

    iget-object v6, v0, Lbl/g;->d:[B

    iget-object v7, v0, Lbl/g;->e:[B

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lbl/a;->x([B[BI[B[B)Z

    move-result p1

    return p1
.end method
