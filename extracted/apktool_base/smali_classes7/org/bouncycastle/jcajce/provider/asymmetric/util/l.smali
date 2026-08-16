.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXh/v;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lhi/b;Loh/g;)[B
    .locals 1

    :try_start_0
    new-instance v0, LXh/v;

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->a(LXh/v;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lhi/b;Loh/g;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lhi/h0;

    invoke-direct {v0, p0, p1}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lhi/b;[B)[B
    .locals 1

    :try_start_0
    new-instance v0, Lhi/h0;

    invoke-direct {v0, p0, p1}, Lhi/h0;-><init>(Lhi/b;[B)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lhi/h0;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
