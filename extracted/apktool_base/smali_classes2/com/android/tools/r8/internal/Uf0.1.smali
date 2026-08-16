.class public final Lcom/android/tools/r8/internal/Uf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tl0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/StringConsumer;

.field public final synthetic b:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uf0;->a:Lcom/android/tools/r8/StringConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Uf0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Supplier;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uf0;->a:Lcom/android/tools/r8/StringConsumer;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uf0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uf0;->a:Lcom/android/tools/r8/StringConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uf0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
