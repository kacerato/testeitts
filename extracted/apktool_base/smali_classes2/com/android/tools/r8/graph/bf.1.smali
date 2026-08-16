.class public final synthetic Lcom/android/tools/r8/graph/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/o3;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/o3;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/bf;->b:Lcom/android/tools/r8/graph/o3;

    iput-object p2, p0, Lcom/android/tools/r8/graph/bf;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/bf;->b:Lcom/android/tools/r8/graph/o3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/bf;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/o3;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    return p1
.end method
