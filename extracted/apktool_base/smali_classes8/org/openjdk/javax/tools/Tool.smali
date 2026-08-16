.class public interface abstract Lorg/openjdk/javax/tools/Tool;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSourceVersions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/SourceVersion;",
            ">;"
        }
    .end annotation
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public varargs abstract run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)I
.end method
