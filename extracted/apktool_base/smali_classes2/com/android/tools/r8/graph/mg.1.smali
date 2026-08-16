.class public final synthetic Lcom/android/tools/r8/graph/mg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/t5;

.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic d:Lcom/android/tools/r8/internal/Yx0;

.field public final synthetic e:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/t5;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/mg;->b:Lcom/android/tools/r8/graph/t5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/mg;->c:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/tools/r8/graph/mg;->d:Lcom/android/tools/r8/internal/Yx0;

    iput-object p4, p0, Lcom/android/tools/r8/graph/mg;->e:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/mg;->b:Lcom/android/tools/r8/graph/t5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/mg;->c:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/android/tools/r8/graph/mg;->d:Lcom/android/tools/r8/internal/Yx0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/mg;->e:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/t5;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
