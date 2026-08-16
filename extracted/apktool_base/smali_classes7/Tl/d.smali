.class public final LTl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:I

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 5

    iget v0, p0, LTl/d;->g:I

    invoke-virtual {p0, v0}, LTl/d;->c(I)[B

    move-result-object v0

    iget v1, p0, LTl/d;->g:I

    invoke-virtual {p0, v1}, LTl/d;->d(I)[B

    move-result-object v1

    iget v2, p0, LTl/d;->g:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LTl/d;->h:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, LTl/j;->m([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LTl/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, LTl/d;->h:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, LTl/i;->l([B[BLjava/security/SecureRandom;)I

    :goto_0
    new-instance v2, LBi/c;

    new-instance v3, LTl/f;

    iget v4, p0, LTl/d;->g:I

    invoke-direct {v3, v4, v1}, LTl/f;-><init>(I[B)V

    new-instance v1, LTl/e;

    iget v4, p0, LTl/d;->g:I

    invoke-direct {v1, v4, v0}, LTl/e;-><init>(I[B)V

    invoke-direct {v2, v3, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 1

    check-cast p1, LTl/c;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LTl/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {p1}, LTl/c;->c()I

    move-result p1

    iput p1, p0, LTl/d;->g:I

    return-void
.end method

.method public final c(I)[B
    .locals 0

    invoke-static {p1}, LTl/g;->b(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method

.method public final d(I)[B
    .locals 0

    invoke-static {p1}, LTl/g;->c(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method
