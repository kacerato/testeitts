.class final Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic([CZ)Lorg/eclipse/jdt/internal/compiler/env/IModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoModule"
.end annotation


# instance fields
.field name:[C

.field nameFromManifest:Z


# direct methods
.method public constructor <init>([CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;->name:[C

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;->nameFromManifest:Z

    return-void
.end method


# virtual methods
.method public exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_EXPORTS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    return-object v0
.end method

.method public isAutoNameFromManifest()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;->nameFromManifest:Z

    return v0
.end method

.method public isAutomatic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;->name:[C

    return-object v0
.end method

.method public opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_OPENS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    return-object v0
.end method

.method public provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_PROVIDES:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    return-object v0
.end method

.method public requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_MODULE_REFS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    return-object v0
.end method

.method public uses()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_USES:[[C

    return-object v0
.end method
