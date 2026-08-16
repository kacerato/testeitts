.class public final Lcom/android/tools/r8/internal/ot;
.super Lcom/android/tools/r8/internal/pt;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ot;->a:Ljava/nio/file/Path;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pt;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/nio/file/Path;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/ot;->a:Ljava/nio/file/Path;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
