.class public Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;
.super Lorg/eclipse/jdt/internal/core/BinaryField;
.source "SourceFile"


# instance fields
.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/BinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;->uniqueKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryField;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/BinaryField;->getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryField;->getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getConstant()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/BinaryField;->getConstant()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getElementType()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/BinaryField;->getElementType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/BinaryField;->getFlags()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;->uniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;->uniqueKey:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getTypeSignature()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/BinaryField;->getTypeSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEnumConstant()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/BinaryField;->isEnumConstant()Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryField;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    return-object p1
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/BinaryField;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    if-eqz p4, :cond_0

    const-string p1, " {key="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public unresolved()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryField;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/BinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method
