.class Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceFileObject"
.end annotation


# instance fields
.field private final flatname:Lorg/openjdk/tools/javac/util/Name;

.field private final name:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->flatname:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCharContent(Z)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->getCharContent(Z)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getCharContent(Z)Ljava/nio/CharBuffer;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/openjdk/tools/javac/file/PathFileObject$CannotCreateUriError;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$SourceFileObject;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/openjdk/tools/javac/file/PathFileObject$CannotCreateUriError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
