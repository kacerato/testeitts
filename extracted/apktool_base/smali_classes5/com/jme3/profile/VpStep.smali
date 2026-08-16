.class public final enum Lcom/jme3/profile/VpStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/profile/VpStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/profile/VpStep;

.field public static final enum BeginRender:Lcom/jme3/profile/VpStep;

.field public static final enum EndRender:Lcom/jme3/profile/VpStep;

.field public static final enum FlushQueue:Lcom/jme3/profile/VpStep;

.field public static final enum PostFrame:Lcom/jme3/profile/VpStep;

.field public static final enum PostQueue:Lcom/jme3/profile/VpStep;

.field public static final enum PreFrame:Lcom/jme3/profile/VpStep;

.field public static final enum ProcEndRender:Lcom/jme3/profile/VpStep;

.field public static final enum RenderBucket:Lcom/jme3/profile/VpStep;

.field public static final enum RenderScene:Lcom/jme3/profile/VpStep;


# direct methods
.method private static synthetic $values()[Lcom/jme3/profile/VpStep;
    .locals 9

    sget-object v0, Lcom/jme3/profile/VpStep;->BeginRender:Lcom/jme3/profile/VpStep;

    sget-object v1, Lcom/jme3/profile/VpStep;->RenderScene:Lcom/jme3/profile/VpStep;

    sget-object v2, Lcom/jme3/profile/VpStep;->PreFrame:Lcom/jme3/profile/VpStep;

    sget-object v3, Lcom/jme3/profile/VpStep;->PostQueue:Lcom/jme3/profile/VpStep;

    sget-object v4, Lcom/jme3/profile/VpStep;->FlushQueue:Lcom/jme3/profile/VpStep;

    sget-object v5, Lcom/jme3/profile/VpStep;->PostFrame:Lcom/jme3/profile/VpStep;

    sget-object v6, Lcom/jme3/profile/VpStep;->ProcEndRender:Lcom/jme3/profile/VpStep;

    sget-object v7, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    sget-object v8, Lcom/jme3/profile/VpStep;->EndRender:Lcom/jme3/profile/VpStep;

    filled-new-array/range {v0 .. v8}, [Lcom/jme3/profile/VpStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "BeginRender"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->BeginRender:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "RenderScene"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->RenderScene:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "PreFrame"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->PreFrame:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "PostQueue"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->PostQueue:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "FlushQueue"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->FlushQueue:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "PostFrame"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->PostFrame:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "ProcEndRender"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->ProcEndRender:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "RenderBucket"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    new-instance v0, Lcom/jme3/profile/VpStep;

    const-string v1, "EndRender"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/VpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/VpStep;->EndRender:Lcom/jme3/profile/VpStep;

    invoke-static {}, Lcom/jme3/profile/VpStep;->$values()[Lcom/jme3/profile/VpStep;

    move-result-object v0

    sput-object v0, Lcom/jme3/profile/VpStep;->$VALUES:[Lcom/jme3/profile/VpStep;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/profile/VpStep;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/profile/VpStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/profile/VpStep;

    return-object p0
.end method

.method public static values()[Lcom/jme3/profile/VpStep;
    .locals 1

    sget-object v0, Lcom/jme3/profile/VpStep;->$VALUES:[Lcom/jme3/profile/VpStep;

    invoke-virtual {v0}, [Lcom/jme3/profile/VpStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/profile/VpStep;

    return-object v0
.end method
