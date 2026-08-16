.class public interface abstract Lorg/eclipse/jdt/core/dom/IBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATION:I = 0x5

.field public static final MEMBER_VALUE_PAIR:I = 0x6

.field public static final METHOD:I = 0x4

.field public static final MODULE:I = 0x7

.field public static final PACKAGE:I = 0x1

.field public static final TYPE:I = 0x2

.field public static final VARIABLE:I = 0x3


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
.end method

.method public abstract getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getKind()I
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isDeprecated()Z
.end method

.method public abstract isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
.end method

.method public abstract isRecovered()Z
.end method

.method public abstract isSynthetic()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
