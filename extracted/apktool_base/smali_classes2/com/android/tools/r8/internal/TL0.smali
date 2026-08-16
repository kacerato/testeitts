.class public final synthetic Lcom/android/tools/r8/internal/TL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/LA;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/internal/IA;

.field public final synthetic e:Lcom/android/tools/r8/graph/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/LA;Ljava/util/Map;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TL0;->b:Lcom/android/tools/r8/internal/LA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TL0;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/TL0;->d:Lcom/android/tools/r8/internal/IA;

    iput-object p4, p0, Lcom/android/tools/r8/internal/TL0;->e:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/TL0;->b:Lcom/android/tools/r8/internal/LA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TL0;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TL0;->d:Lcom/android/tools/r8/internal/IA;

    iget-object v3, p0, Lcom/android/tools/r8/internal/TL0;->e:Lcom/android/tools/r8/graph/j;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/LA;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method
