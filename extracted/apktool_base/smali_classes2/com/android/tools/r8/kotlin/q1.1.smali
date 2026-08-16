.class public final synthetic Lcom/android/tools/r8/kotlin/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/V;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/shaking/N;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/q1;->b:Lcom/android/tools/r8/kotlin/V;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/q1;->c:Lcom/android/tools/r8/shaking/N;

    iput-boolean p3, p0, Lcom/android/tools/r8/kotlin/q1;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/q1;->b:Lcom/android/tools/r8/kotlin/V;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/q1;->c:Lcom/android/tools/r8/shaking/N;

    iget-boolean v2, p0, Lcom/android/tools/r8/kotlin/q1;->d:Z

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/kotlin/V;->a(Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/graph/H2;)V

    return-void
.end method
