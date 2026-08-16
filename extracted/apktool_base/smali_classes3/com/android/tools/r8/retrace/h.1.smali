.class public final Lcom/android/tools/r8/retrace/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DiagnosticsHandler;


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/f;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/retrace/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    iput-boolean p2, p0, Lcom/android/tools/r8/retrace/h;->b:Z

    return-void
.end method


# virtual methods
.method public final error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final info(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/retrace/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    return-void
.end method

.method public final warning(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
