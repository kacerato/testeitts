.class public interface abstract Lorg/eclipse/jdt/core/IClasspathContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K_APPLICATION:I = 0x1

.field public static final K_DEFAULT_SYSTEM:I = 0x3

.field public static final K_SYSTEM:I = 0x2


# virtual methods
.method public abstract getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getKind()I
.end method

.method public abstract getPath()Lorg/eclipse/core/runtime/IPath;
.end method
