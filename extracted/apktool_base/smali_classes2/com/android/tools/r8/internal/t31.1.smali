.class public final synthetic Lcom/android/tools/r8/internal/t31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/c4;

.field public final synthetic d:Lcom/android/tools/r8/internal/m80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/t31;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/t31;->c:Lcom/android/tools/r8/graph/c4;

    iput-object p3, p0, Lcom/android/tools/r8/internal/t31;->d:Lcom/android/tools/r8/internal/m80;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/t31;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/t31;->c:Lcom/android/tools/r8/graph/c4;

    iget-object v2, p0, Lcom/android/tools/r8/internal/t31;->d:Lcom/android/tools/r8/internal/m80;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/YX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;Ljava/util/Set;)V

    return-void
.end method
