.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

.field public static final enum HORIZONTAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

.field public static final enum VERTICAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->HORIZONTAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    const-string v1, "VERTICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->VERTICAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->HORIZONTAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->VERTICAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    return-object v0
.end method
