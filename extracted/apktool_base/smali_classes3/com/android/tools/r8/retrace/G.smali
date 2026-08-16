.class public final synthetic Lcom/android/tools/r8/retrace/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/StackTraceSupplier;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/G;->a:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final get()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/G;->a:Lcom/android/tools/r8/internal/C7;

    invoke-static {v0}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->b(Lcom/android/tools/r8/internal/C7;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
