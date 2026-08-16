.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;
.super Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "cause",
            "enableSuppression",
            "writableStackTrace"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
