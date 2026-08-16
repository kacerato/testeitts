.class interface abstract Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProxyVisitor"
.end annotation


# virtual methods
.method public abstract visitArrayAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;)V
.end method

.method public abstract visitClassAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;)V
.end method

.method public abstract visitCompoundAnnotationProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V
.end method

.method public abstract visitEnumAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;)V
.end method
