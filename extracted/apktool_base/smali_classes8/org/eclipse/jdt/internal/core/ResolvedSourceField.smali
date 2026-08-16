.class public Lorg/eclipse/jdt/internal/core/ResolvedSourceField;
.super Lorg/eclipse/jdt/internal/core/SourceField;
.source "SourceFile"


# instance fields
.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;->uniqueKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;->uniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/SourceField;->toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V

    if-eqz p4, :cond_0

    const-string p1, " {key="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ResolvedSourceField;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public unresolved()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceField;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/SourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method
