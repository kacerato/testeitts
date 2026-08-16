.class public final Lcom/tonyodev/fetch2/util/FetchDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LLf/j;
    name = "FetchDefaults"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_RETRY_ATTEMPTS:I = 0x0

.field public static final DEFAULT_AUTO_START:Z = true

.field public static final DEFAULT_CONCURRENT_LIMIT:I = 0x1

.field public static final DEFAULT_CREATE_FILE_ON_ENQUEUE:Z = true

.field public static final DEFAULT_DOWNLOAD_ON_ENQUEUE:Z = true

.field public static final DEFAULT_DOWNLOAD_SPEED_REPORTING_INTERVAL_IN_MILLISECONDS:J = 0x3e8L

.field public static final DEFAULT_ENABLE_LISTENER_AUTOSTART_ON_ATTACHED:Z = false

.field public static final DEFAULT_ENABLE_LISTENER_NOTIFY_ON_ATTACHED:Z = false

.field public static final DEFAULT_ENABLE_LISTENER_NOTIFY_ON_REQUEST_UPDATED:Z = true

.field public static final DEFAULT_FILE_EXIST_CHECKS:Z = true

.field public static final DEFAULT_FILE_SLICE_NO_LIMIT_SET:I = -0x1

.field public static final DEFAULT_GLOBAL_AUTO_RETRY_ATTEMPTS:I = -0x1

.field public static final DEFAULT_GROUP_ID:I = 0x0

.field public static final DEFAULT_HASH_CHECK_ENABLED:Z = false

.field public static final DEFAULT_HAS_ACTIVE_DOWNLOADS_INTERVAL_IN_MILLISECONDS:J = 0x493e0L

.field public static final DEFAULT_INSTANCE_NAMESPACE:Ljava/lang/String; = "LibGlobalFetchLib"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_NOTIFICATION_TIMEOUT_AFTER:J = 0x2710L

.field public static final DEFAULT_NOTIFICATION_TIMEOUT_AFTER_RESET:J = 0x73df16000L

.field public static final DEFAULT_PREALLOCATE_FILE_ON_CREATE:Z = true

.field public static final DEFAULT_PRIORITY_QUEUE_INTERVAL_IN_MILLISECONDS:J = 0x1f4L

.field public static final DEFAULT_RETRY_ON_NETWORK_GAIN:Z = true

.field public static final DEFAULT_UNIQUE_IDENTIFIER:J = 0x0L

.field public static final EMPTY_JSON_OBJECT_STRING:Ljava/lang/String; = "{}"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultDownloader:Lcom/tonyodev/fetch2core/Downloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultEnqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultFileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultGlobalNetworkType:Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultLogger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultNetworkType:Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultNoError:Lcom/tonyodev/fetch2/Error;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultPriority:Lcom/tonyodev/fetch2/Priority;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultPrioritySort:Lcom/tonyodev/fetch2/PrioritySort;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultStatus:Lcom/tonyodev/fetch2/Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultGlobalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    sget-object v0, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPriority:Lcom/tonyodev/fetch2/Priority;

    sget-object v0, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNoError:Lcom/tonyodev/fetch2/Error;

    sget-object v0, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultStatus:Lcom/tonyodev/fetch2/Status;

    sget-object v0, Lcom/tonyodev/fetch2/PrioritySort;->ASC:Lcom/tonyodev/fetch2/PrioritySort;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPrioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultEnqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    new-instance v0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultDownloader:Lcom/tonyodev/fetch2core/Downloader;

    new-instance v0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;JILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultFileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    new-instance v0, Lcom/tonyodev/fetch2core/FetchLogger;

    const/4 v1, 0x0

    const-string v2, "fetch2"

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2core/FetchLogger;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultLogger:Lcom/tonyodev/fetch2core/Logger;

    return-void
.end method

.method public static final getDefaultDownloader()Lcom/tonyodev/fetch2core/Downloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultDownloader:Lcom/tonyodev/fetch2core/Downloader;

    return-object v0
.end method

.method public static final getDefaultEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultEnqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object v0
.end method

.method public static final getDefaultFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultFileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    return-object v0
.end method

.method public static final getDefaultGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultGlobalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public static final getDefaultLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultLogger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public static final getDefaultNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public static final getDefaultNoError()Lcom/tonyodev/fetch2/Error;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNoError:Lcom/tonyodev/fetch2/Error;

    return-object v0
.end method

.method public static final getDefaultPriority()Lcom/tonyodev/fetch2/Priority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPriority:Lcom/tonyodev/fetch2/Priority;

    return-object v0
.end method

.method public static final getDefaultPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPrioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    return-object v0
.end method

.method public static final getDefaultStatus()Lcom/tonyodev/fetch2/Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultStatus:Lcom/tonyodev/fetch2/Status;

    return-object v0
.end method
