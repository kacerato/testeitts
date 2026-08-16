.class public final Lcom/android/tools/r8/internal/oW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/qW;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/I0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ol;)I
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v0, p3}, Lcom/android/tools/r8/internal/eW;->newBuilderForField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v1, p3}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object p3

    .line 6
    check-cast p3, Lcom/android/tools/r8/internal/fW;

    if-eqz p3, :cond_0

    .line 7
    invoke-interface {v0, p3}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    .line 8
    :cond_0
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/eW;Lcom/android/tools/r8/internal/zv;)V

    .line 9
    invoke-interface {v0}, Lcom/android/tools/r8/internal/eW;->buildPartial()Lcom/android/tools/r8/internal/fW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vv;Lcom/android/tools/r8/internal/Cl;I)V
    .locals 1

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/vv;->d:Ljava/util/Map;

    new-instance v0, Lcom/android/tools/r8/internal/uv;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/uv;-><init>(Lcom/android/tools/r8/internal/Cl;I)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/eW;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fW;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v0, p3}, Lcom/android/tools/r8/internal/eW;->newBuilderForField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v1, p3}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/fW;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    :cond_0
    iget-object p3, p3, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget p3, p3, Lcom/android/tools/r8/internal/Ek;->d:I

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/tools/r8/internal/Be;->a(ILcom/android/tools/r8/internal/jW;Lcom/android/tools/r8/internal/zv;)V

    invoke-interface {v0}, Lcom/android/tools/r8/internal/eW;->buildPartial()Lcom/android/tools/r8/internal/fW;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oW;->a:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/eW;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;

    return-object p0
.end method
