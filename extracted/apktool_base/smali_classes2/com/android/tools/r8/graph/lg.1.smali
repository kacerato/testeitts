.class public final synthetic Lcom/android/tools/r8/graph/lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/h;

.field public final synthetic b:Lcom/android/tools/r8/internal/Yx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/lg;->a:Lcom/android/tools/r8/graph/h;

    iput-object p2, p0, Lcom/android/tools/r8/graph/lg;->b:Lcom/android/tools/r8/internal/Yx0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/lg;->a:Lcom/android/tools/r8/graph/h;

    iget-object v1, p0, Lcom/android/tools/r8/graph/lg;->b:Lcom/android/tools/r8/internal/Yx0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method
