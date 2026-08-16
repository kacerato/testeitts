.class public final Lcom/android/tools/r8/internal/Fl;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->b()Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->d()Lcom/android/tools/r8/internal/fW;

    return-void
.end method
