.class public final Lcom/android/tools/r8/internal/Xk0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/shaking/o2;

.field public final c:Lcom/android/tools/r8/synthesis/J;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xk0;->b:Lcom/android/tools/r8/shaking/o2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xk0;->c:Lcom/android/tools/r8/synthesis/J;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xk0;->b:Lcom/android/tools/r8/shaking/o2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xk0;->c:Lcom/android/tools/r8/synthesis/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v0, v0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xk0;->b:Lcom/android/tools/r8/shaking/o2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xk0;->c:Lcom/android/tools/r8/synthesis/J;

    sget-boolean v3, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-static {v3, v4, v2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/shaking/n2;->b:Lcom/android/tools/r8/shaking/n2;

    if-ne p1, v0, :cond_2

    return-object v1

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameMainDexGroup"

    return-object v0
.end method
