.class public final synthetic Lcom/android/tools/r8/internal/pc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/h40;

.field public final synthetic c:Lcom/android/tools/r8/internal/Yx0;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/h40;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pc1;->b:Lcom/android/tools/r8/internal/h40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pc1;->c:Lcom/android/tools/r8/internal/Yx0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pc1;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/pc1;->b:Lcom/android/tools/r8/internal/h40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pc1;->c:Lcom/android/tools/r8/internal/Yx0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pc1;->d:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/h40;->a(Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
