.class public LBi/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget v0, p0, LBi/j;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, LBi/j;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 2

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LBi/j;->a:Ljava/security/SecureRandom;

    invoke-virtual {p1}, LBi/G;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, LBi/j;->b:I

    new-instance v0, LHi/c;

    const-string v1, "SymKeyGen"

    invoke-virtual {p1}, LBi/G;->b()I

    move-result p1

    invoke-direct {v0, v1, p1}, LHi/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method
