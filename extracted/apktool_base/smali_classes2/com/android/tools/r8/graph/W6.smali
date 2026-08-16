.class public final synthetic Lcom/android/tools/r8/graph/W6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/E0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/internal/eC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/W6;->b:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/W6;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/graph/W6;->d:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/W6;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/W6;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/graph/W6;->d:Lcom/android/tools/r8/internal/eC;

    check-cast p1, Lcom/android/tools/r8/graph/H3$e;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/List;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/H3$e;)V

    return-void
.end method
