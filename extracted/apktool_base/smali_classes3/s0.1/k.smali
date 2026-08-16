.class public final Ls0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB0/e;

.field public static final b:LB0/e;

.field public static final c:LB0/e;

.field public static final d:LB0/e;

.field public static final e:LB0/e;

.field public static final f:LB0/e;

.field public static final g:LB0/e;

.field public static final h:LB0/e;

.field public static final i:LB0/e;

.field public static final j:LB0/e;

.field public static final k:LB0/e;

.field public static final l:LB0/e;

.field public static final m:LB0/e;

.field public static final n:LB0/e;

.field public static final o:LB0/e;

.field public static final p:LB0/e;

.field public static final q:[LB0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, LB0/e;

    const-string v1, "account_capability_api"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Ls0/k;->a:LB0/e;

    new-instance v1, LB0/e;

    const-string v4, "account_data_service"

    const-wide/16 v5, 0x6

    invoke-direct {v1, v4, v5, v6}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, Ls0/k;->b:LB0/e;

    new-instance v4, LB0/e;

    const-string v5, "account_data_service_legacy"

    invoke-direct {v4, v5, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v4, Ls0/k;->c:LB0/e;

    new-instance v5, LB0/e;

    const-string v6, "account_data_service_token"

    const-wide/16 v7, 0x8

    invoke-direct {v5, v6, v7, v8}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v5, Ls0/k;->d:LB0/e;

    new-instance v6, LB0/e;

    const-string v7, "account_data_service_visibility"

    invoke-direct {v6, v7, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v6, Ls0/k;->e:LB0/e;

    new-instance v7, LB0/e;

    const-string v8, "config_sync"

    invoke-direct {v7, v8, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v7, Ls0/k;->f:LB0/e;

    new-instance v8, LB0/e;

    const-string v9, "device_account_api"

    invoke-direct {v8, v9, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v8, Ls0/k;->g:LB0/e;

    new-instance v9, LB0/e;

    const-string v10, "device_account_jwt_creation"

    invoke-direct {v9, v10, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v9, Ls0/k;->h:LB0/e;

    new-instance v10, LB0/e;

    const-string v11, "gaiaid_primary_email_api"

    invoke-direct {v10, v11, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v10, Ls0/k;->i:LB0/e;

    new-instance v11, LB0/e;

    const-string v12, "get_restricted_accounts_api"

    invoke-direct {v11, v12, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v11, Ls0/k;->j:LB0/e;

    new-instance v12, LB0/e;

    const-string v13, "google_auth_service_accounts"

    const-wide/16 v14, 0x2

    invoke-direct {v12, v13, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v12, Ls0/k;->k:LB0/e;

    new-instance v13, LB0/e;

    const-string v14, "google_auth_service_token"

    const-wide/16 v2, 0x3

    invoke-direct {v13, v14, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v13, Ls0/k;->l:LB0/e;

    new-instance v14, LB0/e;

    const-string v2, "hub_mode_api"

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    const-wide/16 v12, 0x1

    invoke-direct {v14, v2, v12, v13}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v14, Ls0/k;->m:LB0/e;

    new-instance v15, LB0/e;

    const-string v2, "work_account_client_is_whitelisted"

    invoke-direct {v15, v2, v12, v13}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v15, Ls0/k;->n:LB0/e;

    new-instance v3, LB0/e;

    const-string v2, "factory_reset_protection_api"

    invoke-direct {v3, v2, v12, v13}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, Ls0/k;->o:LB0/e;

    new-instance v2, LB0/e;

    move-object/from16 v16, v3

    const-string v3, "google_auth_api"

    invoke-direct {v2, v3, v12, v13}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, Ls0/k;->p:LB0/e;

    move-object/from16 v19, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    filled-new-array/range {v0 .. v15}, [LB0/e;

    move-result-object v0

    sput-object v0, Ls0/k;->q:[LB0/e;

    return-void
.end method
