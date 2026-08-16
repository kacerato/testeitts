.class public final Lcom/google/android/gms/measurement/internal/w;
.super Lcom/google/android/gms/measurement/internal/N6;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/String;

.field public static final o:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;


# instance fields
.field public final d:Lcom/google/android/gms/measurement/internal/v;

.field public final e:Lcom/google/android/gms/measurement/internal/B6;


# direct methods
.method static constructor <clinit>()V
    .locals 95

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->f:[Ljava/lang/String;

    const-string v0, "last_upload_timestamp"

    const-string v1, "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"

    const-string v2, "associated_row_id"

    const-string v3, "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->g:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->h:[Ljava/lang/String;

    const-string v93, "gmp_version_for_remote_config"

    const-string v94, "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;"

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    const-string v53, "config_last_modified_time"

    const-string v54, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    const-string v55, "e_tag"

    const-string v56, "ALTER TABLE apps ADD COLUMN e_tag TEXT;"

    const-string v57, "session_stitching_token"

    const-string v58, "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"

    const-string v59, "sgtm_upload_enabled"

    const-string v60, "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;"

    const-string v61, "target_os_version"

    const-string v62, "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;"

    const-string v63, "session_stitching_token_hash"

    const-string v64, "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;"

    const-string v65, "ad_services_version"

    const-string v66, "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;"

    const-string v67, "unmatched_first_open_without_ad_id"

    const-string v68, "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;"

    const-string v69, "npa_metadata_value"

    const-string v70, "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;"

    const-string v71, "attribution_eligibility_status"

    const-string v72, "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"

    const-string v73, "sgtm_preview_key"

    const-string v74, "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;"

    const-string v75, "dma_consent_state"

    const-string v76, "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;"

    const-string v77, "daily_realtime_dcu_count"

    const-string v78, "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;"

    const-string v79, "bundle_delivery_index"

    const-string v80, "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;"

    const-string v81, "serialized_npa_metadata"

    const-string v82, "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;"

    const-string v83, "unmatched_pfo"

    const-string v84, "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;"

    const-string v85, "unmatched_uwa"

    const-string v86, "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;"

    const-string v87, "ad_campaign_info"

    const-string v88, "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;"

    const-string v89, "daily_registered_triggers_count"

    const-string v90, "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"

    const-string v91, "client_upload_eligibility"

    const-string v92, "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;"

    filled-new-array/range {v1 .. v94}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->i:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->j:[Ljava/lang/String;

    const-string v0, "retry_count"

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    const-string v2, "has_realtime"

    const-string v3, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->k:[Ljava/lang/String;

    const-string v0, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    const-string v1, "session_scoped"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->l:[Ljava/lang/String;

    const-string v0, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->m:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->n:[Ljava/lang/String;

    const-string v5, "storage_consent_at_bundling"

    const-string v6, "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"

    const-string v1, "consent_source"

    const-string v2, "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;"

    const-string v3, "dma_consent_settings"

    const-string v4, "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->o:[Ljava/lang/String;

    const-string v0, "idempotent"

    const-string v1, "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/N6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/B6;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/B6;-><init>(LT0/g;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w;->e:Lcom/google/android/gms/measurement/internal/B6;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    new-instance p1, Lcom/google/android/gms/measurement/internal/v;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/v;-><init>(Lcom/google/android/gms/measurement/internal/w;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w;->d:Lcom/google/android/gms/measurement/internal/v;

    return-void
.end method

.method public static final V(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ", "

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, " AND (upload_type IN (%s))"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic j0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic k0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic l0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic m0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic n0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic o0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic p0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/w;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public static final s0(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p1, "value"

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()J
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "select max(timestamp) from raw_events"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "events_snapshot"

    new-instance v0, Ljava/util/ArrayList;

    const-string v4, "lifetime_count"

    const-string v5, "name"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "events"

    const-string v5, "_f"

    invoke-virtual {v1, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/w;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v6

    const-string v7, "_v"

    invoke-virtual {v1, v4, v2, v7}, Lcom/google/android/gms/measurement/internal/w;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v8

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/w;->S(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "events_snapshot"

    new-array v13, v10, [Ljava/lang/String;

    invoke-interface {v0, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    const-string v14, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_0

    :goto_0
    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    goto/16 :goto_8

    :cond_0
    if-eqz v8, :cond_8

    :goto_1
    invoke-virtual {v1, v4, v8}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    goto/16 :goto_8

    :cond_1
    move v11, v10

    move v12, v11

    :cond_2
    :try_start_1
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-ltz v14, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move v11, v13

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v12, v13

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/w;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    goto :goto_7

    :goto_4
    move v10, v11

    goto :goto_9

    :goto_5
    move v10, v11

    goto :goto_6

    :catchall_1
    move-exception v0

    move v12, v10

    goto :goto_9

    :catch_1
    move-exception v0

    move v12, v10

    :goto_6
    :try_start_2
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v7, "Error querying snapshot. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v7, v11, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v11, v10

    :goto_7
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    if-nez v11, :cond_7

    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    if-nez v12, :cond_8

    if-eqz v8, :cond_8

    goto :goto_1

    :cond_8
    :goto_8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/w;->S(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_9
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    if-nez v10, :cond_b

    if-nez v6, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    goto :goto_b

    :cond_b
    :goto_a
    if-nez v12, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {v1, v4, v8}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    :cond_c
    :goto_b
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/w;->S(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final B()Z
    .locals 4

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error deleting user property. appId"

    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "select count(1) from raw_events where app_id = ? and name = ?"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final C0(Lcom/google/android/gms/measurement/internal/k7;)Z
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/k7;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/m7;->r0(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->W:Lcom/google/android/gms/measurement/internal/d2;

    const/16 v7, 0x19

    const/16 v8, 0x64

    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/m;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;II)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const-string v2, "_npa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/k7;->b:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const-wide/16 v6, 0x19

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    return v3

    :cond_2
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/k7;->b:Ljava/lang/String;

    const-string v4, "origin"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/k7;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "set_timestamp"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    const-string v3, "value"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/w;->s0(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to insert/update user property (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/k7;->a:Ljava/lang/String;

    const-string v2, "Error storing user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final D()Z
    .locals 4

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user_attributes"

    const-string v3, "set_timestamp"

    const-string v4, "value"

    const-string v5, "origin"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/w;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/google/android/gms/measurement/internal/k7;

    move-object v3, v2

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Got multiple records for user property, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Error querying user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v5, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_4
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public final E(Ljava/util/List;)V
    .locals 4

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rowid in ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "raw_events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Deleted fewer rows from raw events table than expected"

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final E0(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "1000"

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user_attributes"

    const-string v3, "name"

    const-string v4, "origin"

    const-string v5, "set_timestamp"

    const-string v6, "value"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const-string v8, "rowid"

    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v4, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_0
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x3

    invoke-virtual {p0, v10, v1}, Lcom/google/android/gms/measurement/internal/w;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Read invalid user property value, ignoring it. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/k7;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_3

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Error querying user properties. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :goto_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final F(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to remove unused event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "1001"

    const-string v3, "*"

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v13, 0x3

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v15, p1

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_id=?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    move-object/from16 v14, p2

    :try_start_1
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and origin=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object/from16 v14, p2

    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v10, 0x1

    if-nez v6, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, " and name glob ?"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user_attributes"

    const-string v6, "name"

    const-string v8, "set_timestamp"

    const-string v9, "value"

    const-string v10, "origin"

    filled-new-array {v6, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "rowid"

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v8, v17

    move-object/from16 v21, v9

    move-object/from16 v9, v18

    const/4 v12, 0x1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_9

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/w;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v20

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v20, :cond_4

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "(2)Read invalid user property value, ignoring it"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_4
    new-instance v5, Lcom/google/android/gms/measurement/internal/k7;

    move-object v14, v5

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v5, :cond_5

    goto :goto_9

    :cond_5
    move-object/from16 v15, p1

    move-object v14, v4

    goto :goto_1

    :goto_3
    move-object v12, v3

    move-object v14, v4

    goto :goto_8

    :goto_4
    move-object v12, v3

    goto :goto_8

    :goto_5
    move-object v12, v3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_7

    :goto_6
    const/4 v12, 0x0

    goto :goto_a

    :goto_7
    const/4 v12, 0x0

    :goto_8
    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "(2)Error querying user properties"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v14, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v12

    :goto_9
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2

    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public final G(Ljava/lang/String;)J
    .locals 3

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final G0(Lcom/google/android/gms/measurement/internal/i;)Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v1

    if-nez v1, :cond_1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    const-string v3, "origin"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/w;->s0(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/i;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    const-string v3, "trigger_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/i;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/i;->h:Lcom/google/android/gms/measurement/internal/I;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/m7;->T(Landroid/os/Parcelable;)[B

    move-result-object v3

    const-string v4, "timed_out_event"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/i;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/m7;->T(Landroid/os/Parcelable;)[B

    move-result-object v3

    const-string v4, "triggered_event"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/i7;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "triggered_timestamp"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/i;->k:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "time_to_live"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/m7;->T(Landroid/os/Parcelable;)[B

    move-result-object p1

    const-string v3, "expired_event"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v1, "Failed to insert/update conditional user property (got -1)"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Error storing conditional user property"

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final H(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/b3;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object p5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v3, p5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving complex main event, appId, data size"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "children_to_process"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    invoke-virtual {v1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "main_event_params"

    const/4 p5, 0x0

    const/4 v2, 0x5

    invoke-virtual {p3, p4, p5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    const-wide/16 v1, -0x1

    cmp-long p3, p3, v1

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string p4, "Failed to insert complex main event (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :goto_0
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p4

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "Error storing complex main event. appId"

    invoke-virtual {p4, p5, p1, p3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final H0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i;
    .locals 26
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "conditional_properties"

    const-string v12, "origin"

    const-string v13, "value"

    const-string v14, "active"

    const-string v15, "trigger_event_name"

    const-string v16, "trigger_timeout"

    const-string v17, "timed_out_event"

    const-string v18, "creation_timestamp"

    const-string v19, "triggered_event"

    const-string v20, "triggered_timestamp"

    const-string v21, "time_to_live"

    const-string v22, "expired_event"

    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "app_id=? and name=?"

    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object v13, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/w;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    move/from16 v17, v2

    goto :goto_1

    :cond_2
    move/from16 v17, v0

    :goto_1
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/I;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/h7;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/gms/measurement/internal/I;

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/h7;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/gms/measurement/internal/I;

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/h7;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/google/android/gms/measurement/internal/I;

    new-instance v14, Lcom/google/android/gms/measurement/internal/i7;

    move-object v2, v14

    move-object/from16 v3, p2

    move-wide v4, v11

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    move-object v11, v0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v25}, Lcom/google/android/gms/measurement/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/i7;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/I;JLcom/google/android/gms/measurement/internal/I;JLcom/google/android/gms/measurement/internal/I;)V

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Got multiple records for conditional property, expected one"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_2
    move-object v9, v10

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v10, v9

    :goto_3
    :try_start_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Error querying conditional property"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :goto_5
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public final I(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select parameters from default_event_params where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v2, "Default event parameters not found"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->O()Lcom/google/android/gms/internal/measurement/a3;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/b3;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b3;->E()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/h7;->q(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_1
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Failed to retrieve default event parameters. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_0
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_1
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Error selecting default event parameters"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method public final I0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conditional_properties"

    const-string v2, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error deleting conditional property"

    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final J(Ljava/lang/String;J)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v3, v4}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, p1, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Error checking backfill conditions"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/w;->K0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final K(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    invoke-static/range {p4 .. p4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/u;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/android/gms/measurement/internal/u;-><init>(Lcom/google/android/gms/measurement/internal/w;Ljava/lang/String;J)V

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/measurement/internal/u;-><init>(Lcom/google/android/gms/measurement/internal/w;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/u;->a()Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/measurement/internal/t;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v2, v15, Lcom/google/android/gms/measurement/internal/t;->b:J

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    const-string v17, "raw_events_metadata"

    const-string v0, "metadata"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id = ? and metadata_fingerprint = ?"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v0}, [Ljava/lang/String;

    move-result-object v20

    const-string v23, "rowid"

    const-string v24, "2"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Raw event metadata record is missing. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->j0()Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/n3;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "Get multiple raw event metadata records, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_6
    move-object v4, v3

    goto :goto_b

    :goto_7
    move-object v4, v2

    goto :goto_a

    :catch_2
    move-exception v0

    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v5, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_8
    move-object v4, v2

    goto :goto_c

    :goto_9
    move-object v3, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v3, v4

    :goto_a
    :try_start_6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_b
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n3;->m2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_3

    :cond_6
    move-object/from16 v11, p3

    goto :goto_d

    :goto_c
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :goto_d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/t;->d:Lcom/google/android/gms/internal/measurement/b3;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->E()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->M()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->N()D

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_e

    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->K()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->L()F

    move-result v5

    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_e

    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->I()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_e

    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->G()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_b
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->O()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f3;->O()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/h7;->Y(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_e

    :cond_c
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v8, "Unexpected parameter type for parameter"

    invoke-virtual {v6, v8, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    const-string v2, "_o"

    invoke-virtual {v7, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/C2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_e

    const-string v4, ""

    :cond_e
    move-object v6, v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/C2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/C2;->d:Landroid/os/Bundle;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/C2;->a:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v5

    const-string v6, "_cmp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v4, p4

    move-object v7, v4

    goto :goto_10

    :cond_f
    new-instance v4, Landroid/os/Bundle;

    move-object/from16 v7, p4

    invoke-direct {v4, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {p4 .. p4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 p2, v6

    const-string v6, "gad_"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v6, p2

    goto :goto_f

    :cond_11
    :goto_10
    invoke-virtual {v5, v10, v4}, Lcom/google/android/gms/measurement/internal/m7;->w(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/C2;->b:Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/measurement/internal/D;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v16

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->L()J

    move-result-wide v18

    move-object v2, v8

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p1

    move-object/from16 p2, v8

    move-wide/from16 v7, v16

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-wide/from16 v9, v18

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/D;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-wide v2, v15, Lcom/google/android/gms/measurement/internal/t;->a:J

    iget-wide v4, v15, Lcom/google/android/gms/measurement/internal/t;->b:J

    iget-boolean v6, v15, Lcom/google/android/gms/measurement/internal/t;->c:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p2

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/D;->a:Ljava/lang/String;

    invoke-static {v8}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/h7;->J(Lcom/google/android/gms/measurement/internal/D;)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/D;->b:Ljava/lang/String;

    const-string v11, "name"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/D;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "timestamp"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "metadata_fingerprint"

    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "data"

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "realtime"

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "raw_events"

    const-string v5, "rowid = ?"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v9, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "Failed to update raw event. appId, updatedRows"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/D;->a:Ljava/lang/String;

    const-string v4, "Error updating raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/u;->a()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_13
    return-void
.end method

.method public final K0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 28

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "1001"

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const-string v12, "app_id"

    const-string v13, "origin"

    const-string v14, "name"

    const-string v15, "value"

    const-string v16, "active"

    const-string v17, "trigger_event_name"

    const-string v18, "trigger_timeout"

    const-string v19, "timed_out_event"

    const-string v20, "creation_timestamp"

    const-string v21, "triggered_event"

    const-string v22, "triggered_timestamp"

    const-string v23, "time_to_live"

    const-string v24, "expired_event"

    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "rowid"

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_1

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Read more than the max allowed conditional properties, ignoring extra"

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x3

    invoke-virtual {v1, v11, v4}, Lcom/google/android/gms/measurement/internal/w;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    const/4 v4, 0x4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v19, v3

    goto :goto_0

    :cond_2
    move/from16 v19, v2

    :goto_0
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/I;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/h7;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/gms/measurement/internal/I;

    const/16 v3, 0x8

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/h7;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/gms/measurement/internal/I;

    const/16 v3, 0xa

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v3, 0xb

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/h7;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/google/android/gms/measurement/internal/I;

    new-instance v16, Lcom/google/android/gms/measurement/internal/i7;

    move-object/from16 v4, v16

    move-wide v6, v9

    move-object v9, v15

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/i;

    move-object v13, v2

    invoke-direct/range {v13 .. v27}, Lcom/google/android/gms/measurement/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/i7;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/I;JLcom/google/android/gms/measurement/internal/I;JLcom/google/android/gms/measurement/internal/I;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :goto_3
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public final L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;
    .locals 4

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "select consent_state, consent_source from consent_settings where app_id=? limit 1;"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "No data found"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    move-object v1, p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Error querying database."

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_3
    if-nez v1, :cond_2

    sget-object p1, Lcom/google/android/gms/measurement/internal/Z3;->c:Lcom/google/android/gms/measurement/internal/Z3;

    return-object p1

    :cond_2
    return-object v1

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;
    .locals 51
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "apps"

    const-string v6, "app_instance_id"

    const-string v7, "gmp_app_id"

    const-string v8, "resettable_device_id_hash"

    const-string v9, "last_bundle_index"

    const-string v10, "last_bundle_start_timestamp"

    const-string v11, "last_bundle_end_timestamp"

    const-string v12, "app_version"

    const-string v13, "app_store"

    const-string v14, "gmp_version"

    const-string v15, "dev_cert_hash"

    const-string v16, "measurement_enabled"

    const-string v17, "day"

    const-string v18, "daily_public_events_count"

    const-string v19, "daily_events_count"

    const-string v20, "daily_conversions_count"

    const-string v21, "config_fetched_time"

    const-string v22, "failed_config_fetch_time"

    const-string v23, "app_version_int"

    const-string v24, "firebase_instance_id"

    const-string v25, "daily_error_events_count"

    const-string v26, "daily_realtime_events_count"

    const-string v27, "health_monitor_sample"

    const-string v28, "android_id"

    const-string v29, "adid_reporting_enabled"

    const-string v30, "admob_app_id"

    const-string v31, "dynamite_version"

    const-string v32, "safelisted_events"

    const-string v33, "ga_app_id"

    const-string v34, "session_stitching_token"

    const-string v35, "sgtm_upload_enabled"

    const-string v36, "target_os_version"

    const-string v37, "session_stitching_token_hash"

    const-string v38, "ad_services_version"

    const-string v39, "unmatched_first_open_without_ad_id"

    const-string v40, "npa_metadata_value"

    const-string v41, "attribution_eligibility_status"

    const-string v42, "sgtm_preview_key"

    const-string v43, "dma_consent_state"

    const-string v44, "daily_realtime_dcu_count"

    const-string v45, "bundle_delivery_index"

    const-string v46, "serialized_npa_metadata"

    const-string v47, "unmatched_pfo"

    const-string v48, "unmatched_uwa"

    const-string v49, "ad_campaign_info"

    const-string v50, "client_upload_eligibility"

    filled-new-array/range {v6 .. v50}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/I2;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->f0()Lcom/google/android/gms/measurement/internal/p3;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Lcom/google/android/gms/measurement/internal/I2;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->q0(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    :goto_0
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->s0(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->w0(Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->f(J)V

    const/4 v9, 0x4

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->A0(J)V

    const/4 v9, 0x5

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->C0(J)V

    const/4 v9, 0x6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->E0(Ljava/lang/String;)V

    const/4 v9, 0x7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->I0(Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->K0(J)V

    const/16 v9, 0x9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->a(J)V

    const/16 v9, 0xa

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->e(Z)V

    const/16 v9, 0xb

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->o(J)V

    const/16 v9, 0xc

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->q(J)V

    const/16 v9, 0xd

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->s(J)V

    const/16 v9, 0xe

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->u(J)V

    const/16 v9, 0xf

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->i(J)V

    const/16 v9, 0x10

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->k(J)V

    const/16 v9, 0x11

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const-wide/32 v9, -0x80000000

    goto :goto_2

    :cond_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    :goto_2
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->G0(J)V

    const/16 v9, 0x12

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->y0(Ljava/lang/String;)V

    const/16 v9, 0x13

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->y(J)V

    const/16 v9, 0x14

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->w(J)V

    const/16 v9, 0x15

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->O(Ljava/lang/String;)V

    const/16 v9, 0x17

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    move v9, v6

    goto :goto_3

    :cond_7
    move v9, v8

    :goto_3
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->Q(Z)V

    const/16 v9, 0x19

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_8
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :goto_4
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->c(J)V

    const/16 v9, 0x1a

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/I2;->U(Ljava/util/List;)V

    :cond_9
    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x1c

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/I2;->u0(Ljava/lang/String;)V

    :cond_a
    const/16 v5, 0x1d

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    goto :goto_5

    :cond_b
    move v5, v8

    :goto_5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/I2;->W(Z)V

    const/16 v5, 0x27

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->F(J)V

    const/16 v5, 0x24

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/I2;->m0(Ljava/lang/String;)V

    const/16 v5, 0x1e

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->Y(J)V

    const/16 v5, 0x1f

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->a0(J)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/e2;->Q0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v7, v2, v9}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x20

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/I2;->c0(I)V

    const/16 v7, 0x23

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->k0(J)V

    :cond_c
    const/16 v7, 0x21

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_d

    move v7, v6

    goto :goto_6

    :cond_d
    move v7, v8

    :goto_6
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/I2;->e0(Z)V

    const/16 v7, 0x22

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_e

    move-object v6, v3

    goto :goto_7

    :cond_e
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_f

    move v8, v6

    :cond_f
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_7
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->S(Ljava/lang/Boolean;)V

    const/16 v6, 0x25

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->C(I)V

    const/16 v6, 0x26

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->E(I)V

    const/16 v6, 0x28

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v6, ""

    goto :goto_8

    :cond_10
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->H(Ljava/lang/String;)V

    const/16 v6, 0x29

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->g0(Ljava/lang/Long;)V

    :cond_11
    const/16 v6, 0x2a

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->i0(Ljava/lang/Long;)V

    :cond_12
    const/16 v6, 0x2b

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->J([B)V

    const/16 v6, 0x2c

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/I2;->L(I)V

    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->n0()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Got multiple records for app, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_14
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_9
    move-object v3, v4

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_a
    :try_start_2
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_b
    if-eqz v4, :cond_15

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v3

    :goto_c
    if-eqz v3, :cond_16

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0
.end method

.method public final M(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1
.end method

.method public final M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p3, "apps"

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_instance_id"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object p2

    sget-object v4, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object p2

    const-string v2, "gmp_app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->v0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "resettable_device_id_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_index"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->z0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_start_timestamp"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->B0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_end_timestamp"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->H0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_store"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->J0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "gmp_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->L0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "dev_cert_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "measurement_enabled"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "day"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->p()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_public_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->r()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->t()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_conversions_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "config_fetched_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "failed_config_fetch_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "app_version_int"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "firebase_instance_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->x()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_error_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->v()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_realtime_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->z()Ljava/lang/String;

    move-result-object v2

    const-string v4, "health_monitor_sample"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "android_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->P()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "adid_reporting_enabled"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "dynamite_version"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->t0()Ljava/lang/String;

    move-result-object p2

    const-string v2, "session_stitching_token"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->V()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "sgtm_upload_enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->X()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "target_os_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->Z()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "session_stitching_token_hash"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->Q0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->b0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "ad_services_version"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->j0()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "attribution_eligibility_status"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->d0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "unmatched_first_open_without_ad_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->R()Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "npa_metadata_value"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->G()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "bundle_delivery_index"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "sgtm_preview_key"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->B()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "dma_consent_state"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->D()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "daily_realtime_dcu_count"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->I()Ljava/lang/String;

    move-result-object v2

    const-string v6, "serialized_npa_metadata"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "client_upload_eligibility"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->T()Ljava/util/List;

    move-result-object v2

    const-string v6, "safelisted_events"

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v7, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v2, v7, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v7, ","

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Y6;->a()Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/measurement/internal/e2;->L0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->f0()Ljava/lang/Long;

    move-result-object v2

    const-string v6, "unmatched_pfo"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->h0()Ljava/lang/Long;

    move-result-object v2

    const-string v6, "unmatched_uwa"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->K()[B

    move-result-object p1

    const-string v2, "ad_campaign_info"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "app_id = ?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, p3, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, v4

    if-nez v2, :cond_8

    const/4 v2, 0x5

    invoke-virtual {p1, p3, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_8

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Failed to insert/update app (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_8
    return-void

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Error storing app. appId"

    invoke-virtual {p2, v0, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final N(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p3

    :goto_1
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1
.end method

.method public final N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/measurement/internal/w;->O0(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    return-object v0
.end method

.method public final O(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string p1, ""

    return-object p1

    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v1, "Database error"

    invoke-virtual {p3, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1
.end method

.method public final O0(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-static/range {p3 .. p3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/s;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/internal/s;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v5, "apps"

    const-string v13, "day"

    const-string v14, "daily_events_count"

    const-string v15, "daily_public_events_count"

    const-string v16, "daily_conversions_count"

    const-string v17, "daily_error_events_count"

    const-string v18, "daily_realtime_events_count"

    const-string v19, "daily_realtime_dcu_count"

    const-string v20, "daily_registered_triggers_count"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id=?"

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "Not updating daily counts, app is not known. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->b:J

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->a:J

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->c:J

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->d:J

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->e:J

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->f:J

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->g:J

    :cond_1
    if-eqz p6, :cond_2

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->b:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->b:J

    :cond_2
    if-eqz p7, :cond_3

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->a:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->a:J

    :cond_3
    if-eqz p8, :cond_4

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->c:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->c:J

    :cond_4
    if-eqz p9, :cond_5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->d:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->d:J

    :cond_5
    if-eqz p10, :cond_6

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->e:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->e:J

    :cond_6
    if-eqz p11, :cond_7

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->f:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->f:J

    :cond_7
    if-eqz p12, :cond_8

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->g:J

    add-long v4, v4, p4

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/s;->g:J

    :cond_8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "day"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_public_events_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_events_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_conversions_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_error_events_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_realtime_events_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_realtime_dcu_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "daily_registered_triggers_count"

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/s;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v12, v5, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Error updating daily counts. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v2

    :goto_2
    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p1, "app_id"

    const-string p2, "consent_settings"

    const-string v0, " = ?"

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->q()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v0, "Value of the primary key is not set."

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-virtual {v1, p2, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v0, "Failed to insert/update table (got -1). key"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing into table. key"

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final P0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/r;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "remote_config"

    const-string v4, "config_last_modified_time"

    const-string v5, "e_tag"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v5, Lcom/google/android/gms/measurement/internal/r;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/r;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v5

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_4
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;
    .locals 29
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p3 .. p3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Ljava/util/ArrayList;

    const-string v9, "last_exempt_from_sampling"

    const-string v10, "current_session_count"

    const-string v2, "lifetime_count"

    const-string v3, "current_bundle_count"

    const-string v4, "last_fire_timestamp"

    const-string v5, "last_bundled_timestamp"

    const-string v6, "last_bundled_day"

    const-string v7, "last_sampled_complex_event_id"

    const-string v8, "last_sampling_rate"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const-string v6, "app_id=? and name=?"

    filled-new-array/range {p2 .. p3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    move-wide/from16 v23, v6

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide/from16 v23, v4

    :goto_0
    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v25, v2

    goto :goto_1

    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v25, v4

    :goto_1
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v26, v2

    goto :goto_2

    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v26, v4

    :goto_2
    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v27, v2

    goto :goto_3

    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v27, v4

    :goto_3
    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v8, 0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    move v11, v0

    :cond_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_6
    move-object/from16 v28, v2

    :goto_4
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-wide/from16 v19, v6

    goto :goto_5

    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide/from16 v19, v4

    :goto_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/E;

    move-object v12, v0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v12 .. v28}, Lcom/google/android/gms/measurement/internal/E;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Got multiple records for event aggregates, expected one. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_6
    move-object v2, v3

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v3, v2

    :goto_7
    :try_start_2
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Error querying events. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v4

    move-object/from16 v8, p3

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v2

    :goto_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public final Q0(Lcom/google/android/gms/internal/measurement/n3;Z)Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->t2()Z

    move-result v0

    invoke-static {v0}, LG0/A;->x(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->u()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->u2()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    move-result-wide v5

    sub-long v5, v1, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->u2()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->u2()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/h7;->V([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Saving bundle, size"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->u2()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "bundle_end_timestamp"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "has_realtime"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->F0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->G0()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "retry_count"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "queue"

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-nez p2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "Failed to insert bundle (got -1). appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method public final R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/E;->a:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/E;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/E;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lifetime_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/E;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "current_bundle_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/E;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_fire_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/E;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundled_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "last_bundled_day"

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/E;->h:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "last_sampled_complex_event_id"

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/E;->i:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "last_sampling_rate"

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/E;->j:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/E;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "current_session_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/E;->k:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "last_exempt_from_sampling"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, p1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Failed to insert/update event aggregates (got -1). appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/E;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Error storing event aggregates. appId"

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_id=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Error deleting snapshot. appId"

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final T(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/f7;
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p6

    move/from16 v2, p8

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Upload uri is null or empty. Destination is unknown. Dropping batch. "

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v4

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->L()Lcom/google/android/gms/internal/measurement/i3;

    move-result-object v3

    move-object/from16 v5, p4

    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/i3;

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/measurement/internal/k5;->a(I)Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/google/android/gms/measurement/internal/k5;->zze:Lcom/google/android/gms/measurement/internal/k5;

    if-eq v5, v6, :cond_2

    if-lez v2, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/i3;->t()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/m3;->B0(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/n3;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/i3;->z()Lcom/google/android/gms/internal/measurement/i3;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/i3;->y(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/i3;

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_5

    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_5

    aget-object v10, v0, v9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    const-string v11, "="

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    array-length v13, v11

    if-eq v13, v12, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v7, "Invalid upload header: "

    invoke-virtual {v0, v7, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    aget-object v10, v11, v8

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/e7;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/e7;-><init>()V

    move-wide/from16 v7, p2

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/e7;->b(J)Lcom/google/android/gms/measurement/internal/e7;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/e7;->c(Lcom/google/android/gms/internal/measurement/l3;)Lcom/google/android/gms/measurement/internal/e7;

    move-object/from16 v3, p5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/e7;->d(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/e7;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/e7;->e(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/e7;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/e7;->f(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/e7;

    move-wide/from16 v5, p9

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/e7;->g(J)Lcom/google/android/gms/measurement/internal/e7;

    move-wide/from16 v5, p11

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/e7;->h(J)Lcom/google/android/gms/measurement/internal/e7;

    move-wide/from16 v5, p13

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/e7;->i(J)Lcom/google/android/gms/measurement/internal/e7;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/e7;->j(I)Lcom/google/android/gms/measurement/internal/e7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e7;->a()Lcom/google/android/gms/measurement/internal/f7;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Failed to queued MeasurementBatch from upload_queue. appId"

    move-object v5, p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final U()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v4, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k5;->N1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->T:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    filled-new-array {v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "(upload_type = %d AND ABS(creation_timestamp - %d) > %d)"

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k5;->N1()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(upload_type != %d AND ABS(creation_timestamp - %d) > %d)"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final W(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/C6;)Z
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->w0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    iget-wide v7, p2, Lcom/google/android/gms/measurement/internal/C6;->c:J

    cmp-long v5, v7, v5

    if-ltz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v7, v5

    if-lez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "Storing trigger URI outside of the max retention time span. appId, now, timestamp"

    invoke-virtual {v3, v6, v5, v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Saving trigger URI"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/C6;->b:Ljava/lang/String;

    const-string v3, "trigger_uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p2, Lcom/google/android/gms/measurement/internal/C6;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "source"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "timestamp_millis"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "trigger_uris"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Failed to insert trigger URI (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing trigger URI. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final X(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V
    .locals 3

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/Z3;->l()Ljava/lang/String;

    move-result-object p1

    const-string v2, "consent_state"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/Z3;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "consent_source"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "consent_settings"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/w;->P(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final Y(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;
    .locals 2

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/w;->O(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/A;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/A;)V
    .locals 2

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/w;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/Z3;->c:Lcom/google/android/gms/measurement/internal/Z3;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/w;->X(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/A;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dma_consent_settings"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consent_settings"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/w;->P(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final a0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V
    .locals 2

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/w;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/w;->X(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "storage_consent_at_bundling"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/Z3;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consent_settings"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/w;->P(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;
    .locals 2

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "select storage_consent_at_bundling from consent_settings where app_id=? limit 1;"

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/w;->O(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object p1

    return-object p1
.end method

.method public final c0(Ljava/lang/String;Ljava/util/List;)V
    .locals 23
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v5, "event_filters"

    const-string v6, "property_filters"

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/K1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/J1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/J1;->w()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/J1;->w()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/J1;->x(I)Lcom/google/android/gms/internal/measurement/M1;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/L1;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m5;->o()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/L1;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/L1;->t()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/a4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/L1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/L1;

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    :goto_2
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/L1;->v()I

    move-result v14

    if-ge v15, v14, :cond_2

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/measurement/L1;->w(I)Lcom/google/android/gms/internal/measurement/O1;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/O1;->L()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v11

    sget-object v11, Lcom/google/android/gms/measurement/internal/b4;->a:[Ljava/lang/String;

    move-object/from16 v18, v4

    sget-object v4, Lcom/google/android/gms/measurement/internal/b4;->b:[Ljava/lang/String;

    invoke-static {v7, v11, v4}, Lcom/google/android/gms/measurement/internal/l5;->c(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/N1;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/N1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/N1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/O1;

    invoke-virtual {v12, v15, v4}, Lcom/google/android/gms/internal/measurement/L1;->x(ILcom/google/android/gms/internal/measurement/O1;)Lcom/google/android/gms/internal/measurement/L1;

    const/4 v13, 0x1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v17

    move-object/from16 v4, v18

    goto :goto_3

    :cond_2
    move-object/from16 v18, v4

    if-eqz v13, :cond_3

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/internal/measurement/J1;->y(ILcom/google/android/gms/internal/measurement/L1;)Lcom/google/android/gms/internal/measurement/J1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/K1;

    invoke-interface {v3, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v18

    goto :goto_1

    :cond_4
    move-object/from16 v18, v4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/J1;->t()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/J1;->t()I

    move-result v7

    if-ge v4, v7, :cond_6

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/J1;->u(I)Lcom/google/android/gms/internal/measurement/U1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/U1;->G()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/c4;->a:[Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/c4;->b:[Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/l5;->c(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/T1;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/T1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/T1;

    invoke-virtual {v9, v4, v7}, Lcom/google/android/gms/internal/measurement/J1;->v(ILcom/google/android/gms/internal/measurement/T1;)Lcom/google/android/gms/internal/measurement/J1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/K1;

    invoke-interface {v3, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v18

    goto/16 :goto_0

    :cond_7
    move-object/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/K1;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/K1;->E()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v8, "Audience with no ID. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/K1;->F()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/K1;->J()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/M1;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->E()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v8, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v10, v9}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/K1;->G()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/U1;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v8, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v10, v9}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/K1;->J()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "data"

    const-string v12, "session_scoped"

    const-string v13, "filter_id"

    const-string v8, "audience_id"

    const-string v14, "app_id"

    if-eqz v11, :cond_12

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/M1;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->G()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v8, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->E()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->F()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v16, v11

    goto :goto_7

    :cond_d
    const/16 v16, 0x0

    :goto_7
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v8, v10, v12, v11}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v21, v7

    goto/16 :goto_f

    :cond_e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v3

    move-object/from16 v21, v7

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->E()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->F()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v7, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "event_name"

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->G()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->O()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/M1;->P()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v11, 0x5

    invoke-virtual {v3, v5, v8, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v11

    const-wide/16 v7, -0x1

    cmp-long v3, v11, v7

    if-nez v3, :cond_11

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v7, "Failed to insert event filter (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    move-object/from16 v3, p2

    move-object/from16 v7, v21

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v7, "Error storing event filter. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_12
    move-object/from16 v21, v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/K1;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/U1;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->G()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v7, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_b

    :cond_13
    const/16 v16, 0x0

    :goto_b
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v8, v10, v3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->E()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->F()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v10, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "property_name"

    move-object/from16 v22, v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->K()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/U1;->L()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v3, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v10

    const-wide/16 v19, -0x1

    cmp-long v0, v10, v19

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Failed to insert property filter (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :cond_17
    move-object/from16 v0, v22

    goto/16 :goto_a

    :goto_e
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v7, "Error storing property filter. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v18

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v18, v7

    :goto_10
    move-object/from16 v7, v21

    goto/16 :goto_5

    :cond_18
    move-object/from16 v3, p2

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/K1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/K1;->E()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/K1;->F()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_12

    :cond_1a
    move-object v8, v3

    :goto_12
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1b
    const-string v3, "("

    const-string v5, ")"

    const-string v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    const-string v7, " order by rowid desc limit -1 offset ?)"

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v9, "select count(1) from audience_filter_values where app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/e2;->V:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v11

    const/16 v12, 0x7d0

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v13, v11

    cmp-long v9, v9, v13

    if-gtz v9, :cond_1c

    goto/16 :goto_14

    :cond_1c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_1d

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_1d
    const-string v0, ","

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audience_filter_values"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x8c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    :catch_2
    move-exception v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v5, "Database error querying filters. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    :goto_14
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_15
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final d0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;
    .locals 23
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    move-object/from16 v4, p1

    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/gms/measurement/internal/w;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v1

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v2, v5, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/E;

    move-object v3, v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/E;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/E;->e:J

    const-wide/16 v4, 0x1

    add-long v13, v2, v4

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/E;->d:J

    add-long v11, v2, v4

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/E;->c:J

    add-long v9, v2, v4

    new-instance v2, Lcom/google/android/gms/measurement/internal/E;

    move-object v6, v2

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/E;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/E;->b:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/E;->f:J

    move-wide v15, v3

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/E;->g:J

    move-wide/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/E;->h:Ljava/lang/Long;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/E;->i:Ljava/lang/Long;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/E;->j:Ljava/lang/Long;

    move-object/from16 v21, v3

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/E;->k:Ljava/lang/Boolean;

    move-object/from16 v22, v1

    invoke-direct/range {v6 .. v22}, Lcom/google/android/gms/measurement/internal/E;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method public final e0()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const-string v0, "google_app_measurement.db"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final synthetic f0(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 0

    const-string p1, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 p3, -0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/l3;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Ljava/lang/Long;)J
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "upload_queue"

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->L0()Lcom/google/android/gms/measurement/internal/h6;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v6

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v9

    invoke-interface {v9}, LT0/g;->c()J

    move-result-wide v9

    sub-long v6, v9, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->r()J

    move-result-wide v11

    cmp-long v6, v6, v11

    if-lez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->L0()Lcom/google/android/gms/measurement/internal/h6;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/h6;->f:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->U()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted"

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->A:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, p1, v6}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Error deleting over the limit queued batches. appId"

    invoke-virtual {v6, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v9, v10

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "measurement_batch"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "upload_uri"

    move-object/from16 v8, p3

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-static {v6, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "upload_headers"

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/k5;->N1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "upload_type"

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "creation_timestamp"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "retry_count"

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_5

    const-string v4, "associated_row_id"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    const-wide/16 v3, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v5, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId"

    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-wide v3, v5

    :goto_3
    return-wide v3

    :goto_4
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Error storing MeasurementBatch to upload_queue. appId"

    invoke-virtual {v5, v6, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v3
.end method

.method public final n(J)Lcom/google/android/gms/measurement/internal/f7;
    .locals 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "upload_queue"

    const-string v4, "rowId"

    const-string v5, "app_id"

    const-string v6, "measurement_batch"

    const-string v7, "upload_uri"

    const-string v8, "upload_headers"

    const-string v9, "upload_type"

    const-string v10, "retry_count"

    const-string v11, "creation_timestamp"

    const-string v12, "associated_row_id"

    const-string v13, "last_upload_timestamp"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "rowId=?"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v3, p0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    invoke-virtual/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/w;->T(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/f7;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_0
    move-object/from16 v3, p0

    :goto_1
    move-object v1, v2

    goto :goto_7

    :goto_2
    move-object/from16 v3, p0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_3
    move-object/from16 v3, p0

    goto :goto_7

    :goto_4
    move-object/from16 v3, p0

    move-object v2, v1

    :goto_5
    :try_start_2
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Error to querying MeasurementBatch from upload_queue. rowId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_6
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_7
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;I)Ljava/util/List;
    .locals 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const-string v0, " AND NOT "

    const-string v1, "app_id=?"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "upload_queue"

    const-string v5, "rowId"

    const-string v6, "app_id"

    const-string v7, "measurement_batch"

    const-string v8, "upload_uri"

    const-string v9, "upload_headers"

    const-string v10, "upload_type"

    const-string v11, "retry_count"

    const-string v12, "creation_timestamp"

    const-string v13, "associated_row_id"

    const-string v14, "last_upload_timestamp"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p2

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/J6;->b:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/w;->V(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->U()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v7

    const-string v10, "creation_timestamp ASC"

    if-lez p3, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v2

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v1, 0x7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v1, 0x9

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/w;->T(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/f7;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v1, p0

    goto :goto_4

    :goto_2
    move-object/from16 v1, p0

    goto :goto_5

    :goto_3
    move-object/from16 v1, p0

    :try_start_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Error to querying MeasurementBatch from upload_queue. appId"

    move-object/from16 v5, p1

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    filled-new-array {v0}, [Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k5;->N1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w;->V(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x3d

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND NOT "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public final q(Ljava/lang/Long;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "upload_queue"

    const-string v2, "rowid=?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Deleted fewer rows from upload_queue than expected"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Failed to delete a MeasurementBatch in a upload_queue table"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public final synthetic q0()Lcom/google/android/gms/measurement/internal/B6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w;->e:Lcom/google/android/gms/measurement/internal/B6;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :goto_0
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final r0(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/Y6;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static/range {p6 .. p6}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const-string v0, " order by rowid limit 1;"

    const-string v3, "select metadata_fingerprint from raw_events where app_id = ?"

    const-string v4, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    const-string v5, "select app_id, metadata_fingerprint from raw_events where "

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x1

    const-string v8, ""

    const-wide/16 v16, -0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_3

    cmp-long v0, p4, v16

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_5

    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_1

    const-string v8, "rowid <= ? and "

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x94

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_6

    :cond_3
    cmp-long v4, p4, v16

    if-eqz v4, :cond_4

    :try_start_4
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v7, p1

    :try_start_5
    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object/from16 v7, p1

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v4, :cond_5

    const-string v8, " and rowid <= ?"

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x54

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v7

    :goto_2
    :try_start_6
    const-string v8, "raw_events_metadata"

    const-string v4, "metadata"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "app_id = ? and metadata_fingerprint = ?"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v11

    const-string v4, "rowid"

    const-string v5, "2"

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object v7, v15

    move-object/from16 v13, v18

    move-object v14, v4

    move-object v4, v15

    move-object v15, v5

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_7
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->j0()Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/n3;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v9, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-static {v7}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v2, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    cmp-long v7, p4, v16

    if-eqz v7, :cond_9

    const-string v7, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v0, v8}, [Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v11, v0

    move-object v10, v7

    goto :goto_4

    :cond_9
    const-string v7, "app_id = ? and metadata_fingerprint = ?"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    const-string v8, "raw_events"

    const-string v0, "rowid"

    const-string v7, "name"

    const-string v9, "timestamp"

    const-string v12, "data"

    filled-new-array {v0, v7, v9, v12}, [Ljava/lang/String;

    move-result-object v9

    const-string v14, "rowid"

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->O()Lcom/google/android/gms/internal/measurement/a3;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a3;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v4, 0x1

    :try_start_a
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/a3;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a3;

    const/4 v9, 0x2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/a3;->H(J)Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v2, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/Y6;->a(JLcom/google/android/gms/internal/measurement/b3;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v4, 0x1

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :catch_4
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    :catch_5
    move-exception v0

    :goto_5
    move-object v3, v7

    :goto_6
    :try_start_b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Data loss. Error selecting raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void

    :goto_8
    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method

.method public final s()Z
    .locals 4

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t(J)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "queue"

    const-string v1, "rowid=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public final t0()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final u()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->L0()Lcom/google/android/gms/measurement/internal/h6;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/h6;->e:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v4

    invoke-interface {v4}, LT0/g;->c()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->r()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->L0()Lcom/google/android/gms/measurement/internal/h6;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/h6;->e:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue"

    const-string v4, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u0()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, LG0/A;->t(I)I

    const-string v0, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "The number of upload retries exceeds the limit. Will remain unchanged."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final v0()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final w(Ljava/lang/Long;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, " SET retry_count = retry_count + 1, last_upload_timestamp = "

    const-string v1, " AND retry_count < 2147483647"

    const-string v2, " WHERE rowid = "

    const-string v3, "UPDATE upload_queue"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x56

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "SELECT COUNT(1) FROM upload_queue WHERE rowid = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/measurement/internal/w;->M(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "The number of upload retries exceeds the limit. Will remain unchanged."

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v5

    invoke-interface {v5}, LT0/g;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final w0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w;->d:Lcom/google/android/gms/measurement/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public final x(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Loaded invalid unknown value type, ignoring it"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public final x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "events"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object p1

    return-object p1
.end method

.method public final y()J
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "select max(bundle_end_timestamp) from queue"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y0(Lcom/google/android/gms/measurement/internal/E;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "events"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "first_open_count"

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, " from app2 where app_id=?"

    const-string v2, "select "

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, -0x1

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/w;->N(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v1, v5

    const-string v8, "app2"

    const-string v9, "app_id"

    if-nez v7, :cond_1

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "previous_install_count"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v8, v2, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to insert column (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v7, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :cond_1
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, p2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "app_id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Failed to update column (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-wide v5, v1

    goto :goto_3

    :goto_1
    move-wide v11, v3

    move-object v3, v1

    move-wide v1, v11

    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Error inserting column. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v5, p1, p2, v3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v5

    :goto_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 12

    const-string v0, "events_snapshot"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/w;->S(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    const-string v6, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "events"

    invoke-virtual {p0, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/w;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/w;->R(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/E;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v3, "Error creating snapshot. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method
