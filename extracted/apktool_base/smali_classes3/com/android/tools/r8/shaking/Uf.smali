.class public final synthetic Lcom/android/tools/r8/shaking/Uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Uf;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Uf;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Uf;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Uf;->b:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/shaking/k1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/k1;)V

    return-void
.end method
