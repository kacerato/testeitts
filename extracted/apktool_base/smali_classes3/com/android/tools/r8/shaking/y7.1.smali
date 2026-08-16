.class public final synthetic Lcom/android/tools/r8/shaking/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/y7;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/y7;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/y7;->a:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/y7;->b:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/r0;Ljava/util/List;)V

    return-void
.end method
