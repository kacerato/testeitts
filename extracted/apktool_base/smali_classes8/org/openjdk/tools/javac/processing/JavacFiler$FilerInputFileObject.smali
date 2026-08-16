.class Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;
.super Lorg/openjdk/javax/tools/ForwardingFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilerInputFileObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/tools/ForwardingFileObject<",
        "Lorg/openjdk/javax/tools/FileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-direct {p0, p2}, Lorg/openjdk/javax/tools/ForwardingFileObject;-><init>(Lorg/openjdk/javax/tools/FileObject;)V

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for writing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for writing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
