.class public final synthetic Lcom/android/tools/r8/internal/Ps1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sd;

.field public final synthetic c:Lcom/android/tools/r8/graph/l1;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ps1;->b:Lcom/android/tools/r8/internal/sd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ps1;->c:Lcom/android/tools/r8/graph/l1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ps1;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ps1;->b:Lcom/android/tools/r8/internal/sd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ps1;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ps1;->d:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/l1;Ljava/util/Set;Lcom/android/tools/r8/graph/L2;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
