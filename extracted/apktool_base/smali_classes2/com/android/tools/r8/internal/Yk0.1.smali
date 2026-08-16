.class public final Lcom/android/tools/r8/internal/Yk0;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/shaking/o2;

.field public final c:Lcom/android/tools/r8/synthesis/J;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Yk0;->b:Lcom/android/tools/r8/shaking/o2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yk0;->c:Lcom/android/tools/r8/synthesis/J;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Yk0;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yk0;->b:Lcom/android/tools/r8/shaking/o2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/tools/r8/shaking/o2;->b()Lcom/android/tools/r8/shaking/o2;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/shaking/o2;->f:Lcom/android/tools/r8/shaking/o2;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/tools/r8/shaking/o2;->f:Lcom/android/tools/r8/shaking/o2;

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yk0;->b:Lcom/android/tools/r8/shaking/o2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yk0;->c:Lcom/android/tools/r8/synthesis/J;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;

    move-result-object v0

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/shaking/n2;

    move-result-object p1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4

    return v1

    :cond_4
    sget-object p1, Lcom/android/tools/r8/shaking/n2;->b:Lcom/android/tools/r8/shaking/n2;

    if-eq v0, p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameMainDexGroupPolicy"

    return-object v0
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yk0;->b:Lcom/android/tools/r8/shaking/o2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/tools/r8/shaking/o2;->b()Lcom/android/tools/r8/shaking/o2;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/shaking/o2;->f:Lcom/android/tools/r8/shaking/o2;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/tools/r8/shaking/o2;->f:Lcom/android/tools/r8/shaking/o2;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
