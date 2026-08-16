.class public final enum Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/ShadingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

.field public static final enum Flat:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

.field public static final enum Smooth:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    const-string v1, "Flat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->Flat:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    new-instance v1, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    const-string v2, "Smooth"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->Smooth:Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    filled-new-array {v0, v1}, [Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->$VALUES:[Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->$VALUES:[Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/ShadingState$ShadingMode;

    return-object v0
.end method
