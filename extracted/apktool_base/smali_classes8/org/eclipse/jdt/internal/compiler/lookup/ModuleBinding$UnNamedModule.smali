.class public Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnNamedModule"
.end annotation


# static fields
.field private static final UNNAMED_READABLE_NAME:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<unnamed>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;->UNNAMED_READABLE_NAME:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method


# virtual methods
.method public canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_3

    invoke-virtual {v0, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageExportedTo(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public isPackageExportedTo(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->hasCompilationUnit(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isUnnamed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nameForCUCheck()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    return-object v0
.end method

.method public nameForLookup()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    return-object v0
.end method

.method public readableName()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;->UNNAMED_READABLE_NAME:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "The Unnamed Module"

    return-object v0
.end method
