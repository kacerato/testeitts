.class public final Lcom/android/tools/r8/shaking/Z0;
.super Lcom/android/tools/r8/shaking/b1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/b1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z0;->a:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z0;->a:Lcom/android/tools/r8/graph/H2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/Z0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
