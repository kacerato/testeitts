.class public final Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public alphaUsed:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public astcBlockX:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public astcBlockY:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public astcExported:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public errorMessage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public outputHeight:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public outputWidth:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public sourceHeight:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public sourceWidth:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public success:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;IIIIZZII)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "errorMessage",
            "sourceWidth",
            "sourceHeight",
            "outputWidth",
            "outputHeight",
            "alphaUsed",
            "astcExported",
            "astcBlockX",
            "astcBlockY"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->success:Z

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->errorMessage:Ljava/lang/String;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->sourceWidth:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->sourceHeight:I

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->outputWidth:I

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->outputHeight:I

    iput-boolean p7, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->alphaUsed:Z

    iput-boolean p8, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->astcExported:Z

    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->astcBlockX:I

    iput p10, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureImportNative$Result;->astcBlockY:I

    return-void
.end method
