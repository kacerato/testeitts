.class public Lll/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lll/d;

.field public h:Lll/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(LBi/G;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lll/e;

    invoke-virtual {v0}, Lll/e;->c()Lll/h;

    move-result-object v0

    new-instance v1, Lll/d;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lll/d;-><init>(Lll/h;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lll/f;->g:Lll/d;

    invoke-virtual {v0}, Lll/h;->l()Lll/n;

    move-result-object p1

    iput-object p1, p0, Lll/f;->h:Lll/n;

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 2

    sget-object v0, Lll/f$a;->a:[I

    iget-object v1, p0, Lll/f;->h:Lll/n;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lll/f;->g:Lll/d;

    invoke-virtual {v0}, Lll/d;->k()LBi/c;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid version. Please choose one of the following: classic, circumzenithal, compressed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lll/f;->g:Lll/d;

    invoke-virtual {v0}, Lll/d;->i()LBi/c;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lll/f;->g:Lll/d;

    invoke-virtual {v0}, Lll/d;->j()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lll/f;->c(LBi/G;)V

    return-void
.end method
