.class public final Lcom/google/android/gms/internal/auth/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lx0/b$b;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/V;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/V;-><init>(Lcom/google/android/gms/internal/auth/W;Lcom/google/android/gms/common/api/l;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/l;Lx0/d;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Lx0/d;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lx0/b$a;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/T;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/T;-><init>(Lcom/google/android/gms/internal/auth/W;Lcom/google/android/gms/common/api/l;Lx0/d;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method
