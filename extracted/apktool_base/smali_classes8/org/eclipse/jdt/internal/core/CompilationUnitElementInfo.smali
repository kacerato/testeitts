.class public Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;
.super Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.source "SourceFile"


# static fields
.field public static ANNOTATION_THRESHOLD_FOR_DIET_PARSE:I = 0xa


# instance fields
.field public annotationNumber:I

.field public hasFunctionalTypes:Z

.field protected sourceLength:I

.field protected timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->hasFunctionalTypes:Z

    return-void
.end method


# virtual methods
.method public getSourceLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->sourceLength:I

    return v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->sourceLength:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v0
.end method

.method public setSourceLength(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->sourceLength:I

    return-void
.end method
