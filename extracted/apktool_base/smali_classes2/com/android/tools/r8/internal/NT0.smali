.class public final synthetic Lcom/android/tools/r8/internal/NT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qn0;

.field public final synthetic c:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

.field public final synthetic d:Lcom/android/tools/r8/internal/Pn0;

.field public final synthetic e:Lcom/android/tools/r8/retrace/RetraceFrameResult;

.field public final synthetic f:Lcom/android/tools/r8/retrace/RetraceFrameElement;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NT0;->c:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NT0;->d:Lcom/android/tools/r8/internal/Pn0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/NT0;->e:Lcom/android/tools/r8/retrace/RetraceFrameResult;

    iput-object p5, p0, Lcom/android/tools/r8/internal/NT0;->f:Lcom/android/tools/r8/retrace/RetraceFrameElement;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/NT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT0;->c:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iget-object v2, p0, Lcom/android/tools/r8/internal/NT0;->d:Lcom/android/tools/r8/internal/Pn0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT0;->e:Lcom/android/tools/r8/retrace/RetraceFrameResult;

    iget-object v4, p0, Lcom/android/tools/r8/internal/NT0;->f:Lcom/android/tools/r8/retrace/RetraceFrameElement;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/retrace/RetracedSingleFrame;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Qn0;->b(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedSingleFrame;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method
