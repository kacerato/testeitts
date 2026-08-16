.class abstract Lorg/eclipse/jdt/internal/core/MemberElementInfo;
.super Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;
.source "SourceFile"


# instance fields
.field protected flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->flags:I

    return v0
.end method

.method public getNameSourceEnd()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getNameSourceStart()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->flags:I

    return-void
.end method
