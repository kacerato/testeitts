.class public final synthetic Lcom/android/tools/r8/internal/SK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Kj0;

.field public final synthetic c:Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;

.field public final synthetic d:Lcom/android/tools/r8/internal/Jj0;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kj0;Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;Lcom/android/tools/r8/internal/Jj0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SK0;->b:Lcom/android/tools/r8/internal/Kj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SK0;->c:Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;

    iput-object p3, p0, Lcom/android/tools/r8/internal/SK0;->d:Lcom/android/tools/r8/internal/Jj0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/SK0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/SK0;->b:Lcom/android/tools/r8/internal/Kj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SK0;->c:Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/SK0;->d:Lcom/android/tools/r8/internal/Jj0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/SK0;->e:Ljava/util/List;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/Kj0;->c(Lcom/android/tools/r8/internal/Kj0;Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;Lcom/android/tools/r8/internal/Jj0;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    return-object p1
.end method
