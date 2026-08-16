.class public final enum Lcom/ardor3d/renderer/state/WireframeState$Face;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/WireframeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Face"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/WireframeState$Face;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/WireframeState$Face;

.field public static final enum Back:Lcom/ardor3d/renderer/state/WireframeState$Face;

.field public static final enum Front:Lcom/ardor3d/renderer/state/WireframeState$Face;

.field public static final enum FrontAndBack:Lcom/ardor3d/renderer/state/WireframeState$Face;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/renderer/state/WireframeState$Face;

    const-string v1, "Front"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/WireframeState$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/WireframeState$Face;->Front:Lcom/ardor3d/renderer/state/WireframeState$Face;

    new-instance v1, Lcom/ardor3d/renderer/state/WireframeState$Face;

    const-string v2, "Back"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/WireframeState$Face;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/WireframeState$Face;->Back:Lcom/ardor3d/renderer/state/WireframeState$Face;

    new-instance v2, Lcom/ardor3d/renderer/state/WireframeState$Face;

    const-string v3, "FrontAndBack"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/state/WireframeState$Face;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/state/WireframeState$Face;->FrontAndBack:Lcom/ardor3d/renderer/state/WireframeState$Face;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/renderer/state/WireframeState$Face;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/WireframeState$Face;->$VALUES:[Lcom/ardor3d/renderer/state/WireframeState$Face;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/WireframeState$Face;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/WireframeState$Face;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/WireframeState$Face;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/WireframeState$Face;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/WireframeState$Face;->$VALUES:[Lcom/ardor3d/renderer/state/WireframeState$Face;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/WireframeState$Face;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/WireframeState$Face;

    return-object v0
.end method
