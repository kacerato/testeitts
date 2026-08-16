.class public final Lcom/google/android/gms/measurement/internal/e;
.super Lcom/google/android/gms/measurement/internal/N6;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/Set;

.field public f:Ljava/util/Map;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/N6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    return-void
.end method


# virtual methods
.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .locals 29
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v10, p0

    const-string v11, "current_results"

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto :goto_0

    :cond_1
    move v1, v12

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b7;->a()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->G0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v14

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b7;->a()Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->F0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v15

    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v7, "data"

    const-string v6, "audience_id"

    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_1
    const-string v17, "event_filters"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/M1;->Q()Lcom/google/android/gms/internal/measurement/L1;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/L1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/M1;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/M1;->K()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_4
    move-object/from16 v12, v16

    :goto_3
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_2
    move-exception v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v12, v4

    goto :goto_a

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v12, v0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_6
    const/4 v5, 0x0

    goto :goto_9

    :goto_7
    const/4 v5, 0x0

    :goto_8
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_7

    goto :goto_5

    :goto_9
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :goto_a
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_7
    const-string v17, "audience_filter_values"

    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v13, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    :goto_b
    move-object/from16 v19, v7

    goto/16 :goto_11

    :cond_9
    :try_start_9
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    :goto_c
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s3;->M()Lcom/google/android/gms/internal/measurement/r3;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s3;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_d

    :catch_5
    move-exception v0

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v13

    move-object/from16 v17, v5

    const-string v5, "Failed to merge filter results. appId, audienceId, error"
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v18, v6

    :try_start_c
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v19, v7

    :try_start_d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v0, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v13, v17

    goto :goto_12

    :cond_a
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_b

    :goto_e
    move-object v5, v4

    goto/16 :goto_54

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_10

    :goto_f
    const/4 v5, 0x0

    goto/16 :goto_54

    :goto_10
    const/4 v4, 0x0

    :goto_11
    :try_start_e
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object v13, v0

    :goto_12
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    goto/16 :goto_2b

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1b

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v4}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_f
    const-string v6, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    filled-new-array {v4, v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v6, 0x1

    goto :goto_13

    :catchall_4
    move-exception v0

    goto/16 :goto_1f

    :catch_9
    move-exception v0

    goto :goto_17

    :goto_13
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-nez v6, :cond_d

    :goto_14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_18

    :cond_f
    :try_start_11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_15

    :catch_a
    move-exception v0

    goto :goto_16

    :goto_15
    const/4 v5, 0x0

    goto/16 :goto_1f

    :goto_16
    const/4 v5, 0x0

    :goto_17
    :try_start_12
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v5, :cond_10

    goto :goto_14

    :cond_10
    :goto_18
    invoke-static {v1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v13}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    move-object/from16 v22, v8

    goto/16 :goto_1e

    :cond_12
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/s3;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_13

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_13
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v22, v8

    goto/16 :goto_1d

    :cond_14
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v0

    move-object/from16 v17, v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s3;->G()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/h7;->R(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r3;->w()Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/r3;->v(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s3;->E()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/google/android/gms/measurement/internal/h7;->R(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r3;->u()Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/r3;->t(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r3;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s3;->I()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Lcom/google/android/gms/internal/measurement/Z2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/Z2;->F()I

    move-result v20

    move-object/from16 v22, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v7, v21

    move-object/from16 v8, v22

    goto :goto_1a

    :cond_16
    move-object/from16 v22, v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r3;->y()Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/r3;->x(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r3;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s3;->K()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/u3;->F()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r3;->A()Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/r3;->z(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s3;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v8, v22

    goto/16 :goto_19

    :cond_19
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto/16 :goto_19

    :goto_1d
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :goto_1e
    move-object v0, v1

    goto :goto_20

    :goto_1f
    if-eqz v5, :cond_1a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v0

    :cond_1b
    move-object/from16 v22, v8

    move-object v0, v13

    :goto_20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_21
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/s3;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->J()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_24

    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->I()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/Z2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/Z2;->E()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/Z2;->F()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/Z2;->G()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/Z2;->H()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_23

    :cond_1e
    const/4 v3, 0x0

    :goto_23
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_1f
    :goto_24
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->L()I

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    move-object/from16 v20, v0

    goto :goto_26

    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->K()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->E()Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->H()I

    move-result v17

    if-lez v17, :cond_22

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->F()I

    move-result v17

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->H()I

    move-result v17

    move-object/from16 v21, v2

    add-int/lit8 v2, v17, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/u3;->I(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    goto :goto_25

    :goto_26
    if-eqz v1, :cond_25

    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->F()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->E()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/h7;->P(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v17, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v8, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->G()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/h7;->P(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_28

    :cond_23
    move-object/from16 v17, v9

    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v17

    goto :goto_27

    :cond_25
    move-object/from16 v17, v9

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s3;

    if-eqz v15, :cond_2a

    if-eqz v14, :cond_2a

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2a

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    if-eqz v2, :cond_2a

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    if-nez v2, :cond_26

    goto :goto_2a

    :cond_26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/M1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/M1;->F()I

    move-result v3

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/M1;->N()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    div-long v23, v23, v25

    :cond_28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_2a
    :goto_2a
    new-instance v9, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    const/16 v21, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object v0, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    move-object/from16 p1, v13

    move-object/from16 v13, v17

    move/from16 v17, v14

    move-object v14, v9

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;[B)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    move/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v0, v20

    move-object/from16 v18, v27

    move-object/from16 v13, p1

    goto/16 :goto_21

    :cond_2b
    move-object v13, v9

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v12, v22

    :goto_2b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_2d

    :cond_2c
    move-object/from16 v24, v11

    move-object/from16 v11, v27

    goto/16 :goto_3b

    :cond_2d
    new-instance v2, Lcom/google/android/gms/measurement/internal/w7;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/w7;-><init>(Lcom/google/android/gms/measurement/internal/e;[B)V

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/w7;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b3;)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v6

    if-eqz v6, :cond_39

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v9, v0, v14}, Lcom/google/android/gms/measurement/internal/w;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/w;->y0(Lcom/google/android/gms/measurement/internal/E;)V

    if-nez p6, :cond_39

    iget-wide v14, v8, Lcom/google/android/gms/measurement/internal/E;->c:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_33

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v9}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 p1, v2

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_13
    const-string v17, "event_filters"
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-object/from16 v11, v27

    move-object/from16 v5, v28

    :try_start_14
    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=? AND event_name=?"

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v20
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-wide/from16 v25, v14

    :try_start_15
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    :goto_2d
    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/M1;->Q()Lcom/google/android/gms/internal/measurement/L1;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/L1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/M1;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    const/4 v15, 0x0

    :try_start_18
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-nez v16, :cond_2e

    move-object/from16 v28, v5

    :try_start_19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :catchall_6
    move-exception v0

    goto :goto_30

    :catch_b
    move-exception v0

    goto :goto_31

    :cond_2e
    move-object/from16 v28, v5

    move-object/from16 v5, v16

    :goto_2e
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :catch_c
    move-exception v0

    move-object/from16 v28, v5

    goto :goto_31

    :catch_d
    move-exception v0

    move-object/from16 v28, v5

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v13, v15, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2f
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-nez v0, :cond_2f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_35

    :cond_2f
    move-object/from16 v5, v28

    goto :goto_2d

    :cond_30
    move-object/from16 v28, v5

    :try_start_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_35

    :goto_30
    move-object v5, v14

    goto :goto_36

    :goto_31
    move-object v5, v14

    goto :goto_34

    :catchall_7
    move-exception v0

    goto :goto_32

    :catch_e
    move-exception v0

    move-object/from16 v28, v5

    goto :goto_33

    :catch_f
    move-exception v0

    move-object/from16 v28, v5

    move-wide/from16 v25, v14

    goto :goto_33

    :goto_32
    const/4 v5, 0x0

    goto :goto_36

    :catch_10
    move-exception v0

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-wide/from16 v25, v14

    move-object/from16 v11, v27

    :goto_33
    const/4 v5, 0x0

    :goto_34
    :try_start_1b
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v12, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    if-eqz v5, :cond_31

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_31
    :goto_35
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :catchall_8
    move-exception v0

    :goto_36
    if-eqz v5, :cond_32

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_32
    throw v0

    :cond_33
    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-wide/from16 v25, v14

    move-object/from16 v11, v27

    :goto_37
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_38

    :cond_34
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x1

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/M1;

    new-instance v15, Lcom/google/android/gms/measurement/internal/b;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-direct {v15, v10, v14, v5, v9}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/M1;)V

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/M1;->F()I

    move-result v9

    invoke-virtual {v10, v5, v9}, Lcom/google/android/gms/measurement/internal/e;->o(II)Z

    move-result v21

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v23, v2

    move-object v2, v15

    move-object v15, v9

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-wide/from16 v18, v25

    move-object/from16 v20, v8

    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/measurement/internal/b;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/b3;JLcom/google/android/gms/measurement/internal/E;Z)Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-virtual {v10, v3}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/v7;->a(Lcom/google/android/gms/measurement/internal/c;)V

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_39

    :cond_35
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_36
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    :goto_3a
    if-nez v9, :cond_37

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto/16 :goto_38

    :cond_38
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v27, v11

    move-object/from16 v11, v24

    const/4 v3, 0x0

    goto/16 :goto_2c

    :cond_39
    move-object/from16 v24, v11

    goto/16 :goto_2c

    :goto_3b
    if-nez p6, :cond_4e

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_50

    :cond_3a
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_40

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v7}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    :try_start_1c
    const-string v14, "property_filters"
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_15
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    move-object/from16 v9, v28

    :try_start_1d
    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "app_id=? AND property_name=?"

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_14
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :try_start_1e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    :goto_3d
    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/U1;->M()Lcom/google/android/gms/internal/measurement/T1;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/T1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/U1;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_11
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    const/4 v15, 0x0

    :try_start_20
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_3b

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :catchall_9
    move-exception v0

    goto :goto_41

    :catch_11
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_44

    :cond_3b
    move-object/from16 v15, v16

    :goto_3e
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p1, v3

    goto :goto_3f

    :catch_12
    move-exception v0

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v14

    const-string v15, "Failed to merge filter"
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_11
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move-object/from16 p1, v3

    :try_start_21
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v15, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3f
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_13
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    if-nez v0, :cond_3c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_45

    :cond_3c
    move-object/from16 v3, p1

    goto :goto_3d

    :catch_13
    move-exception v0

    goto :goto_44

    :cond_3d
    move-object/from16 p1, v3

    :try_start_22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_40
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_45

    :goto_41
    move-object v5, v13

    goto :goto_46

    :catchall_a
    move-exception v0

    goto :goto_42

    :catch_14
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_43

    :goto_42
    const/4 v5, 0x0

    goto :goto_46

    :catch_15
    move-exception v0

    move-object/from16 p1, v3

    move-object/from16 v9, v28

    :goto_43
    const/4 v13, 0x0

    :goto_44
    :try_start_23
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v12, v6, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    if-eqz v13, :cond_3e

    goto :goto_40

    :cond_3e
    :goto_45
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :goto_46
    if-eqz v5, :cond_3f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0

    :cond_40
    move-object/from16 p1, v3

    move-object/from16 v9, v28

    :goto_47
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    move-object/from16 v3, p1

    move-object/from16 v28, v9

    goto/16 :goto_3c

    :cond_42
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x1

    :goto_49
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/U1;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_44

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v15

    if-eqz v15, :cond_43

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p2, v0

    goto :goto_4a

    :cond_43
    move-object/from16 p2, v0

    const/4 v15, 0x0

    :goto_4a
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v0

    move-object/from16 v16, v1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Evaluating filter. audience, filter, property"

    invoke-virtual {v14, v1, v5, v15, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/h7;->M(Lcom/google/android/gms/internal/measurement/U1;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "Filter definition"

    invoke-virtual {v0, v14, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4b

    :cond_44
    move-object/from16 p2, v0

    move-object/from16 v16, v1

    :goto_4b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_45

    goto :goto_4c

    :cond_45
    new-instance v0, Lcom/google/android/gms/measurement/internal/d;

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-direct {v0, v10, v1, v6, v8}, Lcom/google/android/gms/measurement/internal/d;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/U1;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v8

    invoke-virtual {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/e;->o(II)Z

    move-result v8

    invoke-virtual {v0, v1, v13, v4, v8}, Lcom/google/android/gms/measurement/internal/d;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/E3;Z)Z

    move-result v13

    if-eqz v13, :cond_46

    invoke-virtual {v10, v5}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v7;->a(Lcom/google/android/gms/measurement/internal/c;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    goto/16 :goto_49

    :cond_46
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_47
    :goto_4c
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4d

    :cond_48
    const/4 v6, 0x0

    :goto_4d
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid property filter ID. appId, id"

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4f

    :cond_49
    move-object/from16 p2, v0

    move-object/from16 v16, v1

    :goto_4e
    if-nez v13, :cond_4a

    :goto_4f
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4a
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    goto/16 :goto_48

    :cond_4b
    :goto_50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/v7;

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/v7;->b(I)Lcom/google/android/gms/internal/measurement/P2;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/P2;->G()Lcom/google/android/gms/internal/measurement/s3;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v5}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v7, v24

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_17

    const/4 v8, 0x5

    const/4 v9, 0x0

    :try_start_25
    invoke-virtual {v0, v3, v9, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v0, v12, v14

    if-nez v0, :cond_4c

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_25} :catch_16

    :cond_4c
    :goto_52
    move-object/from16 v24, v7

    goto :goto_51

    :catch_16
    move-exception v0

    goto :goto_53

    :catch_17
    move-exception v0

    const/4 v9, 0x0

    :goto_53
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_52

    :cond_4d
    return-object v1

    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :goto_54
    if-eqz v5, :cond_4f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v0
.end method

.method public final n(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/v7;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/v7;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final o(II)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/v7;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v7;->c()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method
