.class public final synthetic Lcom/android/tools/r8/internal/RL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Lcom/android/tools/r8/internal/L70;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/L70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RL0;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/internal/RL0;->b:Lcom/android/tools/r8/internal/L70;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RL0;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RL0;->b:Lcom/android/tools/r8/internal/L70;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    check-cast p2, Lcom/android/tools/r8/internal/p1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/L70;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/L70;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/p1;)V

    return-void
.end method
