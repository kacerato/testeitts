.class public final synthetic Lcom/android/tools/r8/internal/k41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/internal/m80;

.field public final synthetic e:Lcom/android/tools/r8/internal/m80;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/k41;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/internal/k41;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/k41;->d:Lcom/android/tools/r8/internal/m80;

    iput-object p4, p0, Lcom/android/tools/r8/internal/k41;->e:Lcom/android/tools/r8/internal/m80;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/k41;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/internal/k41;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/k41;->d:Lcom/android/tools/r8/internal/m80;

    iget-object v3, p0, Lcom/android/tools/r8/internal/k41;->e:Lcom/android/tools/r8/internal/m80;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/ZW;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
