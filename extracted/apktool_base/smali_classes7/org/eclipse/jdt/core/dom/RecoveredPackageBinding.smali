.class Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IPackageBinding;


# static fields
.field private static final NO_NAME_COMPONENTS:[Ljava/lang/String;

.field private static final PACKAGE_NAME_SEPARATOR:C = '.'

.field private static final UNNAMED:Ljava/lang/String;


# instance fields
.field private binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field private components:[Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->NO_NAME_COMPONENTS:[Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->UNNAMED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-void
.end method

.method private computeNameAndComponents()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lt v3, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    aget-object v5, v0, v4

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v1, v4

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->name:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    aget-object v6, v0, v3

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v4, v3

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->UNNAMED:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->name:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->NO_NAME_COMPONENTS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Recovered#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->computeNameAndComponents()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameComponents()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->computeNameAndComponents()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->components:[Ljava/lang/String;

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isRecovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnnamed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
