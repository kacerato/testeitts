.class public final enum Lcom/tonyodev/fetch2/DownloadNotification$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/DownloadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2/DownloadNotification$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum CANCEL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum CANCEL_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum DELETE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum DELETE_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum PAUSE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum PAUSE_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum RESUME:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum RESUME_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum RETRY:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

.field public static final enum RETRY_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/DownloadNotification$ActionType;
    .locals 10

    sget-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->PAUSE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v1, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RESUME:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v2, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->CANCEL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v3, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->DELETE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v4, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RETRY:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v5, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->PAUSE_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v6, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RESUME_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v7, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->CANCEL_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v8, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->DELETE_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    sget-object v9, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RETRY_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    filled-new-array/range {v0 .. v9}, [Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->PAUSE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "RESUME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RESUME:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "CANCEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->CANCEL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->DELETE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "RETRY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RETRY:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "PAUSE_ALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->PAUSE_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "RESUME_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RESUME_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "CANCEL_ALL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->CANCEL_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "DELETE_ALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->DELETE_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    const-string v1, "RETRY_ALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RETRY_ALL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-static {}, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->$values()[Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->$VALUES:[Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->$ENTRIES:LCf/a;

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

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lcom/tonyodev/fetch2/DownloadNotification$ActionType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/DownloadNotification$ActionType;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/DownloadNotification$ActionType;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->$VALUES:[Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    return-object v0
.end method
