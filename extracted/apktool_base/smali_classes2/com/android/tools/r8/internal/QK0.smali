.class public final synthetic Lcom/android/tools/r8/internal/QK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Kj0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

.field public final synthetic f:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kj0;Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QK0;->b:Lcom/android/tools/r8/internal/Kj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/QK0;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/QK0;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/QK0;->e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iput-object p5, p0, Lcom/android/tools/r8/internal/QK0;->f:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/QK0;->b:Lcom/android/tools/r8/internal/Kj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/QK0;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QK0;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/QK0;->e:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iget-object v4, p0, Lcom/android/tools/r8/internal/QK0;->f:Lcom/android/tools/r8/internal/C7;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/Kj0;->e(Lcom/android/tools/r8/internal/Kj0;Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V

    return-void
.end method
