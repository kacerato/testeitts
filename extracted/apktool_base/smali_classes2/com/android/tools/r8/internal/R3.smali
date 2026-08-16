.class public final Lcom/android/tools/r8/internal/R3;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/I50;

.field public final synthetic d:Ljava/util/function/Consumer;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/android/tools/r8/internal/S3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/S3;Lcom/android/tools/r8/internal/I50;Lcom/android/tools/r8/internal/I50;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iput-object p3, p0, Lcom/android/tools/r8/internal/R3;->c:Lcom/android/tools/r8/internal/I50;

    iput-object p4, p0, Lcom/android/tools/r8/internal/R3;->d:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/R3;->b()Lcom/android/tools/r8/internal/x80;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/S3;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/HU0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/HU0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v2, v0}, Lcom/android/tools/r8/internal/y50;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/R3;->b()Lcom/android/tools/r8/internal/x80;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/S3;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/HU0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/HU0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0, v2, p2}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/R3;->d:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/S3;->h:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/R3;->b()Lcom/android/tools/r8/internal/x80;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/S3;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/HU0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/HU0;-><init>(Ljava/util/List;)V

    invoke-interface {p2, v0, v2, p1}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/R3;->b()Lcom/android/tools/r8/internal/x80;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/S3;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/HU0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/HU0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0, p2, p3, v2}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/R3;->e:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Lcom/android/tools/r8/internal/x80;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/S3;->g:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->c:Lcom/android/tools/r8/internal/I50;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/x80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R3;->f:Lcom/android/tools/r8/internal/S3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/IU0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/IU0;-><init>(Lcom/android/tools/r8/internal/x80;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method
