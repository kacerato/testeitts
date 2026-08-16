.class public Lcom/android/tools/r8/utils/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/utils/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/u$b;->a:Ljava/nio/file/Path;

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    return-void
.end method

.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/utils/u$b;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/u$b;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/utils/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 23
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-object p0
.end method

.method public a(Ljava/lang/String;[B)Lcom/android/tools/r8/utils/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-object p0
.end method

.method public a(Ljava/nio/file/Path;Ljava/util/Collection;)Lcom/android/tools/r8/utils/u$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/utils/u$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 7
    new-instance v1, Ljava/util/zip/ZipEntry;

    .line 8
    invoke-interface {p1, v0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0x10

    .line 9
    invoke-static {v2, v3}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/utils/S;

    invoke-direct {v3}, Lcom/android/tools/r8/utils/S;-><init>()V

    .line 11
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 12
    const-string v3, "/"

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs a(Ljava/nio/file/Path;[Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/nio/file/Path;Ljava/util/Collection;)Lcom/android/tools/r8/utils/u$b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/utils/u$b;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public b()Ljava/util/zip/ZipOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/u$b;->b:Ljava/util/zip/ZipOutputStream;

    return-object v0
.end method
