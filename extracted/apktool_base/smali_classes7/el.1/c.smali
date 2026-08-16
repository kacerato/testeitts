.class public Lel/c;
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

    iput-object p1, p0, Lel/c;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 4

    check-cast p1, Lel/j;

    invoke-virtual {p1}, Lel/f;->d()Lel/h;

    move-result-object v0

    invoke-virtual {v0}, Lel/h;->c()Lel/a;

    move-result-object v0

    invoke-virtual {v0}, Lel/a;->e()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lel/a;->h()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p1}, Lel/j;->e()[B

    move-result-object p1

    iget-object v3, p0, Lel/c;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, p1, v3}, Lel/a;->j([B[B[BLjava/security/SecureRandom;)V

    new-instance p1, Lpl/e;

    invoke-direct {p1, v2, v1}, Lpl/e;-><init>([B[B)V

    return-object p1
.end method
