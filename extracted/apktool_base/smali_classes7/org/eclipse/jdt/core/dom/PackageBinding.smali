.class Lorg/eclipse/jdt/core/dom/PackageBinding;
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

    sput-object v0, Lorg/eclipse/jdt/core/dom/PackageBinding;->NO_NAME_COMPONENTS:[Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/core/dom/PackageBinding;->UNNAMED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-void
.end method

.method private computeNameAndComponents()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->components:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lt v3, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->components:[Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    aget-object v5, v0, v4

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v1, v4

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->name:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->components:[Ljava/lang/String;

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
    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageBinding;->UNNAMED:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->name:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageBinding;->NO_NAME_COMPONENTS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->components:[Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    if-nez v1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0

    :cond_2
    array-length v2, v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0

    :cond_3
    :try_start_1
    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageFragment;->getKind()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBinaryType()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMissingTypeNames()[[[C

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v1, v4, v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->addStandardAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    :goto_1
    if-lt v3, v1, :cond_5

    return-object v2

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0

    :cond_6
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const-string v5, "package-info.java"

    aget-object v7, v1, v4

    invoke-interface {v7, v5}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x3

    invoke-static {v8}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/dom/ASTParser;->setUnitName(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/core/dom/ASTParser;->setFocalPosition(I)V

    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/dom/ASTParser;->setKind(I)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->annotations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    return-object v1

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Annotation;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v2

    aput-object v2, v1, v3

    if-nez v2, :cond_a

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_c
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    array-length v1, v0

    if-nez v1, :cond_3

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Searching for package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returns an empty array"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "org.eclipse.jdt.core"

    invoke-direct {v0, v3, v4, v1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-object v2

    :cond_3
    aget-object v0, v0, v3

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

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

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

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

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;->computeNameAndComponents()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameComponents()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->components:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;->computeNameAndComponents()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->components:[Ljava/lang/String;

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/PackageBinding;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p1

    return p1
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnnamed()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/dom/PackageBinding;->UNNAMED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PackageBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
