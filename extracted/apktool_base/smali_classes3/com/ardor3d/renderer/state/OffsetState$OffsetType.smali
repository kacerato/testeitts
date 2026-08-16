.class public final enum Lcom/ardor3d/renderer/state/OffsetState$OffsetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/OffsetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OffsetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/OffsetState$OffsetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

.field public static final enum Fill:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

.field public static final enum Line:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

.field public static final enum Point:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    const-string v1, "Fill"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Fill:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    new-instance v1, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    const-string v2, "Line"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Line:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    new-instance v2, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    const-string v3, "Point"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->Point:Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->$VALUES:[Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/OffsetState$OffsetType;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/OffsetState$OffsetType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->$VALUES:[Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/OffsetState$OffsetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    return-object v0
.end method
