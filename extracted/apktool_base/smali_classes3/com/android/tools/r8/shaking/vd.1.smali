.class public final synthetic Lcom/android/tools/r8/shaking/vd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Ljava/util/function/Predicate;

.field public final synthetic d:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/vd;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/vd;->c:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/vd;->d:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/vd;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/vd;->c:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/vd;->d:Lcom/android/tools/r8/internal/C7;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/l2;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
