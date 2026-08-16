.class public interface abstract Lorg/openjdk/tools/javac/code/Attribute$Visitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
.end method

.method public abstract visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
.end method

.method public abstract visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
.end method

.method public abstract visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
.end method

.method public abstract visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
.end method

.method public abstract visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
.end method
