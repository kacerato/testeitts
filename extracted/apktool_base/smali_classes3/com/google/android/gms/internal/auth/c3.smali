.class public final Lcom/google/android/gms/internal/auth/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/b3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/H0;

.field public static final b:Lcom/google/android/gms/internal/auth/H0;

.field public static final c:Lcom/google/android/gms/internal/auth/H0;

.field public static final d:Lcom/google/android/gms/internal/auth/H0;

.field public static final e:Lcom/google/android/gms/internal/auth/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/auth/D0;

    const-string v1, "com.google.android.gms.auth_account"

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/v0;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/D0;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/D0;->b()Lcom/google/android/gms/internal/auth/D0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/D0;->a()Lcom/google/android/gms/internal/auth/D0;

    move-result-object v0

    const-string v1, "Aang__create_auth_exception_with_pending_intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/D0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/H0;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/c3;->a:Lcom/google/android/gms/internal/auth/H0;

    const-string v1, "Aang__enable_add_account_restrictions"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/D0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/H0;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/c3;->b:Lcom/google/android/gms/internal/auth/H0;

    const-string v1, "Aang__log_missing_gaia_id_event"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/D0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/H0;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/c3;->c:Lcom/google/android/gms/internal/auth/H0;

    const-string v1, "Aang__log_obfuscated_gaiaid_status"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/D0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/H0;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/c3;->d:Lcom/google/android/gms/internal/auth/H0;

    const-string v1, "Aang__switch_clear_token_to_aang"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/D0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/H0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/c3;->e:Lcom/google/android/gms/internal/auth/H0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final N1()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/c3;->a:Lcom/google/android/gms/internal/auth/H0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/H0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
