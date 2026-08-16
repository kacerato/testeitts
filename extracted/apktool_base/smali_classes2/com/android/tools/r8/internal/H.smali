.class public abstract Lcom/android/tools/r8/internal/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Lcom/android/tools/r8/internal/H;

.field public e:Lcom/android/tools/r8/internal/H;

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/H;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/H;->f:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p1, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mu0;

    .line 5
    new-instance v4, Lcom/android/tools/r8/internal/mu0;

    iget v5, v3, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v6, v3, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v7, v3, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 11
    iget-object v2, p1, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/mu0;

    .line 12
    new-instance v3, Lcom/android/tools/r8/internal/mu0;

    iget v4, v2, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v5, v2, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v6, v2, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/DX;)V
.end method

.method public final b(Lcom/android/tools/r8/internal/DX;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/H;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mu0;

    iget v4, v3, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v5, v3, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v6, v3, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/H;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mu0;

    iget v4, v3, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v5, v3, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v6, v3, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v1}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
