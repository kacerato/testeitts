.class public final synthetic Lcom/android/tools/r8/internal/RT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

.field public final synthetic c:Lcom/android/tools/r8/retrace/StackTraceElementProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RT0;->b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/RT0;->c:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RT0;->b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RT0;->c:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    check-cast p1, Lcom/android/tools/r8/internal/On0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/On0;)V

    return-void
.end method
