.class public Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;


# instance fields
.field public modifiers:I

.field public name:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->modifiers:I

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->getModifiers()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->name:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->modifiers:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->name:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->name:[C

    return-object v0
.end method
