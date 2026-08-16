.class public final synthetic Lcom/android/tools/r8/graph/ke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/graph/S5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/ke;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/ke;->b:Lcom/android/tools/r8/graph/S5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/ke;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/ke;->b:Lcom/android/tools/r8/graph/S5;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    check-cast p2, Lcom/android/tools/r8/internal/WY;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V

    return-void
.end method
