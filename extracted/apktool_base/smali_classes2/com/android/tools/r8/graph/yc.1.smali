.class public final synthetic Lcom/android/tools/r8/graph/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/l1;

.field public final synthetic b:Lcom/android/tools/r8/internal/m80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/yc;->a:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/yc;->b:Lcom/android/tools/r8/internal/m80;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/yc;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/yc;->b:Lcom/android/tools/r8/internal/m80;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/internal/m80;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/m80;)V

    return-void
.end method
