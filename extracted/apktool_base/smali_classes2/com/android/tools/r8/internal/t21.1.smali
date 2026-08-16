.class public final synthetic Lcom/android/tools/r8/internal/t21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Xu0;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Map;)V

    return-void
.end method
