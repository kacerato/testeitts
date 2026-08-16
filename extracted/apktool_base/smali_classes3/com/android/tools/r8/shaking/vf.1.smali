.class public final synthetic Lcom/android/tools/r8/shaking/vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/vf;->a:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/vf;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/vf;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/vf;->b:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/shaking/q1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/q1;)V

    return-void
.end method
