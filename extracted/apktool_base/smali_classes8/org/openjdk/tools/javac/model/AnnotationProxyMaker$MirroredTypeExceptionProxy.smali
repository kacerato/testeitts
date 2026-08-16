.class final Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MirroredTypeExceptionProxy"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

.field private final typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/type/TypeMirror;)V
    .locals 0

    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->typeString:Ljava/lang/String;

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

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    iget-object p1, p1, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->equals(Ljava/lang/Object;)Z

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

    new-instance v0, Lorg/openjdk/javax/lang/model/type/MirroredTypeException;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-direct {v0, v1}, Lorg/openjdk/javax/lang/model/type/MirroredTypeException;-><init>(Lorg/openjdk/javax/lang/model/type/TypeMirror;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->typeString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->typeString:Ljava/lang/String;

    return-object v0
.end method
