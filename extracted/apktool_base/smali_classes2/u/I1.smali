.class public final synthetic Lu/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/naming/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/naming/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/I1;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lu/I1;->c:Ljava/util/Map;

    iput-object p3, p0, Lu/I1;->d:Lcom/android/tools/r8/naming/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lu/I1;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lu/I1;->c:Ljava/util/Map;

    iget-object v2, p0, Lu/I1;->d:Lcom/android/tools/r8/naming/b;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
