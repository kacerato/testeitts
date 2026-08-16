.class public final synthetic Lcom/android/tools/r8/internal/WQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/PT;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/PT;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/WQ0;->a:Lcom/android/tools/r8/internal/PT;

    iput-object p2, p0, Lcom/android/tools/r8/internal/WQ0;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/WQ0;->a:Lcom/android/tools/r8/internal/PT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WQ0;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/internal/qu;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/qu;)V

    return-void
.end method
