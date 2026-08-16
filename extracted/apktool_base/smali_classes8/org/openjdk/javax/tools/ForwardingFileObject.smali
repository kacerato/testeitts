.class public Lorg/openjdk/javax/tools/ForwardingFileObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/FileObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lorg/openjdk/javax/tools/FileObject;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/tools/FileObject;"
    }
.end annotation


# instance fields
.field protected final fileObject:Lorg/openjdk/javax/tools/FileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/javax/tools/FileObject;

    iput-object p1, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->delete()Z

    move-result v0

    return v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/FileObject;->openReader(Z)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
