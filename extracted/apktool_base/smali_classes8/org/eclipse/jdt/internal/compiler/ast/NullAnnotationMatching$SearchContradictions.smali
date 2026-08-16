.class Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchContradictions"
.end annotation


# instance fields
.field typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Z
    .locals 1

    .line 17
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Z
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z
    .locals 10

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v2, v4

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v4

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->otherUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v6, v0

    move v7, v1

    :goto_0
    if-lt v7, v6, :cond_3

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 9
    :cond_3
    aget-object v8, v0, v7

    .line 10
    iget-wide v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;)Z
    .locals 10

    .line 12
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    .line 13
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v8, 0x80000000000000L

    :goto_0
    and-long/2addr v6, v8

    or-long/2addr v0, v6

    goto :goto_1

    .line 15
    :cond_1
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v8, 0x100000000000000L

    goto :goto_0

    :goto_1
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 16
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$SearchContradictions;->typeWithContradiction:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p1, 0x0

    return p1

    :cond_2
    return v5
.end method
