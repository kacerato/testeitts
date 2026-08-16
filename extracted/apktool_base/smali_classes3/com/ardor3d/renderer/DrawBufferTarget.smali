.class public final enum Lcom/ardor3d/renderer/DrawBufferTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/DrawBufferTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Aux0:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Aux1:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Aux2:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Aux3:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Back:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum BackLeft:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum BackRight:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Front:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum FrontAndBack:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum FrontLeft:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum FrontRight:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Left:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum None:Lcom/ardor3d/renderer/DrawBufferTarget;

.field public static final enum Right:Lcom/ardor3d/renderer/DrawBufferTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/DrawBufferTarget;->None:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v1, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v2, "FrontLeft"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/DrawBufferTarget;->FrontLeft:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v2, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v3, "FrontRight"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/DrawBufferTarget;->FrontRight:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v3, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v4, "BackLeft"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/renderer/DrawBufferTarget;->BackLeft:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v4, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v5, "BackRight"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/renderer/DrawBufferTarget;->BackRight:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v5, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v6, "Front"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/renderer/DrawBufferTarget;->Front:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v6, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v7, "Back"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/renderer/DrawBufferTarget;->Back:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v7, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v8, "Left"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/renderer/DrawBufferTarget;->Left:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v8, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v9, "Right"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ardor3d/renderer/DrawBufferTarget;->Right:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v9, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v10, "FrontAndBack"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ardor3d/renderer/DrawBufferTarget;->FrontAndBack:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v10, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v11, "Aux0"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ardor3d/renderer/DrawBufferTarget;->Aux0:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v11, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v12, "Aux1"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ardor3d/renderer/DrawBufferTarget;->Aux1:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v12, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v13, "Aux2"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ardor3d/renderer/DrawBufferTarget;->Aux2:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v13, Lcom/ardor3d/renderer/DrawBufferTarget;

    const-string v14, "Aux3"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/ardor3d/renderer/DrawBufferTarget;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ardor3d/renderer/DrawBufferTarget;->Aux3:Lcom/ardor3d/renderer/DrawBufferTarget;

    filled-new-array/range {v0 .. v13}, [Lcom/ardor3d/renderer/DrawBufferTarget;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/DrawBufferTarget;->$VALUES:[Lcom/ardor3d/renderer/DrawBufferTarget;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/DrawBufferTarget;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/DrawBufferTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/DrawBufferTarget;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/DrawBufferTarget;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/DrawBufferTarget;->$VALUES:[Lcom/ardor3d/renderer/DrawBufferTarget;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/DrawBufferTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/DrawBufferTarget;

    return-object v0
.end method
