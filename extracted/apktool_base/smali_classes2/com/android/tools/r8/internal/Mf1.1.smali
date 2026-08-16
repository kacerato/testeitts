.class public final synthetic Lcom/android/tools/r8/internal/Mf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/android/tools/r8/internal/IA$a;

.field public final synthetic c:Lcom/android/tools/r8/internal/IA$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mf1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mf1;->b:Lcom/android/tools/r8/internal/IA$a;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mf1;->c:Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mf1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mf1;->b:Lcom/android/tools/r8/internal/IA$a;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mf1;->c:Lcom/android/tools/r8/internal/IA$a;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/jY;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method
