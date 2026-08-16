.class public final Lcom/android/tools/r8/internal/s2;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final transient b:Lcom/android/tools/r8/internal/H;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/s2;->b:Lcom/android/tools/r8/internal/H;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/s2;->b:Lcom/android/tools/r8/internal/H;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/H;Ljava/lang/String;Ljava/lang/Object;Lcom/android/tools/r8/internal/ww0;)V
    .locals 1

    if-nez p2, :cond_0

    .line 5
    const-string p2, "Expected "

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ": expected "

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but found "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/s2;->b:Lcom/android/tools/r8/internal/H;

    return-void
.end method
