.class public final synthetic Lcom/android/tools/r8/shaking/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/function/Predicate;

.field public final synthetic d:Lcom/android/tools/r8/internal/et;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/et;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/gf;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/gf;->c:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/gf;->d:Lcom/android/tools/r8/internal/et;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/gf;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/gf;->c:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/gf;->d:Lcom/android/tools/r8/internal/et;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/t2;->a(Ljava/util/Set;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/et;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
