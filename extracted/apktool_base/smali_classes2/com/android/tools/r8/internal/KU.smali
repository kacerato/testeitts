.class public final Lcom/android/tools/r8/internal/KU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/Q;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/Q;

.field public final synthetic b:Lcom/android/tools/r8/naming/Q;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/Q;Lcom/android/tools/r8/naming/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/KU;->a:Lcom/android/tools/r8/naming/Q;

    iput-object p2, p0, Lcom/android/tools/r8/internal/KU;->b:Lcom/android/tools/r8/naming/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/b;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KU;->a:Lcom/android/tools/r8/naming/Q;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/naming/Q;->a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/b;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/KU;->b:Lcom/android/tools/r8/naming/Q;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/naming/Q;->a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/b;)V

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KU;->a:Lcom/android/tools/r8/naming/Q;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/KU;->b:Lcom/android/tools/r8/naming/Q;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
