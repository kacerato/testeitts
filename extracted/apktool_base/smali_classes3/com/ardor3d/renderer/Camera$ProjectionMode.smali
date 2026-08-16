.class public final enum Lcom/ardor3d/renderer/Camera$ProjectionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProjectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/Camera$ProjectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/Camera$ProjectionMode;

.field public static final enum Custom:Lcom/ardor3d/renderer/Camera$ProjectionMode;

.field public static final enum Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

.field public static final enum Perspective:Lcom/ardor3d/renderer/Camera$ProjectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const-string v1, "Perspective"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/Camera$ProjectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Perspective:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    new-instance v1, Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const-string v2, "Parallel"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/Camera$ProjectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    new-instance v2, Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const-string v3, "Custom"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/Camera$ProjectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Custom:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/Camera$ProjectionMode;->$VALUES:[Lcom/ardor3d/renderer/Camera$ProjectionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/Camera$ProjectionMode;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/Camera$ProjectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/Camera$ProjectionMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/Camera$ProjectionMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/Camera$ProjectionMode;->$VALUES:[Lcom/ardor3d/renderer/Camera$ProjectionMode;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/Camera$ProjectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/Camera$ProjectionMode;

    return-object v0
.end method
