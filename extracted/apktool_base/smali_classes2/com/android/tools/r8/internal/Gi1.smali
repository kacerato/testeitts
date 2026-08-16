.class public final synthetic Lcom/android/tools/r8/internal/Gi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/lY;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/lY;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gi1;->b:Lcom/android/tools/r8/internal/lY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gi1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gi1;->b:Lcom/android/tools/r8/internal/lY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gi1;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/List;Lcom/android/tools/r8/graph/n1;)V

    return-void
.end method
