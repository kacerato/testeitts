.class final Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MirroredTypesExceptionProxy"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x10dL


# instance fields
.field private final typeStrings:Ljava/lang/String;

.field private transient types:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->typeStrings:Ljava/lang/String;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;

    iget-object p1, p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateException()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Lorg/openjdk/javax/lang/model/type/MirroredTypesException;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {v0, v1}, Lorg/openjdk/javax/lang/model/type/MirroredTypesException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->typeStrings:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->typeStrings:Ljava/lang/String;

    return-object v0
.end method
