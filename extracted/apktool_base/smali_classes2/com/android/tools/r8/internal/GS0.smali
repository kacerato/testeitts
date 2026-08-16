.class public final synthetic Lcom/android/tools/r8/internal/GS0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/QA;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QA;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GS0;->a:Lcom/android/tools/r8/internal/QA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/GS0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/GS0;->a:Lcom/android/tools/r8/internal/QA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GS0;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/QA;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method
