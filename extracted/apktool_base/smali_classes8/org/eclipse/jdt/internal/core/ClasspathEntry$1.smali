.class Lorg/eclipse/jdt/internal/core/ClasspathEntry$1;
.super Lorg/eclipse/jdt/internal/core/JavaModelStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isOK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
