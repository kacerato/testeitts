.class public abstract Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/search/IJavaSearchScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includesBinaries()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public includesClasspaths()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
.end method

.method public setIncludesBinaries(Z)V
    .locals 0

    return-void
.end method

.method public setIncludesClasspaths(Z)V
    .locals 0

    return-void
.end method
