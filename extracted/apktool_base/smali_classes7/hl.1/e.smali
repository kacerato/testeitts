.class public Lhl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 4

    const/16 v0, 0x720

    new-array v0, v0, [B

    const/16 v1, 0x400

    new-array v1, v1, [S

    iget-object v2, p0, Lhl/e;->g:Ljava/security/SecureRandom;

    invoke-static {v2, v0, v1}, Lhl/k;->f(Ljava/security/SecureRandom;[B[S)V

    new-instance v2, LBi/c;

    new-instance v3, Lhl/h;

    invoke-direct {v3, v0}, Lhl/h;-><init>([B)V

    new-instance v0, Lhl/g;

    invoke-direct {v0, v1}, Lhl/g;-><init>([S)V

    invoke-direct {v2, v3, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lhl/e;->g:Ljava/security/SecureRandom;

    return-void
.end method
