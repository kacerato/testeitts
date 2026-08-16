.class public final synthetic Lcom/android/tools/r8/internal/Tb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tb1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tb1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Tb1;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tb1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tb1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tb1;->d:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/gZ;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
