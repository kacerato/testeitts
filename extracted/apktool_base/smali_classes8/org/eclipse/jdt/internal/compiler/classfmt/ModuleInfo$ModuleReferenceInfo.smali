.class Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleReferenceInfo"
.end annotation


# instance fields
.field isTransitive:Z

.field modifiers:I

.field refName:[C

.field required_version:[C

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->isTransitive:Z

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->modifiers:I

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->getModifiers()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->refName:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object p1

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    return p1
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->modifiers:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->refName:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public isTransitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->isTransitive:Z

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->refName:[C

    return-object v0
.end method
