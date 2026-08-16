.class public final synthetic Lcom/android/tools/r8/internal/Uc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hf0;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hf0;Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uc1;->b:Lcom/android/tools/r8/internal/hf0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Uc1;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Uc1;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Uc1;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uc1;->b:Lcom/android/tools/r8/internal/hf0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uc1;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Uc1;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Uc1;->e:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/hf0;->b(Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
