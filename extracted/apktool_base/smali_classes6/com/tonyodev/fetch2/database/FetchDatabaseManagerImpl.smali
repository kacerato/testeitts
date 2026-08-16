.class public final Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/database/FetchDatabaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
        "Lcom/tonyodev/fetch2/database/DownloadInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchDatabaseManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchDatabaseManagerImpl.kt\ncom/tonyodev/fetch2/database/FetchDatabaseManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n1549#2:360\n1620#2,3:361\n766#2:364\n857#2,2:365\n766#2:367\n857#2,2:368\n766#2:370\n857#2:371\n1747#2,3:372\n858#2:375\n766#2:376\n857#2,2:377\n*S KotlinDebug\n*F\n+ 1 FetchDatabaseManagerImpl.kt\ncom/tonyodev/fetch2/database/FetchDatabaseManagerImpl\n*L\n54#1:360\n54#1:361,3\n160#1:364\n160#1:365,2\n169#1:367\n169#1:368,2\n185#1:370\n185#1:371\n186#1:372,3\n185#1:375\n207#1:376\n207#1:377,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchDatabaseManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchDatabaseManagerImpl.kt\ncom/tonyodev/fetch2/database/FetchDatabaseManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n1549#2:360\n1620#2,3:361\n766#2:364\n857#2,2:365\n766#2:367\n857#2,2:368\n766#2:370\n857#2:371\n1747#2,3:372\n858#2:375\n766#2:376\n857#2,2:377\n*S KotlinDebug\n*F\n+ 1 FetchDatabaseManagerImpl.kt\ncom/tonyodev/fetch2/database/FetchDatabaseManagerImpl\n*L\n54#1:360\n54#1:361,3\n160#1:364\n160#1:365,2\n169#1:367\n169#1:368,2\n185#1:370\n185#1:371\n186#1:372,3\n185#1:375\n207#1:376\n207#1:377,2\n*E\n"
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private final database:Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultStorageResolver:Lcom/tonyodev/fetch2core/DefaultStorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private delegate:Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fileExistChecksEnabled:Z

.field private final liveSettings:Lcom/tonyodev/fetch2/fetch/LiveSettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pendingCountIncludeAddedQuery:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pendingCountQuery:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updatedDownloadsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2core/Logger;[Lcom/tonyodev/fetch2/database/migration/Migration;Lcom/tonyodev/fetch2/fetch/LiveSettings;ZLcom/tonyodev/fetch2core/DefaultStorageResolver;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lcom/tonyodev/fetch2/database/migration/Migration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2/fetch/LiveSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2core/DefaultStorageResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveSettings"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultStorageResolver"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->namespace:Ljava/lang/String;

    iput-object p3, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-object p5, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->liveSettings:Lcom/tonyodev/fetch2/fetch/LiveSettings;

    iput-boolean p6, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->fileExistChecksEnabled:Z

    iput-object p7, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->defaultStorageResolver:Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".db"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-static {p1, p3, p2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    array-length p2, p4

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/room/migration/Migration;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/tonyodev/fetch2/database/DownloadDatabase;

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    sget-object p1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p2

    sget-object p3, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p3}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "SELECT _id FROM requests WHERE _status = \'"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' OR _status = \'"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "\'"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountQuery:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p1

    invoke-virtual {p3}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p3

    sget-object p5, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p5}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p5

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountIncludeAddedQuery:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$sanitize(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private final onCompleted(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final onDownloading(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    sget-object p2, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final onPaused(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->fileExistChecksEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->defaultStorageResolver:Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DefaultStorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;->deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    :cond_0
    return-void
.end method

.method private final sanitize(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Ljava/util/List;Z)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final sanitize(Ljava/util/List;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 4
    invoke-virtual {v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    sget-object v6, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v3, :cond_2

    const/4 v3, 0x2

    if-eq v5, v3, :cond_1

    const/4 v3, 0x3

    if-eq v5, v3, :cond_0

    const/4 v3, 0x4

    if-eq v5, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0, v4}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->onPaused(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0, v4, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->onDownloading(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, v4}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->onCompleted(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->update(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 10
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v0

    const-string v2, "Failed to update"

    invoke-interface {v0, v2, p2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->updatedDownloadsList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-lez p1, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public static synthetic sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Lcom/tonyodev/fetch2/database/DownloadInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize(Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private final throwExceptionIfClosed()V
    .locals 3

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->namespace:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " database is closed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v0

    const-string v1, "Database closed"

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->delete(Ljava/util/List;)V

    return-void
.end method

.method public deleteAll()V
    .locals 4

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->deleteAll()V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->namespace:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared Database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 5
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public get()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->get()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, v0, v3, v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object v0
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 8
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getAllGroupIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->getAllGroupIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getByGroup(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, v0, v3, v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 7
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public getByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 10
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 11
    invoke-static {p0, v0, v3, v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 15
    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->delegate:Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    return-object v0
.end method

.method public getDownloadsByRequestIdentifier(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tonyodev/fetch2/database/DownloadDao;->getDownloadsByRequestIdentifier(J)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tonyodev/fetch2/database/DownloadDao;->getByGroupWithStatus(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    if-ne v4, v5, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p1, v0

    :cond_4
    return-object p1
.end method

.method public getLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    return-object v0
.end method

.method public getPendingCount(Z)J
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountIncludeAddedQuery:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->pendingCountQuery:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v2, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v2, v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-wide v0, v2

    :catch_0
    return-wide v0
.end method

.method public getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/tonyodev/fetch2/PrioritySort;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/PrioritySort;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "prioritySort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    sget-object v0, Lcom/tonyodev/fetch2/PrioritySort;->ASC:Lcom/tonyodev/fetch2/PrioritySort;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object p1

    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object p1

    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadDao;->getPendingDownloadsSortedDesc(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Ljava/util/List;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 5
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lpf/H;->K(Ljava/util/Collection;)LVf/l;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lpf/g0;

    invoke-virtual {v3}, Lpf/g0;->nextInt()I

    move-result v3

    .line 9
    new-instance v4, Lnf/Z;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->wasRowInserted(J)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;
    .locals 4
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ")",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)J

    move-result-wide v0

    .line 3
    new-instance v2, Lnf/Z;

    iget-object v3, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v3, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->wasRowInserted(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->closed:Z

    return v0
.end method

.method public sanitizeOnFirstEntry()V
    .locals 2

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->liveSettings:Lcom/tonyodev/fetch2/fetch/LiveSettings;

    new-instance v1, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1;

    invoke-direct {v1, p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/fetch/LiveSettings;->execute(LMf/l;)V

    return-void
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->delegate:Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    return-void
.end method

.method public update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->update(Ljava/util/List;)V

    return-void
.end method

.method public updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .param p2    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Extras;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "UPDATE requests SET _extras = \'?\' WHERE _id = ?"

    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->requestDatabase:Lcom/tonyodev/fetch2/database/DownloadDatabase;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/DownloadDatabase;->requestDao()Lcom/tonyodev/fetch2/database/DownloadDao;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tonyodev/fetch2/database/DownloadDao;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->sanitize$default(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;Lcom/tonyodev/fetch2/database/DownloadInfo;ZILjava/lang/Object;)Z

    return-object p1
.end method

.method public updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 6
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "DatabaseManager exception"

    const-string v1, "downloadInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->throwExceptionIfClosed()V

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string v2, "UPDATE requests SET _written_bytes = ?, _total_bytes = ?, _status = ? WHERE _id = ?"

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, v4, v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
