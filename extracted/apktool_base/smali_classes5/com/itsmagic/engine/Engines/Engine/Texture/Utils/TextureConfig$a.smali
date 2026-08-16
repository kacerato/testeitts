.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

.field public static final enum Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

.field public static final enum Fastest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

.field public static final enum Medium:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

.field public static final enum Thorough:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;


# instance fields
.field private final effort:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    const-string v1, "Fastest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fastest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "Fast"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    const/4 v1, 0x2

    const/16 v2, 0x2d

    const-string v3, "Medium"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Medium:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    const/4 v1, 0x3

    const/16 v2, 0x46

    const-string v3, "Thorough"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Thorough:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
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
            "effort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->effort:I

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fastest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Medium:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Thorough:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->effort:I

    return v0
.end method
