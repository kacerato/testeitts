.class public final synthetic Lu/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/k;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/internal/C7;

.field public final synthetic e:Lcom/android/tools/r8/graph/u1;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/List;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/u1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/D0;->b:Lcom/android/tools/r8/dex/k;

    iput-object p2, p0, Lu/D0;->c:Ljava/util/List;

    iput-object p3, p0, Lu/D0;->d:Lcom/android/tools/r8/internal/C7;

    iput-object p4, p0, Lu/D0;->e:Lcom/android/tools/r8/graph/u1;

    iput-object p5, p0, Lu/D0;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lu/D0;->b:Lcom/android/tools/r8/dex/k;

    iget-object v1, p0, Lu/D0;->c:Ljava/util/List;

    iget-object v2, p0, Lu/D0;->d:Lcom/android/tools/r8/internal/C7;

    iget-object v3, p0, Lu/D0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v4, p0, Lu/D0;->f:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/dex/W;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/List;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/u1;Ljava/util/List;Lcom/android/tools/r8/dex/W;)V

    return-void
.end method
