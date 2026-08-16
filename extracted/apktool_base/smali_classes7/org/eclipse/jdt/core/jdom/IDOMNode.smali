.class public interface abstract Lorg/eclipse/jdt/core/jdom/IDOMNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final COMPILATION_UNIT:I = 0x1

.field public static final FIELD:I = 0x5

.field public static final IMPORT:I = 0x3

.field public static final INITIALIZER:I = 0x7

.field public static final METHOD:I = 0x6

.field public static final PACKAGE:I = 0x2

.field public static final TYPE:I = 0x4


# virtual methods
.method public abstract addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/jdom/DOMException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract canHaveChildren()Z
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract getCharacters()[C
.end method

.method public abstract getChild(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMNode;
.end method

.method public abstract getChildren()Ljava/util/Enumeration;
.end method

.method public abstract getContents()Ljava/lang/String;
.end method

.method public abstract getFirstChild()Lorg/eclipse/jdt/core/jdom/IDOMNode;
.end method

.method public abstract getJavaElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;
.end method

.method public abstract getNodeType()I
.end method

.method public abstract getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;
.end method

.method public abstract getPreviousNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;
.end method

.method public abstract insertSibling(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/jdom/DOMException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract isAllowableChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
.end method

.method public abstract isSignatureEqual(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
.end method

.method public abstract remove()V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
