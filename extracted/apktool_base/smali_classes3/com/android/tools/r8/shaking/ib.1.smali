.class public final synthetic Lcom/android/tools/r8/shaking/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/U0;

.field public final synthetic b:Lcom/android/tools/r8/graph/V;

.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/U0;Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ib;->a:Lcom/android/tools/r8/shaking/U0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/ib;->b:Lcom/android/tools/r8/graph/V;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/ib;->c:Ljava/lang/Iterable;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/ib;->d:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ib;->a:Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/ib;->b:Lcom/android/tools/r8/graph/V;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/ib;->c:Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/ib;->d:Ljava/util/function/Predicate;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/fv;

    move-object v5, p2

    check-cast v5, Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fv;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method
