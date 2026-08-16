.class public final synthetic Lcom/android/tools/r8/graph/ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/k;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/origin/Origin;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/k;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/ue;->b:Lcom/android/tools/r8/graph/k;

    iput-object p2, p0, Lcom/android/tools/r8/graph/ue;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/ue;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object p4, p0, Lcom/android/tools/r8/graph/ue;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/ue;->b:Lcom/android/tools/r8/graph/k;

    iget-object v1, p0, Lcom/android/tools/r8/graph/ue;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/ue;->d:Lcom/android/tools/r8/origin/Origin;

    iget-object v3, p0, Lcom/android/tools/r8/graph/ue;->e:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/k;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
