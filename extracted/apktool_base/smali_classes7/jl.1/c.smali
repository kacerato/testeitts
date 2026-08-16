.class public Ljl/c;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public final d:Ljl/f;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Ljl/f;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Ljl/c;->d:Ljl/f;

    return-void
.end method


# virtual methods
.method public c()Ljl/f;
    .locals 1

    iget-object v0, p0, Ljl/c;->d:Ljl/f;

    return-object v0
.end method
