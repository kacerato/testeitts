.class public final Lcom/google/android/gms/measurement/internal/s2;
.super Lcom/google/android/gms/measurement/internal/h2;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/String;


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/q2;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "app_version_int"

    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    const-string v2, "app_version"

    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/s2;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/h2;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/q2;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/q2;-><init>(Lcom/google/android/gms/measurement/internal/s2;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s2;->c:Lcom/google/android/gms/measurement/internal/q2;

    return-void
.end method

.method public static synthetic y()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/s2;->e:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s2;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/I;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/J;->a(Lcom/google/android/gms/measurement/internal/I;Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->p()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/s2;->z(I[B)Z

    move-result p1

    return p1
.end method

.method public final q(Lcom/google/android/gms/measurement/internal/i7;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/j7;->a(Lcom/google/android/gms/measurement/internal/i7;Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->p()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/s2;->z(I[B)Z

    move-result p1

    return p1
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/i;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/m7;->T(Landroid/os/Parcelable;)[B

    move-result-object p1

    array-length v1, p1

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->p()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/s2;->z(I[B)Z

    move-result p1

    return p1
.end method

.method public final s(Lcom/google/android/gms/measurement/internal/G;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/m7;->T(Landroid/os/Parcelable;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->p()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Null default event parameters; not writing to database"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    array-length v2, p1

    const/high16 v3, 0x20000

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->p()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Default event parameters too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/s2;->z(I[B)Z

    move-result p1

    return p1
.end method

.method public final t(I)Ljava/util/List;
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    const-string v3, "entry"

    const-string v4, "type"

    const-string v5, "rowid"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/s2;->x()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v8, 0x5

    const/4 v9, 0x0

    move v11, v8

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_17

    const/4 v12, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/s2;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    if-nez v15, :cond_1

    :try_start_1
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    return-object v6

    :catchall_0
    move-exception v0

    move-object v12, v15

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    move-object v12, v15

    goto/16 :goto_1c

    :catch_1
    move-object v12, v15

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    move-object v12, v15

    goto/16 :goto_1e

    :cond_1
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v14, "messages"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v20, "rowid desc"

    const-string v21, "1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v15

    move-object/from16 p1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    :try_start_3
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v22, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v12, p1

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    goto/16 :goto_1c

    :catch_4
    move-object/from16 v12, p1

    goto/16 :goto_1d

    :catch_5
    move-exception v0

    move-object/from16 v12, p1

    goto/16 :goto_1e

    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    goto/16 :goto_19

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-wide/from16 v14, v22

    :goto_1
    cmp-long v0, v14, v22

    if-eqz v0, :cond_3

    const-string v0, "rowid<?"

    new-array v13, v12, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    move-object/from16 v16, v0

    move-object/from16 v17, v13

    goto :goto_2

    :cond_3
    move-object/from16 v16, v6

    move-object/from16 v17, v16

    :goto_2
    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v13

    const/4 v6, 0x2

    if-eqz v13, :cond_4

    new-array v0, v8, [Ljava/lang/String;

    aput-object v5, v0, v9

    aput-object v4, v0, v12

    aput-object v3, v0, v6

    const-string v13, "app_version"

    const/16 v18, 0x3

    aput-object v13, v0, v18

    const-string v13, "app_version_int"

    const/16 v18, 0x4

    aput-object v13, v0, v18

    :cond_4
    const-string v18, "messages"

    const-string v20, "rowid asc"

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v24, 0x0

    move-object/from16 v13, p1

    move-object v8, v14

    move-object/from16 v14, v18

    move-object/from16 v25, v15

    move-object v15, v0

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_c

    :try_start_7
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v15

    const/4 v6, 0x0

    invoke-virtual {v15, v6, v8}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v15
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-eqz v15, :cond_5

    const/4 v6, 0x3

    :try_start_8
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x4

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v6, v15

    :goto_4
    move-wide/from16 v26, v17

    move-object/from16 v17, v13

    move-wide/from16 v12, v26

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v17, v13

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v17, v13

    goto/16 :goto_15

    :catch_7
    move-object/from16 v12, p1

    move-object/from16 v17, v13

    goto/16 :goto_16

    :catch_8
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v17, v13

    goto/16 :goto_17

    :cond_5
    const-wide/16 v17, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :goto_5
    if-nez v0, :cond_7

    :try_start_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    array-length v0, v14

    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/I;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/I;
    :try_end_a
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_6

    new-instance v14, Lcom/google/android/gms/measurement/internal/r2;

    invoke-direct {v14, v0, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/r2;-><init>(LI0/a;Ljava/lang/String;J)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_6
    :goto_6
    const/4 v6, 0x3

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    :goto_7
    move-object/from16 v12, p1

    goto/16 :goto_14

    :catch_9
    move-exception v0

    :goto_8
    move-object/from16 v12, p1

    goto/16 :goto_15

    :catch_a
    :goto_9
    move-object/from16 v12, p1

    goto/16 :goto_16

    :catch_b
    move-exception v0

    :goto_a
    move-object/from16 v12, p1

    goto/16 :goto_17

    :catchall_5
    move-exception v0

    goto :goto_b

    :catch_c
    :try_start_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v6, "Failed to load event from local database"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    goto :goto_6

    :goto_b
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_7
    const/4 v15, 0x1

    if-ne v0, v15, :cond_8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    array-length v0, v14

    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/i7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/i7;
    :try_end_e
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_d

    :catch_d
    :try_start_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v14, "Failed to load user property from local database"

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_6

    new-instance v14, Lcom/google/android/gms/measurement/internal/r2;

    invoke-direct {v14, v0, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/r2;-><init>(LI0/a;Ljava/lang/String;J)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :goto_d
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_8
    const/4 v15, 0x2

    if-ne v0, v15, :cond_9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    array-length v0, v14

    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/i;
    :try_end_12
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_e

    :catchall_7
    move-exception v0

    goto :goto_f

    :catch_e
    :try_start_14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v14, "Failed to load conditional user property from local database"

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_6

    new-instance v14, Lcom/google/android/gms/measurement/internal/r2;

    invoke-direct {v14, v0, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/r2;-><init>(LI0/a;Ljava/lang/String;J)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :goto_f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_9
    const/4 v15, 0x4

    if-ne v0, v15, :cond_a

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    array-length v0, v14

    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/G;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/G;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_10

    :catchall_8
    move-exception v0

    goto :goto_11

    :catch_f
    :try_start_18
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v14, "Failed to load default event parameters from local database"

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_6

    new-instance v14, Lcom/google/android/gms/measurement/internal/r2;

    invoke-direct {v14, v0, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/r2;-><init>(LI0/a;Ljava/lang/String;J)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :goto_11
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_a
    const/4 v6, 0x3

    if-ne v0, v6, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v12, "Skipping app launch break"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :goto_12
    move-object/from16 v13, v17

    const/4 v6, 0x2

    const/4 v12, 0x1

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    move-object/from16 v17, v13

    goto/16 :goto_7

    :catch_10
    move-exception v0

    move-object/from16 v17, v13

    goto/16 :goto_8

    :catch_11
    move-object/from16 v17, v13

    goto/16 :goto_9

    :catch_12
    move-exception v0

    move-object/from16 v17, v13

    goto/16 :goto_a

    :cond_c
    move-object/from16 v17, v13

    const-string v0, "messages"

    const-string v6, "rowid <= ?"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object/from16 v12, p1

    :try_start_1a
    invoke-virtual {v12, v0, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v6, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_13

    :catchall_a
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    goto :goto_17

    :cond_d
    :goto_13
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_13
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v7

    :goto_14
    move-object/from16 v6, v17

    goto/16 :goto_26

    :goto_15
    move-object v15, v12

    move-object/from16 v13, v17

    goto :goto_20

    :catch_15
    :goto_16
    move v6, v10

    move-object v15, v12

    move-object/from16 v13, v17

    goto/16 :goto_23

    :goto_17
    move v6, v10

    move-object/from16 v13, v17

    goto/16 :goto_24

    :catchall_b
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_18

    :catchall_c
    move-exception v0

    move-object v12, v15

    :goto_18
    const/4 v13, 0x0

    :goto_19
    if-eqz v13, :cond_e

    :try_start_1b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1a

    :catchall_d
    move-exception v0

    goto :goto_1b

    :catch_16
    move-exception v0

    goto :goto_1c

    :catch_17
    move-exception v0

    goto :goto_1e

    :cond_e
    :goto_1a
    throw v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_16
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :goto_1b
    const/4 v6, 0x0

    goto/16 :goto_26

    :goto_1c
    move-object v15, v12

    const/4 v13, 0x0

    goto :goto_20

    :catch_18
    :goto_1d
    move v6, v10

    move-object v15, v12

    const/4 v13, 0x0

    goto :goto_23

    :goto_1e
    move v6, v10

    :goto_1f
    const/4 v13, 0x0

    goto :goto_24

    :catchall_e
    move-exception v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto/16 :goto_26

    :catch_19
    move-exception v0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_20
    if-eqz v15, :cond_f

    :try_start_1c
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_21

    :catchall_f
    move-exception v0

    goto :goto_22

    :cond_f
    :goto_21
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_11
    move v6, v10

    goto :goto_25

    :goto_22
    move-object v6, v13

    move-object v12, v15

    goto :goto_26

    :catch_1a
    move v6, v10

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_23
    int-to-long v9, v11

    :try_start_1d
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    add-int/lit8 v11, v11, 0x14

    if-eqz v13, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_25

    :catch_1b
    move-exception v0

    move v6, v10

    const/4 v12, 0x0

    goto :goto_1f

    :goto_24
    :try_start_1e
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    if-eqz v13, :cond_13

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_14
    :goto_25
    add-int/lit8 v10, v6, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    goto/16 :goto_0

    :catchall_10
    move-exception v0

    move-object v6, v13

    :goto_26
    if-eqz v6, :cond_15

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_16
    throw v0

    :cond_17
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_18
    return-object v7
.end method

.method public final u()Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/s2;->z(I[B)Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s2;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s2;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return v6

    :goto_1
    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :catch_2
    int-to-long v6, v4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_5
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_4
    throw v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_6
    :goto_6
    return v2
.end method

.method public final w()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s2;->c:Lcom/google/android/gms/measurement/internal/q2;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q2;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final x()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const-string v0, "google_app_measurement_local.db"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final z(I[B)Z
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->L()Lcom/google/android/gms/measurement/internal/p2;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/p2;->o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "entry"

    move-object/from16 v8, p2

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    const-string v4, "app_version"

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/o7;->d:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/o7;->k:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "app_version_int"

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/4 v4, 0x5

    move v7, v2

    move v8, v4

    :goto_1
    if-ge v7, v4, :cond_e

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/s2;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v10, :cond_3

    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    :goto_2
    return v2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :cond_4
    :goto_3
    const-wide/32 v14, 0x186a0

    cmp-long v0, v12, v14

    const-string v14, "messages"

    if-ltz v0, :cond_5

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v15, "Data loss, local db full"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    const-wide/32 v15, 0x186a1

    sub-long/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v12, v15

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "Different delete count than expected in local db. expected, received, difference"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v4, v2, v9, v12}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v10, v14, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 v2, 0x1

    return v2

    :goto_4
    move-object v5, v11

    goto/16 :goto_c

    :goto_5
    move-object v11, v5

    goto :goto_7

    :catch_4
    move-object v11, v5

    goto :goto_8

    :goto_6
    move-object v11, v5

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v10, v5

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v10, v5

    move-object v11, v10

    :goto_7
    if-eqz v10, :cond_7

    :try_start_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v10, :cond_b

    goto :goto_9

    :catch_6
    move-object v10, v5

    move-object v11, v10

    :catch_7
    :goto_8
    int-to-long v12, v8

    :try_start_5
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v8, v8, 0x14

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v10, :cond_b

    :goto_9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v10, v5

    move-object v11, v10

    :goto_a
    :try_start_6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v10, :cond_b

    goto :goto_9

    :cond_b
    :goto_b
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_1

    :goto_c
    if-eqz v5, :cond_c

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_d
    throw v0

    :cond_e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method
