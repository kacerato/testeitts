.class public final synthetic Lcom/android/tools/r8/graph/n7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/F5;

.field public final synthetic c:Lcom/android/tools/r8/graph/k3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/n7;->b:Lcom/android/tools/r8/graph/F5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/n7;->c:Lcom/android/tools/r8/graph/k3;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/n7;->b:Lcom/android/tools/r8/graph/F5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/n7;->c:Lcom/android/tools/r8/graph/k3;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/F5;->a(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method
