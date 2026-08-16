.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

.field public static final enum R8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

.field public static final enum RGB8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

.field public static final enum RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    const-string v1, "RGBA8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    const-string v1, "RGB8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->RGB8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    const-string v1, "R8"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->R8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->RGB8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->R8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    return-object v0
.end method
