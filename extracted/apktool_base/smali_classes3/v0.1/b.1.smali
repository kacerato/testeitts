.class public Lv0/b;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/k<",
        "Lv0/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lcom/google/android/gms/common/api/a$g;

.field public static final l:Lcom/google/android/gms/common/api/a$a;

.field public static final m:Lcom/google/android/gms/common/api/a;

.field public static final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lv0/b;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lv0/g;

    invoke-direct {v1}, Lv0/g;-><init>()V

    sput-object v1, Lv0/b;->l:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "AccountTransfer.ACCOUNT_TRANSFER_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lv0/b;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lv0/w;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p2, Lv0/b;->m:Lcom/google/android/gms/common/api/a;

    sget-object v0, Lv0/w;->c:Lv0/w;

    new-instance v1, Lcom/google/android/gms/common/api/k$a$a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/k$a$a;-><init>()V

    new-instance v2, LD0/b;

    invoke-direct {v2}, LD0/b;-><init>()V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/k$a$a;->c(LD0/p;)Lcom/google/android/gms/common/api/k$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/k$a$a;->a()Lcom/google/android/gms/common/api/k$a;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv0/w;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object p2, Lv0/b;->m:Lcom/google/android/gms/common/api/a;

    sget-object v0, Lv0/w;->c:Lv0/w;

    new-instance v1, Lcom/google/android/gms/common/api/k$a$a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/k$a$a;-><init>()V

    new-instance v2, LD0/b;

    invoke-direct {v2}, LD0/b;-><init>()V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/k$a$a;->c(LD0/p;)Lcom/google/android/gms/common/api/k$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/k$a$a;->a()Lcom/google/android/gms/common/api/k$a;

    move-result-object v1

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method


# virtual methods
.method public g0(Ljava/lang/String;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lv1/k<",
            "Lv0/e;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/r;-><init>(Ljava/lang/String;)V

    new-instance p1, Lv0/l;

    const/16 v1, 0x648

    invoke-direct {p1, p0, v1, v0}, Lv0/l;-><init>(Lv0/b;ILcom/google/android/gms/internal/auth/r;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public h0(Ljava/lang/String;I)Lv1/k;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/w;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/auth/w;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lv0/n;

    const/16 p2, 0x64a

    invoke-direct {p1, p0, p2, v0}, Lv0/n;-><init>(Lv0/b;ILcom/google/android/gms/internal/auth/w;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public i0(Ljava/lang/String;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lv1/k<",
            "[B>;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/y;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/y;-><init>(Ljava/lang/String;)V

    new-instance p1, Lv0/j;

    const/16 v1, 0x647

    invoke-direct {p1, p0, v1, v0}, Lv0/j;-><init>(Lv0/b;ILcom/google/android/gms/internal/auth/y;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public j0(Ljava/lang/String;[B)Lv1/k;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/A;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/auth/A;-><init>(Ljava/lang/String;[B)V

    new-instance p1, Lv0/h;

    const/16 p2, 0x646

    invoke-direct {p1, p0, p2, v0}, Lv0/h;-><init>(Lv0/b;ILcom/google/android/gms/internal/auth/A;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public k0(Ljava/lang/String;Landroid/app/PendingIntent;)Lv1/k;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/D;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/auth/D;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    new-instance p1, Lv0/m;

    const/16 p2, 0x649

    invoke-direct {p1, p0, p2, v0}, Lv0/m;-><init>(Lv0/b;ILcom/google/android/gms/internal/auth/D;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
