.class public final synthetic Lcom/android/tools/r8/internal/QT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qn0;

.field public final synthetic c:Lcom/android/tools/r8/retrace/RetraceClassResult;

.field public final synthetic d:Lcom/android/tools/r8/internal/Pn0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/QT0;->c:Lcom/android/tools/r8/retrace/RetraceClassResult;

    iput-object p3, p0, Lcom/android/tools/r8/internal/QT0;->d:Lcom/android/tools/r8/internal/Pn0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/QT0;->b:Lcom/android/tools/r8/internal/Qn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/QT0;->c:Lcom/android/tools/r8/retrace/RetraceClassResult;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QT0;->d:Lcom/android/tools/r8/internal/Pn0;

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Qn0;->b(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method
