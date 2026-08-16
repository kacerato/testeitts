.class public interface abstract Lorg/eclipse/jdt/core/search/IJavaSearchScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_LIBRARIES:I = 0x2

.field public static final JAR_FILE_ENTRY_SEPARATOR:Ljava/lang/String; = "|"

.field public static final REFERENCED_PROJECTS:I = 0x8

.field public static final SOURCES:I = 0x1

.field public static final SYSTEM_LIBRARIES:I = 0x4


# virtual methods
.method public abstract encloses(Ljava/lang/String;)Z
.end method

.method public abstract encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z
.end method

.method public abstract enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract includesBinaries()Z
.end method

.method public abstract includesClasspaths()Z
.end method

.method public abstract setIncludesBinaries(Z)V
.end method

.method public abstract setIncludesClasspaths(Z)V
.end method
