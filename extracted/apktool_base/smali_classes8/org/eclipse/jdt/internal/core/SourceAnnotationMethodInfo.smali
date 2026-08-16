.class public Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;
.super Lorg/eclipse/jdt/internal/core/SourceMethodInfo;
.source "SourceFile"


# instance fields
.field public defaultValue:Lorg/eclipse/jdt/core/IMemberValuePair;

.field public defaultValueEnd:I

.field public defaultValueStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueEnd:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public isAnnotationMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
