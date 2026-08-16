.class public final Lcom/android/tools/r8/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/StringConsumer;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/i0;->b:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/android/tools/r8/i0;->a:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/i0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object p1, p0, Lcom/android/tools/r8/i0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, p0, Lcom/android/tools/r8/i0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/nJ;->f:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/i0;->b:Ljava/lang/StringBuilder;

    return-void
.end method
