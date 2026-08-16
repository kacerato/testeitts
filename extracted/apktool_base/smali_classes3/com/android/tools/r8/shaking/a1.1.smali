.class public final Lcom/android/tools/r8/shaking/a1;
.super Lcom/android/tools/r8/shaking/b1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/kR;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/kR;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/b1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/a1;->a:Lcom/android/tools/r8/internal/kR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/a1;->a:Lcom/android/tools/r8/internal/kR;

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/kR;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/a1;->a:Lcom/android/tools/r8/internal/kR;

    return-object v0
.end method
