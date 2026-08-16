.class public LY0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "RESPONSE_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "FIDO2_RESPONSE_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "FIDO2_ERROR_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "FIDO2_CREDENTIAL_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final g:Lj1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, LY0/a;->e:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a;

    new-instance v2, Lj1/c;

    invoke-direct {v2}, Lj1/c;-><init>()V

    const-string v3, "Fido.U2F_ZERO_PARTY_API"

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v1, LY0/a;->f:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lj1/b;

    invoke-direct {v0}, Lj1/b;-><init>()V

    sput-object v0, LY0/a;->g:Lj1/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)LZ0/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LZ0/a;

    invoke-direct {v0, p0}, LZ0/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)LZ0/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LZ0/a;

    invoke-direct {v0, p0}, LZ0/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)LZ0/c;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LZ0/c;

    invoke-direct {v0, p0}, LZ0/c;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)LZ0/c;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LZ0/c;

    invoke-direct {v0, p0}, LZ0/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)Lb1/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lb1/a;

    invoke-direct {v0, p0}, Lb1/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lb1/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lb1/a;

    invoke-direct {v0, p0}, Lb1/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
