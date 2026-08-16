.class public Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;
.super Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
.source "SourceFile"


# instance fields
.field public element:Lorg/eclipse/jdt/core/IJavaElement;

.field public exception:Lorg/eclipse/jdt/core/JavaModelException;

.field private owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

.field private project:Lorg/eclipse/jdt/internal/core/JavaProject;

.field private types:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->types:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->types:Ljava/util/ArrayList;

    .line 7
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 8
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method


# virtual methods
.method public consumeAnnotation()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v0, v0, Lorg/eclipse/jdt/core/IAnnotatable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->types:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v1, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IAnnotatable;->getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public consumeField([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public consumeFullyQualifiedName([C)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-static {p1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->exception:Lorg/eclipse/jdt/core/JavaModelException;

    :goto_0
    return-void
.end method

.method public consumeLocalType([C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    const/16 v1, 0x3b

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_0

    :cond_1
    const/16 v0, 0x24

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-static {v1, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    :cond_2
    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/ITypeRoot;->getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->exception:Lorg/eclipse/jdt/core/JavaModelException;

    :goto_0
    return-void
.end method

.method public consumeMemberType([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public consumeMethod([C[C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v0, v0, Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1, p2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IType;->findMethods(Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_1
    return-void
.end method

.method public consumeModule([C)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findModule(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->exception:Lorg/eclipse/jdt/core/JavaModelException;

    :goto_0
    return-void
.end method

.method public consumePackage([C)V
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->exception:Lorg/eclipse/jdt/core/JavaModelException;

    :goto_0
    return-void
.end method

.method public consumeParser(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consumeSecondaryType([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public consumeTypeVariable([C[C)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IType;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    :goto_0
    return-void
.end method

.method public newParser()Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;-><init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object v0
.end method
