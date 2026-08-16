.class public interface abstract Lorg/openjdk/javax/annotation/processing/Filer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public varargs abstract createClassFile(Ljava/lang/CharSequence;[Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/tools/JavaFileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract createResource(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/tools/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract createSourceFile(Ljava/lang/CharSequence;[Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/tools/JavaFileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResource(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/openjdk/javax/tools/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
