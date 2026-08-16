.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/env/IModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IModuleReference"
.end annotation


# virtual methods
.method public abstract getModifiers()I
.end method

.method public isStatic()Z
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitive()Z
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract name()[C
.end method
