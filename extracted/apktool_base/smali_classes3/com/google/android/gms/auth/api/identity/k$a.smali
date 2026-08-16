.class public final Lcom/google/android/gms/auth/api/identity/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/auth/api/identity/o;

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/identity/k;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/k;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/k$a;->a:Lcom/google/android/gms/auth/api/identity/o;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/k$a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/auth/api/identity/k$a;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/k;-><init>(Lcom/google/android/gms/auth/api/identity/o;Ljava/lang/String;I)V

    return-object v0
.end method

.method public b(Lcom/google/android/gms/auth/api/identity/o;)Lcom/google/android/gms/auth/api/identity/k$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/k$a;->a:Lcom/google/android/gms/auth/api/identity/o;

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/auth/api/identity/k$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/auth/api/identity/k$a;->c:I

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/k$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/k$a;->b:Ljava/lang/String;

    return-object p0
.end method
