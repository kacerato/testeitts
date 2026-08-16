.class public interface abstract Lorg/eclipse/jdt/core/IJavaElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/IAdaptable;


# static fields
.field public static final ANNOTATION:I = 0x10

.field public static final CLASS_FILE:I = 0x6

.field public static final COMPILATION_UNIT:I = 0x5

.field public static final FIELD:I = 0x8

.field public static final IMPORT_CONTAINER:I = 0xc

.field public static final IMPORT_DECLARATION:I = 0xd

.field public static final INITIALIZER:I = 0xa

.field public static final JAVA_MODEL:I = 0x1

.field public static final JAVA_MODULE:I = 0x11

.field public static final JAVA_PROJECT:I = 0x2

.field public static final LOCAL_VARIABLE:I = 0xe

.field public static final METHOD:I = 0x9

.field public static final PACKAGE_DECLARATION:I = 0xb

.field public static final PACKAGE_FRAGMENT:I = 0x4

.field public static final PACKAGE_FRAGMENT_ROOT:I = 0x3

.field public static final TYPE:I = 0x7

.field public static final TYPE_PARAMETER:I = 0xf


# virtual methods
.method public abstract exists()Z
.end method

.method public abstract getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getElementName()Ljava/lang/String;
.end method

.method public abstract getElementType()I
.end method

.method public abstract getHandleIdentifier()Ljava/lang/String;
.end method

.method public abstract getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;
.end method

.method public abstract getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;
.end method

.method public abstract getOpenable()Lorg/eclipse/jdt/core/IOpenable;
.end method

.method public abstract getParent()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getPath()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract getPrimaryElement()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getResource()Lorg/eclipse/core/resources/IResource;
.end method

.method public abstract getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
.end method

.method public abstract getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isStructureKnown()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method
