.class public abstract Lcom/android/tools/r8/internal/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DiagnosticsHandler;


# instance fields
.field public final a:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dy;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public final error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dy;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final info(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dy;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final warning(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dy;->a:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
