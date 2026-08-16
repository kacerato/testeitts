.class public final Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation build LC0/a;
    .end annotation

    .annotation build LG0/F;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lu0/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lx0/b;
    .annotation build LC0/a;
    .end annotation

    .annotation build LG0/F;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lu0/b;->c:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lu0/i;

    invoke-direct {v1}, Lu0/i;-><init>()V

    sput-object v1, Lu0/b;->d:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lu0/b;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/auth/W;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/W;-><init>()V

    sput-object v0, Lu0/b;->b:Lx0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lu0/c;)Lx0/c;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lu0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/Q;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/Q;-><init>(Landroid/app/Activity;Lu0/c;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lu0/c;)Lx0/c;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lu0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/Q;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/Q;-><init>(Landroid/content/Context;Lu0/c;)V

    return-object v0
.end method
