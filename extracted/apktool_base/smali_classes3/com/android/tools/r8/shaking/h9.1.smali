.class public final synthetic Lcom/android/tools/r8/shaking/h9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h9;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/h9;->c:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h9;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h9;->c:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/F0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/F0;)V

    return-void
.end method
