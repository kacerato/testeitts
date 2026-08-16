.class public abstract Lorg/openjdk/tools/javac/code/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/AnnotationValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;,
        Lorg/openjdk/tools/javac/code/Attribute$Visitor;,
        Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;,
        Lorg/openjdk/tools/javac/code/Attribute$Error;,
        Lorg/openjdk/tools/javac/code/Attribute$Enum;,
        Lorg/openjdk/tools/javac/code/Attribute$Array;,
        Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;,
        Lorg/openjdk/tools/javac/code/Attribute$Compound;,
        Lorg/openjdk/tools/javac/code/Attribute$Class;,
        Lorg/openjdk/tools/javac/code/Attribute$Constant;
    }
.end annotation


# instance fields
.field public type:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V
.end method

.method public getPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isSynthesized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
