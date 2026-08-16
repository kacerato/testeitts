.class public final synthetic Lcom/android/tools/r8/internal/VF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Gg;

.field public final synthetic b:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Gg;Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VF0;->a:Lcom/android/tools/r8/internal/Gg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VF0;->b:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/VF0;->a:Lcom/android/tools/r8/internal/Gg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VF0;->b:Lcom/android/tools/r8/internal/Dq;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Gg;->a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
