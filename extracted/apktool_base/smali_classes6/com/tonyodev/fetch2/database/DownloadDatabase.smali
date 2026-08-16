.class public abstract Lcom/tonyodev/fetch2/database/DownloadDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/tonyodev/fetch2/database/DownloadInfo;
    }
    exportSchema = false
    version = 0x7
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/tonyodev/fetch2/database/Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;
    }
.end annotation


# static fields
.field public static final COLUMN_AUTO_RETRY_ATTEMPTS:Ljava/lang/String; = "_auto_retry_attempts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_AUTO_RETRY_MAX_ATTEMPTS:Ljava/lang/String; = "_auto_retry_max_attempts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_CREATED:Ljava/lang/String; = "_created"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_DOWNLOADED:Ljava/lang/String; = "_written_bytes"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_DOWNLOAD_ON_ENQUEUE:Ljava/lang/String; = "_download_on_enqueue"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_ENQUEUE_ACTION:Ljava/lang/String; = "_enqueue_action"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_ERROR:Ljava/lang/String; = "_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_EXTRAS:Ljava/lang/String; = "_extras"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_FILE:Ljava/lang/String; = "_file"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_GROUP:Ljava/lang/String; = "_group"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_HEADERS:Ljava/lang/String; = "_headers"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_IDENTIFIER:Ljava/lang/String; = "_identifier"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_NAMESPACE:Ljava/lang/String; = "_namespace"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "_network_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_PRIORITY:Ljava/lang/String; = "_priority"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_STATUS:Ljava/lang/String; = "_status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_TAG:Ljava/lang/String; = "_tag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_TOTAL:Ljava/lang/String; = "_total_bytes"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_URL:Ljava/lang/String; = "_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATABASE_VERSION:I = 0x7

.field public static final OLD_DATABASE_VERSION:I = 0x6

.field public static final TABLE_NAME:Ljava/lang/String; = "requests"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/database/DownloadDatabase;->Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final getMigrations()[Lcom/tonyodev/fetch2/database/migration/Migration;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/database/DownloadDatabase;->Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;->getMigrations()[Lcom/tonyodev/fetch2/database/migration/Migration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final wasRowInserted(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
