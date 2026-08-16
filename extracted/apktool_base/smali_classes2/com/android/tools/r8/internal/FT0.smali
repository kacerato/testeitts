.class public final synthetic Lcom/android/tools/r8/internal/FT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qn0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Pn0;

.field public final synthetic d:Lcom/android/tools/r8/retrace/RetraceClassResult;

.field public final synthetic e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FT0;->c:Lcom/android/tools/r8/internal/Pn0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/FT0;->d:Lcom/android/tools/r8/retrace/RetraceClassResult;

    iput-object p4, p0, Lcom/android/tools/r8/internal/FT0;->e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/FT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FT0;->c:Lcom/android/tools/r8/internal/Pn0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/FT0;->d:Lcom/android/tools/r8/retrace/RetraceClassResult;

    iget-object v3, p0, Lcom/android/tools/r8/internal/FT0;->e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceClassElement;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceClassElement;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method
