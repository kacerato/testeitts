.class public final synthetic Lcom/android/tools/r8/shaking/F8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/BiConsumer;

.field public final synthetic c:Lcom/android/tools/r8/graph/E5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/E5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/F8;->b:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/F8;->c:Lcom/android/tools/r8/graph/E5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/F8;->b:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/F8;->c:Lcom/android/tools/r8/graph/E5;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/E5;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
