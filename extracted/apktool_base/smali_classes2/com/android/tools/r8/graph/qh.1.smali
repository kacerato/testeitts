.class public final synthetic Lcom/android/tools/r8/graph/qh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/w5;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/w5;Ljava/util/Set;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/qh;->b:Lcom/android/tools/r8/graph/w5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/qh;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/graph/qh;->d:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/qh;->b:Lcom/android/tools/r8/graph/w5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/qh;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/graph/qh;->d:Ljava/util/LinkedHashSet;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/w5;->b(Ljava/util/Set;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
