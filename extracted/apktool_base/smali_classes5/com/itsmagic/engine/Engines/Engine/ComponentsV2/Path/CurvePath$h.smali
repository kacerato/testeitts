.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

.field public static final enum Bezier:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

.field public static final enum CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

.field public static final enum Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    const-string v1, "Bezier"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Bezier:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    const-string v1, "Knee"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    const-string v1, "CatmullRom"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Bezier:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->Knee:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->CatmullRom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$h;

    return-object v0
.end method
