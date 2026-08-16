.class public final synthetic Lcom/android/tools/r8/internal/fR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Pd;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fR0;->a:Lcom/android/tools/r8/internal/Pd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fR0;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fR0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/fR0;->a:Lcom/android/tools/r8/internal/Pd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fR0;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fR0;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method
