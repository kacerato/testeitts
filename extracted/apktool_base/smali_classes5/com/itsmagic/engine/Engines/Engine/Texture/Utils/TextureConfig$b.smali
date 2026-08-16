.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_10:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_12:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_4:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_6:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_NORMAL_MAP_10:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_NORMAL_MAP_12:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_NORMAL_MAP_4:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_NORMAL_MAP_6:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum ASTC_NORMAL_MAP_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

.field public static final enum UNCOMPRESSED:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const/4 v1, 0x0

    const-string v2, "Uncompressed"

    const-string v3, "UNCOMPRESSED"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->UNCOMPRESSED:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_4"

    const/4 v2, 0x1

    const-string v3, "ASTC 4x4"

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_4:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_6"

    const/4 v2, 0x2

    const-string v4, "ASTC 6x6"

    invoke-direct {v0, v1, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_6:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_8"

    const/4 v2, 0x3

    const-string v5, "ASTC 8x8"

    invoke-direct {v0, v1, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_10"

    const/4 v2, 0x4

    const-string v6, "ASTC 10x10"

    invoke-direct {v0, v1, v2, v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_10:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_12"

    const/4 v2, 0x5

    const-string v7, "ASTC 12x12"

    invoke-direct {v0, v1, v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_12:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_NORMAL_MAP_4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_4:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_NORMAL_MAP_6"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_6:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_NORMAL_MAP_8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_NORMAL_MAP_10"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_10:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    const-string v1, "ASTC_NORMAL_MAP_12"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_12:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 11

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->UNCOMPRESSED:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_4:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_6:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_10:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_12:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_4:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_6:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_10:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_NORMAL_MAP_12:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    filled-new-array/range {v0 .. v10}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->name:Ljava/lang/String;

    return-object v0
.end method
