.class public Lorg/openjdk/javax/lang/model/type/UnknownTypeException;
.super Lorg/openjdk/javax/lang/model/UnknownEntityException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient parameter:Ljava/lang/Object;

.field private transient type:Lorg/openjdk/javax/lang/model/type/TypeMirror;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/javax/lang/model/UnknownEntityException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/openjdk/javax/lang/model/type/UnknownTypeException;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    iput-object p2, p0, Lorg/openjdk/javax/lang/model/type/UnknownTypeException;->parameter:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/lang/model/type/UnknownTypeException;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnknownType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/lang/model/type/UnknownTypeException;->type:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    return-object v0
.end method
