.class public final enum Lcom/jme3/scene/Spatial$DFSMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Spatial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DFSMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/scene/Spatial$DFSMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Spatial$DFSMode;

.field public static final enum POST_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

.field public static final enum PRE_ORDER:Lcom/jme3/scene/Spatial$DFSMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/scene/Spatial$DFSMode;
    .locals 2

    sget-object v0, Lcom/jme3/scene/Spatial$DFSMode;->PRE_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

    sget-object v1, Lcom/jme3/scene/Spatial$DFSMode;->POST_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

    filled-new-array {v0, v1}, [Lcom/jme3/scene/Spatial$DFSMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/scene/Spatial$DFSMode;

    const-string v1, "PRE_ORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$DFSMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$DFSMode;->PRE_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

    new-instance v0, Lcom/jme3/scene/Spatial$DFSMode;

    const-string v1, "POST_ORDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$DFSMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$DFSMode;->POST_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

    invoke-static {}, Lcom/jme3/scene/Spatial$DFSMode;->$values()[Lcom/jme3/scene/Spatial$DFSMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Spatial$DFSMode;->$VALUES:[Lcom/jme3/scene/Spatial$DFSMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Spatial$DFSMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/scene/Spatial$DFSMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Spatial$DFSMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/scene/Spatial$DFSMode;
    .locals 1

    sget-object v0, Lcom/jme3/scene/Spatial$DFSMode;->$VALUES:[Lcom/jme3/scene/Spatial$DFSMode;

    invoke-virtual {v0}, [Lcom/jme3/scene/Spatial$DFSMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial$DFSMode;

    return-object v0
.end method
