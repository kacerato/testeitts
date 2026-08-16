.class public final synthetic Lcom/android/tools/r8/internal/cz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Aj;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cz0;->a:Lcom/android/tools/r8/internal/Aj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cz0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cz0;->a:Lcom/android/tools/r8/internal/Aj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cz0;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
