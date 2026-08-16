.class public final Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "offsetInBytes",
            "compressedSizeInBytes"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->a:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->c:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->d:I

    return-void
.end method
