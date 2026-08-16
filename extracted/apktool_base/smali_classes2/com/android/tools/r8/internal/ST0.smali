.class public final synthetic Lcom/android/tools/r8/internal/ST0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/retrace/RetraceFrameElement;

.field public final synthetic c:Lcom/android/tools/r8/retrace/RetracedMethodReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedMethodReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ST0;->b:Lcom/android/tools/r8/retrace/RetraceFrameElement;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ST0;->c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ST0;->b:Lcom/android/tools/r8/retrace/RetraceFrameElement;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ST0;->c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedMethodReference;)Lcom/android/tools/r8/retrace/RetracedSourceFile;

    move-result-object v0

    return-object v0
.end method
