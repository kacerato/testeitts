.class public Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;
.super Lorg/eclipse/jdt/internal/core/BinaryMethod;
.source "SourceFile"


# instance fields
.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/BinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;->uniqueKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;->uniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;->uniqueKey:Ljava/lang/String;

    return-object p1
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/BinaryMethod;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    if-eqz p4, :cond_0

    const-string p1, " {key="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public unresolved()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/BinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method
