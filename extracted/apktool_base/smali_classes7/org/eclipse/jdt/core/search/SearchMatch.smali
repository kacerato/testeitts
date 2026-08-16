.class public Lorg/eclipse/jdt/core/search/SearchMatch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_GENERIC_FLAVORS:I = 0x70

.field public static final A_ACCURATE:I = 0x0

.field public static final A_INACCURATE:I = 0x1


# instance fields
.field private accuracy:I

.field private element:Ljava/lang/Object;

.field private implicit:Z

.field private insideDocComment:Z

.field private length:I

.field private offset:I

.field private participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

.field private raw:Z

.field private resource:Lorg/eclipse/core/resources/IResource;

.field private rule:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->insideDocComment:Z

    const/16 v1, 0x70

    iput v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->raw:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->implicit:Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->element:Ljava/lang/Object;

    iput p3, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->offset:I

    iput p4, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->length:I

    and-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->accuracy:I

    const/4 p1, 0x1

    if-le p2, p1, :cond_1

    and-int/lit8 p1, p2, 0x70

    if-lez p1, :cond_0

    and-int/lit8 p1, v1, -0x71

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    :cond_1
    iput-object p5, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    iput-object p6, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->resource:Lorg/eclipse/core/resources/IResource;

    return-void
.end method


# virtual methods
.method public final getAccuracy()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->accuracy:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->offset:I

    return v0
.end method

.method public final getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    return-object v0
.end method

.method public final getResource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->resource:Lorg/eclipse/core/resources/IResource;

    return-object v0
.end method

.method public final getRule()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    return v0
.end method

.method public final isEquivalent()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isErasure()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isExact()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isEquivalent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isImplicit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->implicit:Z

    return v0
.end method

.method public final isInsideDocComment()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->insideDocComment:Z

    return v0
.end method

.method public final isRaw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->raw:Z

    return v0
.end method

.method public final setAccuracy(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->accuracy:I

    return-void
.end method

.method public final setElement(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->element:Ljava/lang/Object;

    return-void
.end method

.method public final setImplicit(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->implicit:Z

    return-void
.end method

.method public final setInsideDocComment(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->insideDocComment:Z

    return-void
.end method

.method public final setLength(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->length:I

    return-void
.end method

.method public final setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->offset:I

    return-void
.end method

.method public final setParticipant(Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    return-void
.end method

.method public final setRaw(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->raw:Z

    return-void
.end method

.method public final setResource(Lorg/eclipse/core/resources/IResource;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->resource:Lorg/eclipse/core/resources/IResource;

    return-void
.end method

.method public final setRule(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Search match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n  accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->accuracy:I

    if-nez v1, :cond_0

    const-string v1, "ACCURATE"

    goto :goto_0

    :cond_0
    const-string v1, "INACCURATE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n  rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->rule:I

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    const-string v1, "EXACT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_2

    const-string v1, "EQUIVALENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const-string v1, "ERASURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    const-string v1, "\n  raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->raw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n  offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n  length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/search/SearchMatch;->element:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v1, "\n  element="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
