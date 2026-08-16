.class public final synthetic Lcom/android/tools/r8/internal/ap1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ap1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ap1;->a:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Ljava/util/Optional;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/om0;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Ljava/util/Optional;)V

    return-void
.end method
