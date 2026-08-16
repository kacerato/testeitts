.class public Lpl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/a$a;,
        Lpl/a$b;
    }
.end annotation


# instance fields
.field public final a:Lorg/bouncycastle/crypto/util/f$b;

.field public final b:Ljava/security/SecureRandom;

.field public c:Z


# direct methods
.method public constructor <init>(Lhi/b;[B[BLjava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/a;->c:Z

    new-instance v0, Lorg/bouncycastle/crypto/util/f$b;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/util/f$b;-><init>(Lhi/b;[B[B)V

    iput-object v0, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    iput-object p4, p0, Lpl/a;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method public static synthetic a(LXi/c;)[B
    .locals 0

    invoke-static {p0}, Lpl/a;->c(LXi/c;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([B)LXi/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lpl/a;->d([B)LXi/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(LXi/c;)[B
    .locals 0

    :try_start_0
    invoke-static {p0}, Lpl/f;->a(LXi/c;)Lhi/h0;

    move-result-object p0

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d([B)LXi/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lpl/d;->d([B)LXi/c;

    move-result-object p0

    return-object p0
.end method
