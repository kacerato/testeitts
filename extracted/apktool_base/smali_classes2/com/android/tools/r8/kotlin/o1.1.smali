.class public final synthetic Lcom/android/tools/r8/kotlin/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/V;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/shaking/N;ZLjava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/o1;->b:Lcom/android/tools/r8/kotlin/V;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/o1;->c:Lcom/android/tools/r8/shaking/N;

    iput-boolean p3, p0, Lcom/android/tools/r8/kotlin/o1;->d:Z

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/o1;->e:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/kotlin/o1;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o1;->b:Lcom/android/tools/r8/kotlin/V;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/o1;->c:Lcom/android/tools/r8/shaking/N;

    iget-boolean v2, p0, Lcom/android/tools/r8/kotlin/o1;->d:Z

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/o1;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/kotlin/o1;->f:Ljava/util/Set;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/kotlin/V;->a(Lcom/android/tools/r8/shaking/N;ZLjava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
