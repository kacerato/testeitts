.class public Lcb/l$e;
.super Lcb/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcb/l$d<",
        "Ljava/lang/Object;",
        "TV;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcb/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/l<",
            "*TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcb/l$d;-><init>(Lcb/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcb/l$d;->b()V

    return-void
.end method

.method public d()Lcb/l$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$e<",
            "TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Lcb/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/b<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcb/b;

    iget-object v1, p0, Lcb/l$d;->c:Lcb/l;

    iget v1, v1, Lcb/l;->b:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcb/b;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcb/l$e;->h(Lcb/b;)Lcb/b;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcb/b;)Lcb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "TV;>;)",
            "Lcb/b<",
            "TV;>;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lcb/l$d;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcb/l$e;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcb/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcb/l$d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcb/l$d;->b:Z

    return v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcb/l$e;->d()Lcb/l$e;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation build Lcb/j;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lcb/l$d;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcb/l$d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcb/l$d;->c:Lcb/l;

    iget-object v0, v0, Lcb/l;->d:[Ljava/lang/Object;

    iget v1, p0, Lcb/l$d;->d:I

    aget-object v0, v0, v1

    iput v1, p0, Lcb/l$d;->e:I

    invoke-virtual {p0}, Lcb/l$d;->a()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcb/l$d;->remove()V

    return-void
.end method
