.class public final Lcom/android/tools/r8/internal/o80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/P;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/u80;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/u80;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/o80;->b:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/o80;->a:Lcom/android/tools/r8/internal/u80;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/o80;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/o80;->a:Lcom/android/tools/r8/internal/u80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u80;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/o80;->a:Lcom/android/tools/r8/internal/u80;

    .line 3
    iget v1, v1, Lcom/android/tools/r8/internal/u80;->g:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/o80;->c:Ljava/util/ArrayList;

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/o80;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/o80;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/o80;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/o80;->a:Lcom/android/tools/r8/internal/u80;

    invoke-interface {v0}, Lcom/android/tools/r8/naming/P;->close()V

    return-void
.end method
