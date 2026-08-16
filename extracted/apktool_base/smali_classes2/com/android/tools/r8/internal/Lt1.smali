.class public final synthetic Lcom/android/tools/r8/internal/Lt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/O60;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lt1;->b:Lcom/android/tools/r8/internal/O60;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Lt1;->c:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lt1;->b:Lcom/android/tools/r8/internal/O60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lt1;->c:Lcom/android/tools/r8/internal/Hz;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/tX;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Ljava/util/List;)V

    return-void
.end method
