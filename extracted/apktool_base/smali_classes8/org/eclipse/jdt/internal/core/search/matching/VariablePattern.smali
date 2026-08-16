.class public abstract Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# static fields
.field public static final FINE_GRAIN_MASK:I = 0xf000000


# instance fields
.field protected findDeclarations:Z

.field protected findReferences:Z

.field protected name:[C

.field protected readAccess:Z

.field protected writeAccess:Z


# direct methods
.method public constructor <init>(I[CII)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    const/high16 p4, 0xf000000

    and-int/2addr p4, p3

    iput p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-nez p4, :cond_6

    and-int/lit8 p3, p3, 0xf

    const/4 p4, 0x1

    if-eqz p3, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    goto :goto_0

    :cond_1
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    goto :goto_0

    :cond_2
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    goto :goto_0

    :cond_3
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    goto :goto_0

    :cond_4
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    :goto_0
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    move p1, p4

    :goto_1
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    :cond_6
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :cond_8
    :goto_2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    return-void
.end method


# virtual methods
.method public mustResolve()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
