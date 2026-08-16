.class public final synthetic Lcom/android/tools/r8/internal/a11;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/a11;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/a11;->a:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/WZ;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/F2;Ljava/util/Set;)V

    return-void
.end method
