.class public Lth/z;
.super Lth/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILoh/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lth/b;-><init>(ILoh/v;)V

    return-void
.end method

.method public constructor <init>(Lhi/h;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lth/b;-><init>(ILoh/v;)V

    return-void
.end method

.method public constructor <init>(Lhi/q;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lth/b;-><init>(Lhi/q;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)Lth/z;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Lth/z;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lth/b;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Lth/b;

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lth/z;->C(Ljava/lang/Object;)Lth/z;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_1
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid encoding in OOBCert"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_3

    new-instance v0, Lth/z;

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/z;-><init>(Lhi/q;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_4

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    new-instance v0, Lth/z;

    invoke-virtual {p0}, Loh/M;->g()I

    move-result v1

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lth/z;-><init>(ILoh/v;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    check-cast p0, Lth/z;

    return-object p0
.end method

.method public static D(Loh/M;Z)Lth/z;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lth/z;->C(Ljava/lang/Object;)Lth/z;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag must be explicit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
