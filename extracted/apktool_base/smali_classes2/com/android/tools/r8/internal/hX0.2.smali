.class public final synthetic Lcom/android/tools/r8/internal/hX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hX0;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hX0;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hX0;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hX0;->b:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
