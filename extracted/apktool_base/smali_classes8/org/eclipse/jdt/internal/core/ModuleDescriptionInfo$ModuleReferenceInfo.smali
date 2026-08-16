.class Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;
.super Lorg/eclipse/jdt/internal/core/MemberElementInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleReferenceInfo"
.end annotation


# instance fields
.field modifiers:I

.field name:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;->modifiers:I

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;->name:[C

    return-object v0
.end method
