.class public Lhl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/d;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl/d;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LYk/c;
    .locals 3

    check-cast p1, Lhl/h;

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/16 v1, 0x800

    new-array v1, v1, [B

    iget-object v2, p0, Lhl/d;->a:Ljava/security/SecureRandom;

    iget-object p1, p1, Lhl/h;->c:[B

    invoke-static {v2, v0, v1, p1}, Lhl/k;->i(Ljava/security/SecureRandom;[B[B[B)V

    new-instance p1, LYk/c;

    new-instance v2, Lhl/h;

    invoke-direct {v2, v1}, Lhl/h;-><init>([B)V

    invoke-direct {p1, v2, v0}, LYk/c;-><init>(LXi/c;[B)V

    return-object p1
.end method

.method public b(LXi/c;)LYk/c;
    .locals 0

    invoke-virtual {p0, p1}, Lhl/d;->a(LXi/c;)LYk/c;

    move-result-object p1

    return-object p1
.end method
