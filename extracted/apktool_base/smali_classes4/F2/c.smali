.class public final LF2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LF2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LF2/c;
    .locals 4
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LF2/c;->b(Ljava/lang/String;)LF2/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Invalid host specifier: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public static b(Ljava/lang/String;)LF2/c;
    .locals 3

    invoke-static {p0}, LF2/b;->c(Ljava/lang/String;)LF2/b;

    move-result-object p0

    invoke-virtual {p0}, LF2/b;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0}, LF2/b;->d()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, LF2/e;->g(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    new-instance p0, LF2/c;

    invoke-static {v0}, LF2/e;->O(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LF2/c;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, LF2/f;->d(Ljava/lang/String;)LF2/f;

    move-result-object v0

    invoke-virtual {v0}, LF2/f;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, LF2/c;

    invoke-virtual {v0}, LF2/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LF2/c;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Domain name does not have a recognized public suffix: "

    if-eqz v1, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, LF2/c;->b(Ljava/lang/String;)LF2/c;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LF2/c;

    if-eqz v0, :cond_1

    check-cast p1, LF2/c;

    iget-object v0, p0, LF2/c;->a:Ljava/lang/String;

    iget-object p1, p1, LF2/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LF2/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF2/c;->a:Ljava/lang/String;

    return-object v0
.end method
