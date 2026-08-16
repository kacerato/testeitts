.class public final synthetic Lcom/android/tools/r8/shaking/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/U0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/List;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/bb;->b:Lcom/android/tools/r8/shaking/U0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/bb;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/bb;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/bb;->b:Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/bb;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/bb;->d:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    return p1
.end method
