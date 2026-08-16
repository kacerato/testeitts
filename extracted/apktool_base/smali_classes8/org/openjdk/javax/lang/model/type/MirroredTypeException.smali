.class public Lorg/openjdk/javax/lang/model/type/MirroredTypeException;
.super Lorg/openjdk/javax/lang/model/type/MirroredTypesException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient type:Lorg/openjdk/javax/lang/model/type/TypeMirror;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/type/TypeMirror;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to access Class object for TypeMirror "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/openjdk/javax/lang/model/type/MirroredTypesException;-><init>(Ljava/lang/String;Lorg/openjdk/javax/lang/model/type/TypeMirror;)V

    iput-object p1, p0, Lorg/openjdk/javax/lang/model/type/MirroredTypeException;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

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

    iput-object p1, p0, Lorg/openjdk/javax/lang/model/type/MirroredTypeException;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    iput-object p1, p0, Lorg/openjdk/javax/lang/model/type/MirroredTypesException;->types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTypeMirror()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/lang/model/type/MirroredTypeException;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    return-object v0
.end method
