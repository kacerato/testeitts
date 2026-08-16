.class public Lcom/github/javaparser/ast/CompilationUnit;
.super Lcom/github/javaparser/ast/Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/CompilationUnit$Storage;
    }
.end annotation


# static fields
.field private static final JAVA_LANG:Ljava/lang/String; = "java.lang"


# instance fields
.field private imports:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private storage:Lcom/github/javaparser/ast/CompilationUnit$Storage;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private types:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/CompilationUnit;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "packageDeclaration",
            "imports",
            "types",
            "module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/PackageDeclaration;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lcom/github/javaparser/ast/PackageDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/CompilationUnit;->setImports(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/CompilationUnit;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/CompilationUnit;->setTypes(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/CompilationUnit;

    .line 8
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/CompilationUnit;->setModule(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    .line 9
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 6
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageDeclaration",
            "imports",
            "types",
            "module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/PackageDeclaration;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/CompilationUnit;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .line 2
    new-instance v2, Lcom/github/javaparser/ast/PackageDeclaration;

    new-instance v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/expr/Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/PackageDeclaration;-><init>(Lcom/github/javaparser/ast/expr/Name;)V

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/CompilationUnit;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    return-void
.end method

.method private static getImportPackageName(Lcom/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p0

    const-string v1, "*"

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/ast/expr/Name;-><init>(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private isImplicitImport(Lcom/github/javaparser/ast/ImportDeclaration;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lcom/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "java.lang"

    invoke-static {v0}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public static synthetic j0(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/ImportDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$addImport$1(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/ImportDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k0(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getClassByName$2(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/EnumDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getEnumByName$8(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/EnumDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addImport$0(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/ImportDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "importDeclaration",
            "im"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lcom/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lcom/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addImport$1(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/ImportDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "importDeclaration",
            "im"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lcom/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lcom/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getAnnotationDeclarationByName$11(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "annotationName",
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getAnnotationDeclarationByName$12(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getClassByName$2(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "className",
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getClassByName$3(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getEnumByName$7(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enumName",
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/github/javaparser/ast/body/EnumDeclaration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getEnumByName$8(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/EnumDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/EnumDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getInterfaceByName$5(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "interfaceName",
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getInterfaceByName$6(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getLocalDeclarationFromClassname$4(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "className",
            "cid"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getPrimaryType$10(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/c;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$getRecordByName$13(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "recordName",
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/github/javaparser/ast/body/RecordDeclaration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getRecordByName$14(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/RecordDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/RecordDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$null$9(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "t"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getPrimaryType$10(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getRecordByName$13(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o0(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/ImportDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$addImport$0(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/ImportDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getAnnotationDeclarationByName$12(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getInterfaceByName$6(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getEnumByName$7(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getClassByName$3(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getInterfaceByName$5(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u0(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getAnnotationDeclarationByName$11(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/RecordDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getRecordByName$14(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$null$9(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x0(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->lambda$getLocalDeclarationFromClassname$4(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V

    return-void
.end method

.method public addAnnotationDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit;->addAnnotationDeclaration(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAnnotationDeclaration(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    invoke-static {p2}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/github/javaparser/ast/body/AnnotationDeclaration;-><init>(Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public addClass(Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit;->addClass(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addClass(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 3
    invoke-static {p2}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;-><init>(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public addEnum(Ljava/lang/String;)Lcom/github/javaparser/ast/body/EnumDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit;->addEnum(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/EnumDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addEnum(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/EnumDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/body/EnumDeclaration;

    invoke-static {p2}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;-><init>(Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public addImport(Lcom/github/javaparser/ast/ImportDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/j;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/j;-><init>(Lcom/github/javaparser/ast/ImportDeclaration;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->isImplicitImport(Lcom/github/javaparser/ast/ImportDeclaration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/k;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/k;-><init>(Lcom/github/javaparser/ast/ImportDeclaration;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    :cond_1
    return-object p0
.end method

.method public addImport(Ljava/lang/Class;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/Class;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/github/javaparser/utils/ClassUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an anonymous or local class therefore it can\'t be added with addImport"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public addImport(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/String;ZZ)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public addImport(Ljava/lang/String;ZZ)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "isStatic",
            "isAsterisk"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/javaparser/ast/ImportDeclaration;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->addImport(Lcom/github/javaparser/ast/ImportDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public addInterface(Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit;->addInterface(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addInterface(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 3
    invoke-static {p2}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;-><init>(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public addType(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;)",
            "Lcom/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->addAll(Lcom/github/javaparser/ast/NodeList;)V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    sget-object p1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public clone()Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/CompilationUnit;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->clone()Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->clone()Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getAllComments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getAllContainedComments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/github/javaparser/ast/n;

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/n;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getAnnotationDeclarationByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/AnnotationDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/q;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/q;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/r;

    invoke-direct {v0}, Lcom/github/javaparser/ast/r;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getClassByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/h;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/i;

    invoke-direct {v0}, Lcom/github/javaparser/ast/i;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getComments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getAllContainedComments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/github/javaparser/ast/n;

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/n;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getEnumByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/EnumDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/o;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/p;

    invoke-direct {v0}, Lcom/github/javaparser/ast/p;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getImport(I)Lcom/github/javaparser/ast/ImportDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/ImportDeclaration;

    return-object p1
.end method

.method public getImports()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getInterfaceByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interfaceName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/f;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/g;

    invoke-direct {v0}, Lcom/github/javaparser/ast/g;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getLocalDeclarationFromClassname(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/a;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/CompilationUnitMetaModel;
    .locals 1

    .line 2
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->compilationUnitMetaModel:Lcom/github/javaparser/metamodel/CompilationUnitMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getMetaModel()Lcom/github/javaparser/metamodel/CompilationUnitMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPackageDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/PackageDeclaration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryType()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getPrimaryTypeName()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/b;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/b;-><init>(Lcom/github/javaparser/ast/CompilationUnit;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTypeName()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/l;

    invoke-direct {v1}, Lcom/github/javaparser/ast/l;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/m;

    invoke-direct {v1}, Lcom/github/javaparser/ast/m;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPrinter()Lcom/github/javaparser/printer/Printer;
    .locals 2

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Node;->PRINTER_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->createDefaultPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/CompilationUnit;->printer(Lcom/github/javaparser/printer/Printer;)Lcom/github/javaparser/ast/CompilationUnit;

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/Printer;

    return-object v0
.end method

.method public getPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/github/javaparser/printer/ConfigurablePrinter;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/github/javaparser/printer/ConfigurablePrinter;

    invoke-interface {v1, p1}, Lcom/github/javaparser/printer/ConfigurablePrinter;->setConfiguration(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->printer(Lcom/github/javaparser/printer/Printer;)Lcom/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public getRecordByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/RecordDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/d;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/e;

    invoke-direct {v0}, Lcom/github/javaparser/ast/e;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getStorage()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/CompilationUnit$Storage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->storage:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    return-object p1
.end method

.method public getTypes()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public printer(Lcom/github/javaparser/printer/Printer;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printer"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Node;->PRINTER_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    return-object p0
.end method

.method public recalculatePositions()V
    .locals 5

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/github/javaparser/Position;->HOME:Lcom/github/javaparser/Position;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lcom/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v3

    sget-object v4, Lcom/github/javaparser/JavaToken$Kind;->EOF:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v4}, Lcom/github/javaparser/JavaToken$Kind;->getKind()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/github/javaparser/Position;->right(I)Lcom/github/javaparser/Position;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/javaparser/JavaToken;->setRange(Lcom/github/javaparser/Range;)V

    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/github/javaparser/Position;->nextLine()Lcom/github/javaparser/Position;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/github/javaparser/Position;->right(I)Lcom/github/javaparser/Position;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t recalculate positions without tokens."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->removeModule()Lcom/github/javaparser/ast/CompilationUnit;

    return v3

    :cond_3
    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->removePackageDeclaration()Lcom/github/javaparser/ast/CompilationUnit;

    return v3

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeModule()Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->setModule(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public removePackageDeclaration()Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lcom/github/javaparser/ast/PackageDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/CompilationUnit;->setModule(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    return v3

    :cond_3
    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_4

    check-cast p2, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lcom/github/javaparser/ast/PackageDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    return v3

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public setImport(ILcom/github/javaparser/ast/ImportDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "imports"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return-object p0
.end method

.method public setImports(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;)",
            "Lcom/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->IMPORTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->imports:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setModule(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "module"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODULE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->module:Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lcom/github/javaparser/ast/expr/Name;Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->setModule(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public setPackageDeclaration(Lcom/github/javaparser/ast/PackageDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->PACKAGE_DECLARATION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lcom/github/javaparser/ast/PackageDeclaration;

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setPackageDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/PackageDeclaration;-><init>(Lcom/github/javaparser/ast/expr/Name;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lcom/github/javaparser/ast/PackageDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method public setStorage(Ljava/nio/file/Path;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/CompilationUnit$Storage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit$1;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->storage:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    return-object p0
.end method

.method public setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "charset"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/CompilationUnit$Storage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit$1;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->storage:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    return-object p0
.end method

.method public setType(ILcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;)",
            "Lcom/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->addAll(Lcom/github/javaparser/ast/NodeList;)V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    sget-object p1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iget-object p2, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTypes(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;)",
            "Lcom/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit;->types:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method
