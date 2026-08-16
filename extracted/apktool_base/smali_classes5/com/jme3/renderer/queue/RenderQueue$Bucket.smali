.class public final enum Lcom/jme3/renderer/queue/RenderQueue$Bucket;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/queue/RenderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/renderer/queue/RenderQueue$Bucket;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;


# direct methods
.method private static synthetic $values()[Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 6

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v5, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Opaque"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Transparent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Sky"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Translucent"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Gui"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Inherit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-static {}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->$values()[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-object p0
.end method

.method public static values()[Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 1

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0}, [Lcom/jme3/renderer/queue/RenderQueue$Bucket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-object v0
.end method
