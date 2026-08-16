.class public Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;
.super Lorg/eclipse/jdt/internal/core/LambdaExpression;
.source "SourceFile"


# instance fields
.field private uniqueKey:Ljava/lang/String;

.field unresolved:Lorg/eclipse/jdt/internal/core/LambdaExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/core/LambdaExpression;Ljava/lang/String;)V
    .locals 7

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/LambdaExpression;->interphase:Ljava/lang/String;

    iget v3, p2, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceStart:I

    iget v4, p2, Lorg/eclipse/jdt/internal/core/LambdaExpression;->sourceEnd:I

    iget v5, p2, Lorg/eclipse/jdt/internal/core/LambdaExpression;->arrowPosition:I

    iget-object v6, p2, Lorg/eclipse/jdt/internal/core/LambdaExpression;->lambdaMethod:Lorg/eclipse/jdt/internal/core/LambdaMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIILorg/eclipse/jdt/internal/core/LambdaMethod;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->uniqueKey:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->unresolved:Lorg/eclipse/jdt/internal/core/LambdaExpression;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->unresolved:Lorg/eclipse/jdt/internal/core/LambdaExpression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFullyQualifiedParameterizedName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SourceType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getFullyQualifiedParameterizedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->uniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/SourceType;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    if-eqz p4, :cond_0

    const-string p1, " {key="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public unresolved()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ResolvedLambdaExpression;->unresolved:Lorg/eclipse/jdt/internal/core/LambdaExpression;

    return-object v0
.end method
