.class public final synthetic Lcom/android/tools/r8/internal/MH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/internal/kC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/kC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/MH0;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MH0;->b:Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/MH0;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MH0;->b:Lcom/android/tools/r8/internal/kC;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V

    return-void
.end method
