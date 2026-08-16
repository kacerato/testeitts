.class public final synthetic Lcom/android/tools/r8/internal/nJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/J9;

.field public final synthetic c:Lcom/android/tools/r8/internal/W9;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/J9;Lcom/android/tools/r8/internal/W9;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ0;->b:Lcom/android/tools/r8/internal/J9;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nJ0;->c:Lcom/android/tools/r8/internal/W9;

    iput-object p3, p0, Lcom/android/tools/r8/internal/nJ0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ0;->b:Lcom/android/tools/r8/internal/J9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nJ0;->c:Lcom/android/tools/r8/internal/W9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/nJ0;->d:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    check-cast p2, Lcom/android/tools/r8/internal/H9;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/W9;Ljava/util/Map;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
