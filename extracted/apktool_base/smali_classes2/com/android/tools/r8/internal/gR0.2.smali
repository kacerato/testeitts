.class public final synthetic Lcom/android/tools/r8/internal/gR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Pd;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gR0;->b:Lcom/android/tools/r8/internal/Pd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gR0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/gR0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gR0;->b:Lcom/android/tools/r8/internal/Pd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gR0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/gR0;->d:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Pd;->b(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
