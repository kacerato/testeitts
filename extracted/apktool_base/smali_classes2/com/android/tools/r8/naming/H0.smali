.class public Lcom/android/tools/r8/naming/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/Q;
.implements Lcom/android/tools/r8/internal/Kb;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/StringConsumer;

.field public b:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/naming/H0;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/naming/H0;->a:Lcom/android/tools/r8/StringConsumer;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/naming/H0;->a:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;
    .locals 2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/naming/H0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/H0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/H0;->a:Lcom/android/tools/r8/StringConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/naming/H0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/naming/H0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 2
    iget-object p1, p2, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    .line 3
    const-string v0, "\n"

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/H0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    .line 5
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/internal/Kb;)V

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/H0;->a:Lcom/android/tools/r8/StringConsumer;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
