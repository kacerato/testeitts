.class public Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# instance fields
.field protected declaringMemberName:[C

.field protected findDeclarations:Z

.field protected findReferences:Z

.field protected methodArgumentTypes:[[C

.field protected methodDeclaringClassName:[C

.field protected name:[C

.field protected typeParameter:Lorg/eclipse/jdt/core/ITypeParameter;


# direct methods
.method public constructor <init>(ZZLorg/eclipse/jdt/core/ITypeParameter;I)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p4}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findDeclarations:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findReferences:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->typeParameter:Lorg/eclipse/jdt/core/ITypeParameter;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->name:[C

    invoke-interface {p3}, Lorg/eclipse/jdt/core/ITypeParameter;->getDeclaringMember()Lorg/eclipse/jdt/core/IMember;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->declaringMemberName:[C

    instance-of p2, p1, Lorg/eclipse/jdt/core/IMethod;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->methodDeclaringClassName:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    new-array p3, p2, [[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->methodArgumentTypes:[[C

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->methodArgumentTypes:[[C

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    aput-object v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public findIndexMatches(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5

    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->typeParameter:Lorg/eclipse/jdt/core/ITypeParameter;

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p5

    check-cast p5, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p5}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->typeParameter:Lorg/eclipse/jdt/core/ITypeParameter;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    const-string v2, "|"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->typeParameter:Lorg/eclipse/jdt/core/ITypeParameter;

    invoke-interface {p5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p5, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object p5

    move-object v4, v0

    move-object v0, p5

    move-object p5, v4

    :goto_0
    instance-of v1, p4, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;

    if-eqz v1, :cond_3

    check-cast p4, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getAccessRuleSet(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object p1

    sget-object p4, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->NOT_ENCLOSED:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eq p1, p4, :cond_5

    invoke-virtual {p2, p5, p0, p3, p1}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;->acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_3
    invoke-interface {p4, p5}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p5, p0, p3, p1}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;->acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findReferences:Z

    if-eqz v0, :cond_0

    const-string v0, "TypeParamCombinedPattern: "

    goto :goto_0

    :cond_0
    const-string v0, "TypeParamDeclarationPattern: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v0, "TypeParamReferencePattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->typeParameter:Lorg/eclipse/jdt/core/ITypeParameter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method
