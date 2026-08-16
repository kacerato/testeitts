.class public final synthetic Lcom/android/tools/r8/internal/zA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ya0;

.field public final synthetic c:Lcom/android/tools/r8/graph/F2;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ya0;Lcom/android/tools/r8/graph/F2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zA1;->b:Lcom/android/tools/r8/internal/ya0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/zA1;->c:Lcom/android/tools/r8/graph/F2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/zA1;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/zA1;->e:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/zA1;->b:Lcom/android/tools/r8/internal/ya0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zA1;->c:Lcom/android/tools/r8/graph/F2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zA1;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/zA1;->e:Lcom/android/tools/r8/internal/Dq;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/ya0;->a(Lcom/android/tools/r8/graph/F2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/F2;)V

    return-void
.end method
