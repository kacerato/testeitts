.class public final Lz0/x;
.super Lz0/s;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lz0/s;-><init>()V

    iput-object p1, p0, Lz0/x;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 4

    iget-object v0, p0, Lz0/x;->e:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, LT0/E;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()V
    .locals 4

    invoke-virtual {p0}, Lz0/x;->k()V

    iget-object v0, p0, Lz0/x;->e:Landroid/content/Context;

    invoke-static {v0}, Lz0/c;->b(Landroid/content/Context;)Lz0/c;

    move-result-object v1

    invoke-virtual {v1}, Lz0/c;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lz0/c;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v3

    :cond_0
    invoke-static {v0, v3}, Lcom/google/android/gms/auth/api/signin/a;->d(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ly0/b;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ly0/b;->h0()Lv1/k;

    return-void

    :cond_1
    invoke-virtual {v0}, Ly0/b;->C()Lv1/k;

    return-void
.end method

.method public final z()V
    .locals 1

    invoke-virtual {p0}, Lz0/x;->k()V

    iget-object v0, p0, Lz0/x;->e:Landroid/content/Context;

    invoke-static {v0}, Lz0/r;->a(Landroid/content/Context;)Lz0/r;

    move-result-object v0

    invoke-virtual {v0}, Lz0/r;->b()V

    return-void
.end method
