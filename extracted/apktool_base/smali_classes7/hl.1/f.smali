.class public Lhl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhl/f$a;,
        Lhl/f$b;
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

    iput-boolean v0, p0, Lhl/f;->c:Z

    new-instance v0, Lorg/bouncycastle/crypto/util/f$b;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/util/f$b;-><init>(Lhi/b;[B[B)V

    iput-object v0, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

    iput-object p4, p0, Lhl/f;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method public static synthetic a(Lhl/h;)[B
    .locals 0

    invoke-static {p0}, Lhl/f;->c(Lhl/h;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([B)Lhl/h;
    .locals 0

    invoke-static {p0}, Lhl/f;->d([B)Lhl/h;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lhl/h;)[B
    .locals 2

    :try_start_0
    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->v:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    invoke-virtual {p0}, Lhl/h;->d()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d([B)Lhl/h;
    .locals 1

    invoke-static {p0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p0

    new-instance v0, Lhl/h;

    invoke-virtual {p0}, Lhi/h0;->z()Loh/c;

    move-result-object p0

    invoke-virtual {p0}, Loh/c;->J()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lhl/h;-><init>([B)V

    return-object v0
.end method
