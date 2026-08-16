.class public final Lcom/google/android/gms/measurement/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/W3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/W3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f1;->a:Lcom/google/android/gms/measurement/internal/W3;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f1;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/Z3;->j(C)Lcom/google/android/gms/measurement/internal/W3;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    :goto_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/f1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/f1;-><init>(Lcom/google/android/gms/measurement/internal/W3;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/measurement/internal/W3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f1;->a:Lcom/google/android/gms/measurement/internal/W3;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f1;->a:Lcom/google/android/gms/measurement/internal/W3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/Z3;->m(Lcom/google/android/gms/measurement/internal/W3;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
