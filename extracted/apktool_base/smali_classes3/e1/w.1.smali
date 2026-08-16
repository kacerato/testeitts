.class public final Le1/w;
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

.field public static final q:LB0/e;

.field public static final r:LB0/e;

.field public static final s:LB0/e;

.field public static final t:LB0/e;

.field public static final u:LB0/e;

.field public static final v:[LB0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v1, LB0/e;

    move-object v0, v1

    const-string v2, "auth_api_credentials_begin_sign_in"

    const-wide/16 v3, 0x9

    invoke-direct {v1, v2, v3, v4}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, Le1/w;->a:LB0/e;

    new-instance v2, LB0/e;

    move-object v1, v2

    const-string v3, "auth_api_credentials_sign_out"

    const-wide/16 v4, 0x2

    invoke-direct {v2, v3, v4, v5}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, Le1/w;->b:LB0/e;

    new-instance v3, LB0/e;

    move-object v2, v3

    const-string v4, "auth_api_credentials_authorize"

    const-wide/16 v14, 0x1

    invoke-direct {v3, v4, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, Le1/w;->c:LB0/e;

    new-instance v4, LB0/e;

    move-object v3, v4

    const-string v5, "auth_api_credentials_revoke_access"

    invoke-direct {v4, v5, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v4, Le1/w;->d:LB0/e;

    new-instance v5, LB0/e;

    move-object v4, v5

    const-string v6, "auth_api_credentials_clear_token"

    invoke-direct {v5, v6, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v5, Le1/w;->e:LB0/e;

    new-instance v6, LB0/e;

    move-object v5, v6

    const-string v7, "auth_api_credentials_save_password"

    const-wide/16 v8, 0x4

    invoke-direct {v6, v7, v8, v9}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v6, Le1/w;->f:LB0/e;

    new-instance v7, LB0/e;

    move-object v6, v7

    const-string v8, "auth_api_credentials_get_sign_in_intent"

    const-wide/16 v9, 0x6

    invoke-direct {v7, v8, v9, v10}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v7, Le1/w;->g:LB0/e;

    new-instance v8, LB0/e;

    move-object v7, v8

    const-string v9, "auth_api_credentials_save_account_linking_token"

    const-wide/16 v10, 0x3

    invoke-direct {v8, v9, v10, v11}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v8, Le1/w;->h:LB0/e;

    new-instance v9, LB0/e;

    move-object v8, v9

    const-string v12, "auth_api_credentials_get_phone_number_hint_intent"

    invoke-direct {v9, v12, v10, v11}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v9, Le1/w;->i:LB0/e;

    new-instance v10, LB0/e;

    move-object v9, v10

    const-string v11, "auth_api_credentials_verify_with_google"

    invoke-direct {v10, v11, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v10, Le1/w;->j:LB0/e;

    new-instance v11, LB0/e;

    move-object v10, v11

    const-string v12, "auth_api_credentials_credential_provider"

    invoke-direct {v11, v12, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v11, Le1/w;->k:LB0/e;

    new-instance v12, LB0/e;

    move-object v11, v12

    const-string v13, "auth_api_credentials_save_webauthn_credential_specifics"

    invoke-direct {v12, v13, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v12, Le1/w;->l:LB0/e;

    new-instance v13, LB0/e;

    move-object v12, v13

    move-object/from16 v21, v0

    const-string v0, "auth_api_credentials_list_webauthn_credential_specifics"

    invoke-direct {v13, v0, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v13, Le1/w;->m:LB0/e;

    new-instance v0, LB0/e;

    move-object v13, v0

    move-object/from16 v22, v1

    const-string v1, "auth_api_credentials_get_google_passkey_for_export"

    invoke-direct {v0, v1, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->n:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v23, v2

    move-wide v1, v14

    move-object v14, v0

    const-string v15, "auth_api_credentials_get_authentication_intent"

    invoke-direct {v0, v15, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->o:LB0/e;

    new-instance v0, LB0/e;

    move-object v15, v0

    move-object/from16 v24, v3

    const-string v3, "auth_api_credentials_get_registration_intent"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->p:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v16, v0

    const-string v3, "auth_api_credentials_check_key_availability"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->q:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v17, v0

    const-string v3, "auth_api_credentials_has_discoverable_key"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->r:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v18, v0

    const-string v3, "auth_api_credentials_validate_calling_browser"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->s:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v19, v0

    const-string v3, "auth_api_credentials_validate_rp_id_and_calling_package"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->t:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v20, v0

    const-string v3, "auth_api_credentials_get_credential_list_for_browser"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Le1/w;->u:LB0/e;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    filled-new-array/range {v0 .. v20}, [LB0/e;

    move-result-object v0

    sput-object v0, Le1/w;->v:[LB0/e;

    return-void
.end method
