.class public final synthetic Lcom/android/tools/r8/internal/mM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/M10;

.field public final synthetic c:Lcom/android/tools/r8/internal/O60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/M10;Lcom/android/tools/r8/internal/O60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mM0;->b:Lcom/android/tools/r8/internal/M10;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mM0;->c:Lcom/android/tools/r8/internal/O60;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mM0;->b:Lcom/android/tools/r8/internal/M10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mM0;->c:Lcom/android/tools/r8/internal/O60;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/M10;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
