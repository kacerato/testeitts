.class public final Lcom/android/tools/r8/internal/JO;
.super Lcom/android/tools/r8/internal/MM;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/PM;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/MM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/JO;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "member-ref("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
