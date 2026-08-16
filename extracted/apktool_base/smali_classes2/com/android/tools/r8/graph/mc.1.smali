.class public final synthetic Lcom/android/tools/r8/graph/mc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Lcom/android/tools/r8/shaking/i;

.field public final synthetic d:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/mc;->b:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/graph/mc;->c:Lcom/android/tools/r8/shaking/i;

    iput-object p3, p0, Lcom/android/tools/r8/graph/mc;->d:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/mc;->b:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/graph/mc;->c:Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/graph/mc;->d:Lcom/android/tools/r8/internal/C7;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/Z4$c;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
