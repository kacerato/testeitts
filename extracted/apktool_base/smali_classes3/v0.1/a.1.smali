.class public final Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.google.android.gms.auth.START_ACCOUNT_EXPORT"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "com.google.android.gms.auth.ACCOUNT_IMPORT_DATA_AVAILABLE"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "com.google.android.gms.auth.ACCOUNT_EXPORT_DATA_AVAILABLE"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "key_extra_account_type"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a$g;

.field public static final f:Lcom/google/android/gms/common/api/a$a;

.field public static final g:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/internal/auth/p;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/internal/auth/p;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lv0/a;->e:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lv0/f;

    invoke-direct {v1}, Lv0/f;-><init>()V

    sput-object v1, Lv0/a;->f:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "AccountTransfer.ACCOUNT_TRANSFER_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lv0/a;->g:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/auth/p;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/p;-><init>()V

    sput-object v0, Lv0/a;->h:Lcom/google/android/gms/internal/auth/p;

    new-instance v0, Lcom/google/android/gms/internal/auth/p;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/p;-><init>()V

    sput-object v0, Lv0/a;->i:Lcom/google/android/gms/internal/auth/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lv0/b;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv0/b;-><init>(Landroid/app/Activity;Lv0/w;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lv0/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv0/b;-><init>(Landroid/content/Context;Lv0/w;)V

    return-object v0
.end method
