.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient a:Ljava/lang/Object;

.field public fileIPP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inputIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jsonData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public stringValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lga/H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public w:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public z:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lga/H;->NUMBER:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    return-void
.end method

.method public static a(F)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {p0, v0}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "animationFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->ANIMATION_FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static d(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "animationMaskFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->ANIMATION_MASK_FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static e(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->BIG_NUMBER:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static f(IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->BOOLEAN:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static g(IFFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->COLOR:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    iput p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    return-object v0
.end method

.method public static h(ILga/H;Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "type",
            "componentReferenceJson",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->ANY_COMPONENT:Lga/H;

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    const-string p0, ""

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p0

    :goto_2
    iput-object p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static i(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "cubemapFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->CUBEMAP:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static j(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->DIRECTION:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static k(ILga/H;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "type",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->BLENDING_MODE:Lga/H;

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static l(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "file"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static m(IFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->FLOAT2:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    return-object v0
.end method

.method public static n(IFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->FLOAT3:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    return-object v0
.end method

.method public static o(IFFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->FLOAT4:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    iput p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    return-object v0
.end method

.method public static p(ILjava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "objectReferenceJson",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->GAME_OBJECT:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    const-string p0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static q(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->MATERIAL:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static r(IF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "v"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->NUMBER:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    return-object v0
.end method

.method public static s(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "objectFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->OBJECT_FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static t(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "file"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->PROJECT_FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static u(IFFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->QUATERNION:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    iput p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    return-object v0
.end method

.method public static v(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "soundFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->SOUND_FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static w(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->TEXT:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public static x(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "textureFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->TEXTURE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static y(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "worldFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->inputIndex:I

    sget-object p0, Lga/H;->WORLD_FILE:Lga/H;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public z(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoCodeInputDefault: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    :cond_0
    return-void
.end method
