.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;
.super Lorg/eclipse/jdt/internal/core/ResolvedSourceType;
.source "SourceFile"


# instance fields
.field private bindingCache:Ljava/util/Map;

.field private infoCache:Ljava/util/Map;

.field private isResolved:Z

.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/ResolvedSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceField;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public getFullyQualifiedParameterizedName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->isResolved()Z

    move-result v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/SourceType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getFullyQualifiedParameterizedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getFullyQualifiedName(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;ILjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->uniqueKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->isResolved:Z

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->uniqueKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->isResolved:Z

    :try_start_0
    invoke-virtual {p0, p0, v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getKey(Lorg/eclipse/jdt/core/IType;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->uniqueKey:Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->uniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceMethod;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v6
.end method

.method public getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 3

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public getType(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;
    .locals 3

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 3
    iput p2, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method

.method public getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistTypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistTypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public isResolved()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->getKey()Ljava/lang/String;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->isResolved:Z

    return v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;->isResolved()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/ResolvedSourceType;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    return-void
.end method
