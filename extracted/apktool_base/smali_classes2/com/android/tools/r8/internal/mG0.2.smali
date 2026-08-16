.class public final synthetic Lcom/android/tools/r8/internal/mG0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/BiConsumer;

.field public final synthetic b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mG0;->a:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mG0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mG0;->a:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mG0;->b:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Lcom/android/tools/r8/references/MethodReference;

    check-cast p2, Lcom/android/tools/r8/internal/C2;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/H2;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/C2;)V

    return-void
.end method
