.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;,
        Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;,
        Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
    }
.end annotation


# static fields
.field public static final MODULE_INFO:Ljava/lang/String; = "module-info"

.field public static final MODULE_INFO_CLASS:Ljava/lang/String; = "module-info.class"

.field public static final MODULE_INFO_JAVA:Ljava/lang/String; = "module-info.java"

.field public static final NO_EXPORTS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field public static final NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/env/IModule;

.field public static final NO_MODULE_REFS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

.field public static final NO_OPENS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field public static final NO_PROVIDES:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

.field public static final NO_USES:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_MODULE_REFS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_EXPORTS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    new-array v1, v0, [[C

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_USES:[[C

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_PROVIDES:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IModule;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/env/IModule;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;->NO_OPENS:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    return-void
.end method

.method public static createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    .line 2
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromManifest(Ljava/util/jar/Manifest;)[C

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromFileName(Ljava/lang/String;ZZ)[C

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    :cond_0
    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic([CZ)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method public static createAutomatic([CZ)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule$1AutoModule;-><init>([CZ)V

    return-object v0
.end method


# virtual methods
.method public abstract exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
.end method

.method public isAutoNameFromManifest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAutomatic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOpen()Z
.end method

.method public abstract name()[C
.end method

.method public abstract opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
.end method

.method public abstract provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
.end method

.method public abstract requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
.end method

.method public abstract uses()[[C
.end method
