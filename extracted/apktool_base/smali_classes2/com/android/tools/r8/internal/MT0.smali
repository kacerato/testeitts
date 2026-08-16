.class public final synthetic Lcom/android/tools/r8/internal/MT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qn0;

.field public final synthetic c:Lcom/android/tools/r8/internal/C7;

.field public final synthetic d:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

.field public final synthetic e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

.field public final synthetic f:Lcom/android/tools/r8/internal/Pn0;

.field public final synthetic g:Lcom/android/tools/r8/retrace/RetraceFrameResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/MT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MT0;->c:Lcom/android/tools/r8/internal/C7;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MT0;->d:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    iput-object p4, p0, Lcom/android/tools/r8/internal/MT0;->e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iput-object p5, p0, Lcom/android/tools/r8/internal/MT0;->f:Lcom/android/tools/r8/internal/Pn0;

    iput-object p6, p0, Lcom/android/tools/r8/internal/MT0;->g:Lcom/android/tools/r8/retrace/RetraceFrameResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/MT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MT0;->c:Lcom/android/tools/r8/internal/C7;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MT0;->d:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    iget-object v3, p0, Lcom/android/tools/r8/internal/MT0;->e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iget-object v4, p0, Lcom/android/tools/r8/internal/MT0;->f:Lcom/android/tools/r8/internal/Pn0;

    iget-object v5, p0, Lcom/android/tools/r8/internal/MT0;->g:Lcom/android/tools/r8/retrace/RetraceFrameResult;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/retrace/RetraceFrameElement;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
