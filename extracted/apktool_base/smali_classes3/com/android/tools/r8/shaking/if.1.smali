.class public final synthetic Lcom/android/tools/r8/shaking/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/if;->a:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/if;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/if;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/if;->a:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/if;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/if;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/shaking/t2;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method
