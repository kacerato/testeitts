.class public final enum Lcom/ardor3d/renderer/queue/RenderBucketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/queue/RenderBucketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum Opaque:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum PostBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum PreBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum Shadow:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum Skip:Lcom/ardor3d/renderer/queue/RenderBucketType;

.field public static final enum Transparent:Lcom/ardor3d/renderer/queue/RenderBucketType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Inherit:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v1, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v2, "PreBucket"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->PreBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v2, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v3, "Shadow"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/queue/RenderBucketType;->Shadow:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v3, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v4, "Opaque"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/renderer/queue/RenderBucketType;->Opaque:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v4, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v5, "Transparent"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/renderer/queue/RenderBucketType;->Transparent:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v5, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v6, "Ortho"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v6, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v7, "PostBucket"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/renderer/queue/RenderBucketType;->PostBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

    new-instance v7, Lcom/ardor3d/renderer/queue/RenderBucketType;

    const-string v8, "Skip"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/renderer/queue/RenderBucketType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/renderer/queue/RenderBucketType;->Skip:Lcom/ardor3d/renderer/queue/RenderBucketType;

    filled-new-array/range {v0 .. v7}, [Lcom/ardor3d/renderer/queue/RenderBucketType;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->$VALUES:[Lcom/ardor3d/renderer/queue/RenderBucketType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/queue/RenderBucketType;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/queue/RenderBucketType;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/queue/RenderBucketType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->$VALUES:[Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/queue/RenderBucketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/queue/RenderBucketType;

    return-object v0
.end method
