.class public final LY0/c;
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

.field public static final t:[LB0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, LB0/e;

    move-object v0, v1

    const-string v2, "cancel_target_direct_transfer"

    const-wide/16 v14, 0x1

    invoke-direct {v1, v2, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, LY0/c;->a:LB0/e;

    new-instance v2, LB0/e;

    move-object v1, v2

    const-string v3, "delete_credential"

    invoke-direct {v2, v3, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, LY0/c;->b:LB0/e;

    new-instance v3, LB0/e;

    move-object v2, v3

    const-string v4, "delete_device_public_key"

    invoke-direct {v3, v4, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, LY0/c;->c:LB0/e;

    new-instance v4, LB0/e;

    move-object v3, v4

    const-string v5, "get_or_generate_device_public_key"

    invoke-direct {v4, v5, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v4, LY0/c;->d:LB0/e;

    new-instance v5, LB0/e;

    move-object v4, v5

    const-string v6, "get_passkeys"

    invoke-direct {v5, v6, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v5, LY0/c;->e:LB0/e;

    new-instance v6, LB0/e;

    move-object v5, v6

    const-string v7, "update_passkey"

    invoke-direct {v6, v7, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v6, LY0/c;->f:LB0/e;

    new-instance v7, LB0/e;

    move-object v6, v7

    const-string v8, "is_user_verifying_platform_authenticator_available_for_credential"

    invoke-direct {v7, v8, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v7, LY0/c;->g:LB0/e;

    new-instance v8, LB0/e;

    move-object v7, v8

    const-string v9, "is_user_verifying_platform_authenticator_available"

    invoke-direct {v8, v9, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v8, LY0/c;->h:LB0/e;

    new-instance v9, LB0/e;

    move-object v8, v9

    const-string v10, "privileged_api_list_credentials"

    const-wide/16 v12, 0x2

    invoke-direct {v9, v10, v12, v13}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v9, LY0/c;->i:LB0/e;

    new-instance v10, LB0/e;

    move-object v9, v10

    const-string v11, "start_target_direct_transfer"

    invoke-direct {v10, v11, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v10, LY0/c;->j:LB0/e;

    new-instance v11, LB0/e;

    move-object v10, v11

    const-string v12, "zero_party_api_register"

    const-wide/16 v14, 0x3

    invoke-direct {v11, v12, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v11, LY0/c;->k:LB0/e;

    new-instance v12, LB0/e;

    move-object v11, v12

    const-string v13, "zero_party_api_sign"

    invoke-direct {v12, v13, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v12, LY0/c;->l:LB0/e;

    new-instance v13, LB0/e;

    const-wide/16 v14, 0x2

    move-object v12, v13

    move-object/from16 v20, v0

    const-string v0, "zero_party_api_list_discoverable_credentials"

    invoke-direct {v13, v0, v14, v15}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v13, LY0/c;->m:LB0/e;

    new-instance v0, LB0/e;

    move-object v13, v0

    const-string v14, "zero_party_api_authenticate_passkey"

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    const-wide/16 v1, 0x1

    invoke-direct {v0, v14, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LY0/c;->n:LB0/e;

    new-instance v0, LB0/e;

    move-object v14, v0

    const-string v15, "zero_party_api_register_passkey"

    invoke-direct {v0, v15, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LY0/c;->o:LB0/e;

    new-instance v0, LB0/e;

    move-object v15, v0

    move-object/from16 v19, v3

    const-string v3, "zero_party_api_get_hybrid_client_registration_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LY0/c;->p:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v16, v0

    const-string v3, "zero_party_api_get_hybrid_client_sign_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LY0/c;->q:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v17, v0

    const-string v3, "get_browser_hybrid_client_sign_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LY0/c;->r:LB0/e;

    new-instance v0, LB0/e;

    move-object/from16 v18, v0

    const-string v3, "get_browser_hybrid_client_registration_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LY0/c;->s:LB0/e;

    move-object/from16 v3, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    filled-new-array/range {v0 .. v18}, [LB0/e;

    move-result-object v0

    sput-object v0, LY0/c;->t:[LB0/e;

    return-void
.end method
