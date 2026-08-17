.class public final enum Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;
.super Ljava/lang/Enum;
.source "InteractionHighlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HighlightMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

.field public static final enum IndicatorIcon:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

.field public static final enum MaterialTint:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

.field public static final enum None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

.field public static final enum Outline:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;
    .locals 3

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->Outline:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->MaterialTint:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->IndicatorIcon:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const-string v1, "Outline"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->Outline:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const-string v1, "MaterialTint"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->MaterialTint:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const-string v1, "IndicatorIcon"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->IndicatorIcon:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->$values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;
    .locals 1

    .line 11
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;
    .locals 1

    .line 11
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    return-object v0
.end method
