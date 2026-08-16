.class public final synthetic Lcom/android/tools/r8/naming/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/graph/H0;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/d2;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/naming/d2;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/naming/d2;->d:Lcom/android/tools/r8/graph/H0;

    iput-object p4, p0, Lcom/android/tools/r8/naming/d2;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/d2;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/naming/d2;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/naming/d2;->d:Lcom/android/tools/r8/graph/H0;

    iget-object v3, p0, Lcom/android/tools/r8/naming/d2;->e:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/naming/K;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method
