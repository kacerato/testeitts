.class public final synthetic Lcom/android/tools/r8/internal/ps1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/rn0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/ir/optimize/a;

.field public final synthetic e:Lcom/android/tools/r8/internal/U6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/rn0;Ljava/util/List;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ps1;->b:Lcom/android/tools/r8/internal/rn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ps1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ps1;->d:Lcom/android/tools/r8/ir/optimize/a;

    iput-object p4, p0, Lcom/android/tools/r8/internal/ps1;->e:Lcom/android/tools/r8/internal/U6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ps1;->b:Lcom/android/tools/r8/internal/rn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ps1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ps1;->d:Lcom/android/tools/r8/ir/optimize/a;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ps1;->e:Lcom/android/tools/r8/internal/U6;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/rn0;->a(Ljava/util/List;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/U6;Ljava/util/Map$Entry;)V

    return-void
.end method
