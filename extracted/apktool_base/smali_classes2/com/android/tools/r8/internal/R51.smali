.class public final synthetic Lcom/android/tools/r8/internal/R51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/R51;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/R51;->b:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/R51;->a:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R51;->b:Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/bi;->a(Ljava/util/function/Consumer;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
