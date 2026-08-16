.class public LBi/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Ljava/security/SecureRandom;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LBi/G;->b:Ljava/security/SecureRandom;

    iput p2, p0, LBi/G;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, LBi/G;->b:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LBi/G;->c:I

    return v0
.end method
