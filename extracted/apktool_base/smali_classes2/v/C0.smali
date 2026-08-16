.class public final synthetic Lv/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/f0;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/internal/U6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/f0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/C0;->b:Lcom/android/tools/r8/ir/optimize/f0;

    iput-object p2, p0, Lv/C0;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lv/C0;->d:Lcom/android/tools/r8/internal/U6;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lv/C0;->b:Lcom/android/tools/r8/ir/optimize/f0;

    iget-object v1, p0, Lv/C0;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lv/C0;->d:Lcom/android/tools/r8/internal/U6;

    check-cast p1, Lcom/android/tools/r8/graph/p5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/optimize/f0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/p5;)Z

    move-result p1

    return p1
.end method
