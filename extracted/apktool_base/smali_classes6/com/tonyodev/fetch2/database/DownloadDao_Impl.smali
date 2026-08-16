.class public final Lcom/tonyodev/fetch2/database/DownloadDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/database/DownloadDao;


# instance fields
.field private final __converter:Lcom/tonyodev/fetch2/database/Converter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tonyodev/fetch2/database/Converter;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/database/Converter;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$1;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$2;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$3;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/database/DownloadDao_Impl$4;-><init>(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static bridge synthetic a(Lcom/tonyodev/fetch2/database/DownloadDao_Impl;)Lcom/tonyodev/fetch2/database/Converter;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__deletionAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 10
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    throw p1
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 81
    const-string v0, "SELECT * FROM requests WHERE _id = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 82
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 83
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 84
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 86
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 87
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 88
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 89
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 90
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 91
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 92
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 93
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 94
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 95
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 96
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 97
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 98
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 99
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 100
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 101
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 102
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 103
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 104
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v23, v3

    .line 106
    new-instance v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    .line 107
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 108
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 109
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 111
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 113
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 115
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 116
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 117
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 118
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 119
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 120
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 122
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 123
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 124
    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 125
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 126
    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 127
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 128
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    .line 129
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 130
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 131
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    .line 132
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 133
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 134
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    .line 135
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 136
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 137
    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v0, v17

    .line 138
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    :goto_0
    invoke-virtual {v3, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 141
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 142
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 143
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    .line 144
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 145
    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v0, v20

    .line 146
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 147
    :goto_1
    invoke-virtual {v3, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v0, v21

    .line 148
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 150
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 151
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 152
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v0, v23

    .line 153
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 154
    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 155
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 157
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 159
    throw v0
.end method

.method public get()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-string v0, "SELECT * FROM requests"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 4
    :try_start_0
    const-string v0, "_id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 5
    const-string v6, "_namespace"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 6
    const-string v7, "_url"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 7
    const-string v8, "_file"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 8
    const-string v9, "_group"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 9
    const-string v10, "_priority"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 10
    const-string v11, "_headers"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 11
    const-string v12, "_written_bytes"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 12
    const-string v13, "_total_bytes"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 13
    const-string v14, "_status"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 14
    const-string v15, "_error"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 15
    const-string v2, "_network_type"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 16
    const-string v4, "_created"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 17
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 18
    const-string v3, "_enqueue_action"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 19
    const-string v3, "_identifier"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 20
    const-string v3, "_download_on_enqueue"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 21
    const-string v3, "_extras"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 22
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 23
    const-string v3, "_auto_retry_attempts"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    new-instance v4, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    .line 27
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 28
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 29
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 31
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 33
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 35
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 36
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 37
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    .line 38
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 39
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 40
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 42
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v6

    move v3, v7

    .line 43
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 44
    invoke-virtual {v4, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 45
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 46
    invoke-virtual {v4, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 47
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 48
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v6

    .line 49
    invoke-virtual {v4, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 50
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 51
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v6

    .line 52
    invoke-virtual {v4, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 53
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 54
    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v6

    .line 55
    invoke-virtual {v4, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v7, v2

    move/from16 v6, v24

    move/from16 v24, v3

    .line 56
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 57
    invoke-virtual {v4, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 58
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    :goto_1
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 61
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 62
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 63
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 64
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 65
    invoke-virtual {v4, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 66
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 67
    :goto_2
    invoke-virtual {v4, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 68
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 69
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 71
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 72
    invoke-virtual {v4, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 73
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 74
    invoke-virtual {v4, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 75
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v7

    move/from16 v7, v24

    move/from16 v24, v6

    move/from16 v6, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    .line 76
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 78
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 80
    throw v0
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

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

    move-object/from16 v1, p0

    .line 160
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string v2, "SELECT * FROM requests WHERE _id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 163
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 164
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 167
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    .line 168
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v4, v3

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 170
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 172
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 173
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 174
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 175
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 176
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 177
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 178
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 179
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 180
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 181
    const-string v3, "_error"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 182
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 183
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 184
    :try_start_1
    const-string v2, "_tag"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 185
    const-string v2, "_enqueue_action"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 186
    const-string v2, "_identifier"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    .line 187
    const-string v2, "_download_on_enqueue"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    .line 188
    const-string v2, "_extras"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 189
    const-string v2, "_auto_retry_max_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    .line 190
    const-string v2, "_auto_retry_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v2

    .line 194
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 195
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 196
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 198
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 200
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 202
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 203
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 204
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v26, v0

    .line 205
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 206
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 207
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 209
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v2, v8

    .line 210
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 211
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 212
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 213
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 214
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 215
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 216
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 217
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 218
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 219
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 220
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 221
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 222
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    .line 223
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 224
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 225
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 226
    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 228
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 229
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 230
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 231
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 232
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 233
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 234
    :goto_3
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 235
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 236
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 237
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 238
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 240
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 241
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 242
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move-object v2, v0

    move/from16 v0, v26

    move/from16 v27, v21

    move/from16 v21, v3

    move v3, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v27

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v2

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 245
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 247
    throw v0
.end method

.method public getAllGroupIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT _group from requests"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM requests WHERE _file = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v23, v3

    new-instance v3, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v7, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getByGroup(I)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM requests WHERE _group = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getByGroupWithStatus(ILjava/util/List;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "group",
            "statuses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SELECT * FROM requests WHERE _group = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND _status IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tonyodev/fetch2/Status;

    iget-object v6, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v6, v5}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v4, v3

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "_error"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "_tag"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "_enqueue_action"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "_identifier"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "_download_on_enqueue"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "_extras"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "_auto_retry_max_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "_auto_retry_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v2, v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move-object v2, v0

    move/from16 v0, v26

    move/from16 v27, v21

    move/from16 v21, v3

    move v3, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v27

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

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

    move-object/from16 v1, p0

    .line 1
    const-string v0, "SELECT * FROM requests WHERE _status = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    int-to-long v4, v0

    .line 3
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 5
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 6
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 7
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 8
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 9
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 10
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 11
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 12
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 13
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 14
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 15
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 16
    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 17
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 18
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 19
    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 20
    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 21
    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 22
    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    .line 23
    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 24
    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    .line 25
    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 28
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    .line 29
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 30
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 31
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 33
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 35
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 37
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 38
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 39
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    .line 40
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 41
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 42
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 44
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    .line 45
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 46
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 47
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 48
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 49
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 50
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 51
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 52
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 53
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 54
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 55
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 56
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 57
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    .line 58
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 59
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 60
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 63
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 64
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 65
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 66
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 67
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 68
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 69
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 70
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 71
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 72
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 73
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 74
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 75
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 76
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 80
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 82
    throw v0
.end method

.method public getByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statuses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 83
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v2, "SELECT * FROM requests WHERE _status IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 86
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 87
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 90
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tonyodev/fetch2/Status;

    .line 91
    iget-object v6, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v6, v5}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v5

    int-to-long v5, v5

    .line 92
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v4, v3

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 94
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 96
    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 97
    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 98
    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 99
    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 100
    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 101
    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 102
    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 103
    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 104
    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 105
    const-string v3, "_error"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 106
    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 107
    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 108
    :try_start_1
    const-string v2, "_tag"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 109
    const-string v2, "_enqueue_action"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 110
    const-string v2, "_identifier"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    .line 111
    const-string v2, "_download_on_enqueue"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    .line 112
    const-string v2, "_extras"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 113
    const-string v2, "_auto_retry_max_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    .line 114
    const-string v2, "_auto_retry_attempts"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v2

    .line 118
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 119
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 120
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 122
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 124
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 126
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 127
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 128
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v26, v0

    .line 129
    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    .line 130
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 131
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 133
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v2, v8

    .line 134
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 135
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 136
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 137
    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 138
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 139
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    .line 140
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 141
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 142
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    .line 143
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 144
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 145
    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    .line 146
    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    .line 147
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 148
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    .line 149
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 150
    :cond_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    .line 152
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    .line 153
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    .line 154
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    .line 155
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 156
    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    .line 157
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 158
    :goto_3
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    .line 159
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .line 160
    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    .line 161
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    .line 162
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 163
    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 164
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 165
    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move-object v2, v0

    move/from16 v0, v26

    move/from16 v27, v21

    move/from16 v21, v3

    move v3, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v27

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v2

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 169
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 171
    throw v0
.end method

.method public getDownloadsByRequestIdentifier(J)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "identifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM requests WHERE _identifier = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

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

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM requests WHERE _tag = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getPendingDownloadsSorted(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

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

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM requests WHERE _status = ? ORDER BY _priority DESC, _created ASC"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getPendingDownloadsSortedDesc(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

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

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM requests WHERE _status = ? ORDER BY _priority DESC, _created DESC"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/Converter;->toStatusValue(Lcom/tonyodev/fetch2/Status;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "_namespace"

    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_url"

    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "_file"

    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "_group"

    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_priority"

    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "_headers"

    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "_written_bytes"

    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "_total_bytes"

    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_status"

    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "_error"

    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "_network_type"

    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "_created"

    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "_tag"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "_enqueue_action"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "_identifier"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "_download_on_enqueue"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "_extras"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "_auto_retry_max_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "_auto_retry_attempts"

    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v24, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    move-object/from16 v25, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v26, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2/database/Converter;->fromPriorityValue(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    move v0, v7

    move v3, v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromStatusValue(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromErrorValue(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/database/Converter;->fromNetworkTypeValue(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move v8, v2

    move/from16 v7, v24

    move/from16 v24, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move/from16 v2, v17

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move/from16 v17, v0

    move/from16 v3, v18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v18, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromEnqueueActionValue(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move/from16 v0, v19

    move/from16 v19, v3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move/from16 v20, v0

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__converter:Lcom/tonyodev/fetch2/database/Converter;

    invoke-virtual {v2, v0}, Lcom/tonyodev/fetch2/database/Converter;->fromExtrasJsonToExtras(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v2

    move v2, v8

    move/from16 v8, v24

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object v3, v0

    move/from16 v0, v26

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__insertionAdapterOfDownloadInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    throw p1
.end method

.method public update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "download"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__updateAdapterOfDownloadInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 10
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    throw p1
.end method
