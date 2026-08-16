.class public abstract Lcom/android/tools/r8/graph/g5;
.super Lcom/android/tools/r8/graph/Z4;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/Z4$c;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/Z4$c;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/Z4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/g5;->b:Lcom/android/tools/r8/graph/Z4$c;

    iput-object p2, p0, Lcom/android/tools/r8/graph/g5;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/graph/g5;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/tools/r8/graph/g5;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/D4;
    .locals 0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H4;
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/I4;
    .locals 0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 8
    iget-object p3, p0, Lcom/android/tools/r8/graph/g5;->b:Lcom/android/tools/r8/graph/Z4$c;

    if-eqz p3, :cond_0

    .line 9
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/graph/g5;->c:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/g5;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/graph/g5;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
