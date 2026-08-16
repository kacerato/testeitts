.class public final Lcom/android/tools/r8/internal/pt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/YQ;

.field public final b:Lcom/android/tools/r8/internal/YQ;

.field public final c:Lcom/android/tools/r8/internal/YQ;

.field public final d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pt0;->a:Lcom/android/tools/r8/internal/YQ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pt0;->b:Lcom/android/tools/r8/internal/YQ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pt0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/pt0;->a:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/pt0;->b:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/pt0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/pt0;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/pt0;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mu0;

    iget v4, v3, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v5, v3, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v6, v3, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/pt0;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/pt0;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mu0;

    iget v4, v3, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v5, v3, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v6, v3, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v1}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
