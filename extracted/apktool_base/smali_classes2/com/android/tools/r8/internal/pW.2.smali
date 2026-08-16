.class public final Lcom/android/tools/r8/internal/pW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/qW;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Kw;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Kw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pW;->a:Lcom/android/tools/r8/internal/Kw;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Ol;)I
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fW;
    .locals 0

    const/4 p1, 0x0

    .line 3
    throw p1
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
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pW;->a:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Kw;->c(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fW;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pW;->a:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)V

    return-object p0
.end method
