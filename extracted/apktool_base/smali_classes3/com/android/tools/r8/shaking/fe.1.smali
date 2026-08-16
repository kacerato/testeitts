.class public final synthetic Lcom/android/tools/r8/shaking/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/d1;

.field public final synthetic b:Ljava/util/function/BiConsumer;

.field public final synthetic c:Ljava/util/function/BiConsumer;

.field public final synthetic d:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/fe;->a:Lcom/android/tools/r8/graph/d1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/fe;->b:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/fe;->c:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/fe;->d:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/fe;->a:Lcom/android/tools/r8/graph/d1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/fe;->b:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/fe;->c:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/fe;->d:Ljava/util/function/BiConsumer;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/J2;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/shaking/s1;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V

    return-void
.end method
