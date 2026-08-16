.class public LOi/f;
.super LBi/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, LBi/j;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, LXi/k;->f([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, LXi/k;->e([BI)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 4

    invoke-super {p0, p1}, LBi/j;->b(LBi/G;)V

    iget p1, p0, LBi/j;->b:I

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DES key must be 64 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput v0, p0, LBi/j;->b:I

    :goto_1
    new-instance p1, LHi/c;

    const/4 v0, 0x0

    sget-object v1, LBi/o;->KEYGEN:LBi/o;

    const-string v2, "DESKeyGen"

    const/16 v3, 0x38

    invoke-direct {p1, v2, v3, v0, v1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method
