.class public final synthetic Lcom/android/tools/r8/internal/GE0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Fg;

.field public final synthetic b:Lcom/android/tools/r8/internal/Bq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Fg;Lcom/android/tools/r8/internal/Bq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GE0;->a:Lcom/android/tools/r8/internal/Fg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/GE0;->b:Lcom/android/tools/r8/internal/Bq;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/GE0;->a:Lcom/android/tools/r8/internal/Fg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GE0;->b:Lcom/android/tools/r8/internal/Bq;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Fg;->a(Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
