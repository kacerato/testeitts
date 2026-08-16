.class public final synthetic Lcom/android/tools/r8/internal/yj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Ljava/util/function/BiConsumer;

.field public final synthetic b:Lcom/android/tools/r8/internal/l1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yj1;->a:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yj1;->b:Lcom/android/tools/r8/internal/l1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yj1;->a:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yj1;->b:Lcom/android/tools/r8/internal/l1;

    check-cast p1, Lcom/android/tools/r8/internal/q1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/l1;Lcom/android/tools/r8/internal/q1;)V

    return-void
.end method
