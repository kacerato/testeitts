.class public final synthetic Lcom/android/tools/r8/shaking/Z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;

.field public final synthetic b:Lcom/android/tools/r8/graph/E5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/E5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z9;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Z9;->b:Lcom/android/tools/r8/graph/E5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z9;->a:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Z9;->b:Lcom/android/tools/r8/graph/E5;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/h0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/E5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;)V

    return-void
.end method
