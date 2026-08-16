.class public final Lcom/android/tools/r8/internal/vl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/hf;

.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hf;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/vl0;->a:Lcom/android/tools/r8/internal/hf;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vl0;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/vl0;->a:Lcom/android/tools/r8/internal/hf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/tools/r8/internal/hf;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vl0;->b:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
