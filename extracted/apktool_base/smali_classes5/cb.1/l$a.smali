.class public Lcb/l$a;
.super Lcb/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcb/l$d<",
        "TK;TV;",
        "Lcb/l$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public g:Lcb/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/l$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


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
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcb/l$d;-><init>(Lcb/l;)V

    new-instance p1, Lcb/l$b;

    invoke-direct {p1}, Lcb/l$b;-><init>()V

    iput-object p1, p0, Lcb/l$a;->g:Lcb/l$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcb/l$d;->b()V

    return-void
.end method

.method public d()Lcb/l$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$a<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Lcb/l$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcb/l$d;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcb/l$d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcb/l$d;->c:Lcb/l;

    iget-object v1, v0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcb/l$a;->g:Lcb/l$b;

    iget v3, p0, Lcb/l$d;->d:I

    aget-object v1, v1, v3

    iput-object v1, v2, Lcb/l$b;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcb/l;->d:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iput-object v0, v2, Lcb/l$b;->b:Ljava/lang/Object;

    iput v3, p0, Lcb/l$d;->e:I

    invoke-virtual {p0}, Lcb/l$d;->a()V

    iget-object v0, p0, Lcb/l$a;->g:Lcb/l$b;

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

    invoke-virtual {p0}, Lcb/l$a;->d()Lcb/l$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcb/l$a;->g()Lcb/l$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcb/l$d;->remove()V

    return-void
.end method
