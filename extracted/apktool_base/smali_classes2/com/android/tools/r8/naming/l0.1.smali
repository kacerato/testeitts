.class public final Lcom/android/tools/r8/naming/l0;
.super Lcom/android/tools/r8/naming/h0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/naming/k0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3;->B:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/o3;->I:Z

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/naming/h0;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    new-instance p1, Lcom/android/tools/r8/naming/k0;

    invoke-direct {p1}, Lcom/android/tools/r8/naming/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/l0;->e:Lcom/android/tools/r8/naming/k0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Predicate;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/l0;->e:Lcom/android/tools/r8/naming/k0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/naming/h0;->a([CLcom/android/tools/r8/naming/L;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method
