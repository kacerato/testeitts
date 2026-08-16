.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapInfo"
.end annotation


# instance fields
.field public indent:I

.field public wrapTokenIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    iget v3, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    add-int/2addr v0, v1

    return v0
.end method
