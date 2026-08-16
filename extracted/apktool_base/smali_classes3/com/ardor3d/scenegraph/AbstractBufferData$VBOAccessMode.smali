.class public final enum Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/scenegraph/AbstractBufferData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VBOAccessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum DynamicCopy:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum DynamicDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum DynamicRead:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum StaticCopy:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum StaticDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum StaticRead:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum StreamCopy:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum StreamDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

.field public static final enum StreamRead:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v1, "StaticDraw"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StaticDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v1, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v2, "StaticCopy"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StaticCopy:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v2, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v3, "StaticRead"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StaticRead:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v3, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v4, "StreamDraw"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StreamDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v4, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v5, "StreamCopy"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StreamCopy:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v5, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v6, "StreamRead"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->StreamRead:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v6, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v7, "DynamicDraw"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->DynamicDraw:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v7, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v8, "DynamicCopy"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->DynamicCopy:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    new-instance v8, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    const-string v9, "DynamicRead"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->DynamicRead:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    filled-new-array/range {v0 .. v8}, [Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->$VALUES:[Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->$VALUES:[Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-object v0
.end method
