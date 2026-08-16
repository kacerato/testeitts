.class public final Lcom/android/tools/r8/retrace/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Kb;
.implements Lcom/android/tools/r8/H;


# instance fields
.field public final a:Lcom/android/tools/r8/StringConsumer;

.field public final b:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/d;->a:Lcom/android/tools/r8/StringConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/retrace/d;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/retrace/d;->a:Lcom/android/tools/r8/StringConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/d;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object p0
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/d;->a:Lcom/android/tools/r8/StringConsumer;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
