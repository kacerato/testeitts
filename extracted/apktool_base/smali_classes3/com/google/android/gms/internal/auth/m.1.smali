.class public final Lcom/google/android/gms/internal/auth/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/b;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/auth/m;->a:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic e()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/m;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/m;->c(Lcom/google/android/gms/common/api/l;Z)Lcom/google/android/gms/common/api/p;

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/l;Ljava/lang/String;)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lt0/b$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/f;

    sget-object v1, Lt0/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/f;-><init>(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/l;Z)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Z)",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/u;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/d;

    sget-object v1, Lt0/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/d;-><init>(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/common/api/l;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Landroid/accounts/Account;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/u;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/h;

    sget-object v1, Lt0/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/h;-><init>(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;Landroid/accounts/Account;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method
