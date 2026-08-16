.class public final synthetic Lcom/android/tools/r8/internal/RK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RK0;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/RK0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RK0;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RK0;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Kj0;->f(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V

    return-void
.end method
