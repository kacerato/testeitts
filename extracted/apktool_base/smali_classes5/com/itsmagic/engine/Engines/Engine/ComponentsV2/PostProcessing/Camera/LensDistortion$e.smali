.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

.field public static final enum Barrel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

.field public static final enum Pincushion:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    const-string v1, "Barrel"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->Barrel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    const-string v1, "Pincushion"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->Pincushion:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->Barrel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->Pincushion:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion$e;

    return-object v0
.end method
