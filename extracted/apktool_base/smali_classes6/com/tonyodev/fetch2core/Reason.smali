.class public final enum Lcom/tonyodev/fetch2core/Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/Reason$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2core/Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2core/Reason;

.field public static final Companion:Lcom/tonyodev/fetch2core/Reason$Companion;

.field public static final enum DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum NOT_SPECIFIED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

.field public static final enum REPORTING:Lcom/tonyodev/fetch2core/Reason;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/tonyodev/fetch2core/Reason;

    const-string v1, "NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->NOT_SPECIFIED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v1, Lcom/tonyodev/fetch2core/Reason;

    const-string v2, "DOWNLOAD_ADDED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v2, Lcom/tonyodev/fetch2core/Reason;

    const-string v3, "DOWNLOAD_QUEUED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v3, Lcom/tonyodev/fetch2core/Reason;

    const-string v4, "DOWNLOAD_STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v4, Lcom/tonyodev/fetch2core/Reason;

    const-string v5, "DOWNLOAD_WAITING_ON_NETWORK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    new-instance v5, Lcom/tonyodev/fetch2core/Reason;

    const-string v6, "DOWNLOAD_PROGRESS_CHANGED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v6, Lcom/tonyodev/fetch2core/Reason;

    const-string v7, "DOWNLOAD_COMPLETED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v7, Lcom/tonyodev/fetch2core/Reason;

    const-string v8, "DOWNLOAD_ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    new-instance v8, Lcom/tonyodev/fetch2core/Reason;

    const-string v9, "DOWNLOAD_PAUSED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v9, Lcom/tonyodev/fetch2core/Reason;

    const-string v10, "DOWNLOAD_RESUMED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v10, Lcom/tonyodev/fetch2core/Reason;

    const-string v11, "DOWNLOAD_CANCELLED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v11, Lcom/tonyodev/fetch2core/Reason;

    const-string v12, "DOWNLOAD_REMOVED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v12, Lcom/tonyodev/fetch2core/Reason;

    const-string v13, "DOWNLOAD_DELETED"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v13, Lcom/tonyodev/fetch2core/Reason;

    const-string v14, "DOWNLOAD_BLOCK_UPDATED"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v14, Lcom/tonyodev/fetch2core/Reason;

    const-string v15, "OBSERVER_ATTACHED"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v13}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    new-instance v15, Lcom/tonyodev/fetch2core/Reason;

    const-string v13, "REPORTING"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v14}, Lcom/tonyodev/fetch2core/Reason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/tonyodev/fetch2core/Reason;->REPORTING:Lcom/tonyodev/fetch2core/Reason;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/tonyodev/fetch2core/Reason;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->$VALUES:[Lcom/tonyodev/fetch2core/Reason;

    new-instance v0, Lcom/tonyodev/fetch2core/Reason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/Reason$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2core/Reason;->Companion:Lcom/tonyodev/fetch2core/Reason$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tonyodev/fetch2core/Reason;->value:I

    return-void
.end method

.method public static final valueOf(I)Lcom/tonyodev/fetch2core/Reason;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->Companion:Lcom/tonyodev/fetch2core/Reason$Companion;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2core/Reason$Companion;->valueOf(I)Lcom/tonyodev/fetch2core/Reason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Reason;
    .locals 1

    .line 2
    const-class v0, Lcom/tonyodev/fetch2core/Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2core/Reason;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2core/Reason;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->$VALUES:[Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v0}, [Lcom/tonyodev/fetch2core/Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2core/Reason;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/Reason;->value:I

    return v0
.end method
