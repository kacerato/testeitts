.class public final synthetic Lcom/android/tools/r8/internal/ld1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ld1;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ld1;->b:Ljava/util/function/BiConsumer;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/hi;->a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
