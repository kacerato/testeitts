.class public final enum Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/queue/RenderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 5

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Cast"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Receive"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "CastAndReceive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Inherit"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->$values()[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 1

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v0}, [Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object v0
.end method
