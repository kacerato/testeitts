.class public final synthetic Lcom/android/tools/r8/internal/Sx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/wj0;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/wj0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sx1;->a:Lcom/android/tools/r8/internal/wj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Sx1;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sx1;->a:Lcom/android/tools/r8/internal/wj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sx1;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/wj0;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
