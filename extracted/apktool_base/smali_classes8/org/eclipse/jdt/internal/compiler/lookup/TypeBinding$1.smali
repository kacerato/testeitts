.class Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding$1;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    return-void
.end method


# virtual methods
.method public hasTypeBit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public kind()I
    .locals 1

    const/16 v0, 0x4004

    return v0
.end method
