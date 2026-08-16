.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

.field public static final enum Horizontal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

.field public static final enum Vertical:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->Vertical:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->Horizontal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->Vertical:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->Horizontal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$j;

    return-object v0
.end method
