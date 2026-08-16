.class public Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;
.super Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;
.source "SourceFile"


# static fields
.field private static final RETURN_TYPE_NAME:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;->RETURN_TYPE_NAME:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x76s
        0x6fs
        0x69s
        0x64s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getReturnTypeName()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;->RETURN_TYPE_NAME:[C

    return-object v0
.end method

.method public isAnnotationMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setReturnType([C)V
    .locals 0

    return-void
.end method
