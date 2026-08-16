.class public final enum Lcom/jme3/profile/AppStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/profile/AppStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/profile/AppStep;

.field public static final enum BeginFrame:Lcom/jme3/profile/AppStep;

.field public static final enum EndFrame:Lcom/jme3/profile/AppStep;

.field public static final enum ProcessAudio:Lcom/jme3/profile/AppStep;

.field public static final enum ProcessInput:Lcom/jme3/profile/AppStep;

.field public static final enum QueuedTasks:Lcom/jme3/profile/AppStep;

.field public static final enum RenderFrame:Lcom/jme3/profile/AppStep;

.field public static final enum RenderMainViewPorts:Lcom/jme3/profile/AppStep;

.field public static final enum RenderPostViewPorts:Lcom/jme3/profile/AppStep;

.field public static final enum RenderPreviewViewPorts:Lcom/jme3/profile/AppStep;

.field public static final enum SpatialUpdate:Lcom/jme3/profile/AppStep;

.field public static final enum StateManagerRender:Lcom/jme3/profile/AppStep;

.field public static final enum StateManagerUpdate:Lcom/jme3/profile/AppStep;


# direct methods
.method private static synthetic $values()[Lcom/jme3/profile/AppStep;
    .locals 12

    sget-object v0, Lcom/jme3/profile/AppStep;->BeginFrame:Lcom/jme3/profile/AppStep;

    sget-object v1, Lcom/jme3/profile/AppStep;->QueuedTasks:Lcom/jme3/profile/AppStep;

    sget-object v2, Lcom/jme3/profile/AppStep;->ProcessInput:Lcom/jme3/profile/AppStep;

    sget-object v3, Lcom/jme3/profile/AppStep;->ProcessAudio:Lcom/jme3/profile/AppStep;

    sget-object v4, Lcom/jme3/profile/AppStep;->StateManagerUpdate:Lcom/jme3/profile/AppStep;

    sget-object v5, Lcom/jme3/profile/AppStep;->SpatialUpdate:Lcom/jme3/profile/AppStep;

    sget-object v6, Lcom/jme3/profile/AppStep;->StateManagerRender:Lcom/jme3/profile/AppStep;

    sget-object v7, Lcom/jme3/profile/AppStep;->RenderFrame:Lcom/jme3/profile/AppStep;

    sget-object v8, Lcom/jme3/profile/AppStep;->RenderPreviewViewPorts:Lcom/jme3/profile/AppStep;

    sget-object v9, Lcom/jme3/profile/AppStep;->RenderMainViewPorts:Lcom/jme3/profile/AppStep;

    sget-object v10, Lcom/jme3/profile/AppStep;->RenderPostViewPorts:Lcom/jme3/profile/AppStep;

    sget-object v11, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    filled-new-array/range {v0 .. v11}, [Lcom/jme3/profile/AppStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "BeginFrame"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->BeginFrame:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "QueuedTasks"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->QueuedTasks:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "ProcessInput"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->ProcessInput:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "ProcessAudio"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->ProcessAudio:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "StateManagerUpdate"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->StateManagerUpdate:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "SpatialUpdate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->SpatialUpdate:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "StateManagerRender"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->StateManagerRender:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "RenderFrame"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->RenderFrame:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "RenderPreviewViewPorts"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->RenderPreviewViewPorts:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "RenderMainViewPorts"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->RenderMainViewPorts:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "RenderPostViewPorts"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->RenderPostViewPorts:Lcom/jme3/profile/AppStep;

    new-instance v0, Lcom/jme3/profile/AppStep;

    const-string v1, "EndFrame"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/AppStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    invoke-static {}, Lcom/jme3/profile/AppStep;->$values()[Lcom/jme3/profile/AppStep;

    move-result-object v0

    sput-object v0, Lcom/jme3/profile/AppStep;->$VALUES:[Lcom/jme3/profile/AppStep;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/profile/AppStep;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/profile/AppStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/profile/AppStep;

    return-object p0
.end method

.method public static values()[Lcom/jme3/profile/AppStep;
    .locals 1

    sget-object v0, Lcom/jme3/profile/AppStep;->$VALUES:[Lcom/jme3/profile/AppStep;

    invoke-virtual {v0}, [Lcom/jme3/profile/AppStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/profile/AppStep;

    return-object v0
.end method
