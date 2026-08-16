.class public final Lcom/google/android/gms/auth/api/identity/s;
.super Lcom/google/android/gms/auth/api/identity/e$a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/api/identity/e;
    .locals 3

    iget-byte v0, p0, Lcom/google/android/gms/auth/api/identity/s;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/s;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/identity/e;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/s;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/s;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/identity/e;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/s;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/auth/api/identity/s;->c:B

    if-nez v1, :cond_3

    const-string v1, " essential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Z)Lcom/google/android/gms/auth/api/identity/e$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/s;->b:Z

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/auth/api/identity/s;->c:B

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/e$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/s;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
