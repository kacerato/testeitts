.class public final synthetic Lcom/android/tools/r8/shaking/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;

.field public final synthetic b:Lcom/android/tools/r8/shaking/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/l7;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/l7;->b:Lcom/android/tools/r8/shaking/d0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/l7;->a:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/l7;->b:Lcom/android/tools/r8/shaking/d0;

    check-cast p1, Lcom/android/tools/r8/graph/F5;

    check-cast p2, Lcom/android/tools/r8/shaking/p1;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void
.end method
