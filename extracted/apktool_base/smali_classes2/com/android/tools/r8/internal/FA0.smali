.class public final synthetic Lcom/android/tools/r8/internal/FA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/B9;

.field public final synthetic b:Lcom/android/tools/r8/internal/e9;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/B9;Lcom/android/tools/r8/internal/e9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FA0;->a:Lcom/android/tools/r8/internal/B9;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FA0;->b:Lcom/android/tools/r8/internal/e9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/FA0;->a:Lcom/android/tools/r8/internal/B9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FA0;->b:Lcom/android/tools/r8/internal/e9;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/e9;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    return-void
.end method
