.class public final Lcom/android/tools/r8/internal/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileBuilder;


# instance fields
.field public final synthetic a:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStreamWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/w4;->a:Ljava/io/OutputStreamWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addClassRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/u4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/u4;-><init>(Lcom/android/tools/r8/internal/w4;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 3

    :try_start_0
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/android/tools/r8/TextInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/TextInputStream;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [C

    invoke-virtual {p2, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/w4;->a:Ljava/io/OutputStreamWriter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStreamWriter;->write([CII)V

    invoke-virtual {p2, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/w4;->a:Ljava/io/OutputStreamWriter;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/x4;->a(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final addMethodRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/v4;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/v4;-><init>(Lcom/android/tools/r8/internal/w4;Lcom/android/tools/r8/internal/C7;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/w4;->a:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/x4;->a(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    return-object p0
.end method
