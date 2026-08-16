.class public Lcb/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lcb/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcb/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "iterable",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcb/o<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcb/o$b;-><init>(Ljava/util/Iterator;Lcb/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcb/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "iterator",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcb/o<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcb/o$b;->d:Z

    .line 4
    iput-boolean v0, p0, Lcb/o$b;->e:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcb/o$b;->f:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcb/o$b;->b(Ljava/util/Iterator;Lcb/o;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;Lcb/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "iterable",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcb/o<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcb/o$b;->b(Ljava/util/Iterator;Lcb/o;)V

    return-void
.end method

.method public b(Ljava/util/Iterator;Lcb/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "iterator",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcb/o<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcb/o$b;->b:Ljava/util/Iterator;

    iput-object p2, p0, Lcb/o$b;->c:Lcb/o;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcb/o$b;->e:Z

    iput-boolean p1, p0, Lcb/o$b;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcb/o$b;->f:Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 4

    iget-boolean v0, p0, Lcb/o$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcb/o$b;->f:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-boolean v2, p0, Lcb/o$b;->e:Z

    :cond_2
    iget-object v0, p0, Lcb/o$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcb/o$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcb/o$b;->c:Lcb/o;

    invoke-interface {v3, v0}, Lcb/o;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcb/o$b;->f:Ljava/lang/Object;

    return v2

    :cond_3
    iput-boolean v2, p0, Lcb/o$b;->d:Z

    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcb/o$b;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcb/o$b;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcb/o$b;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcb/o$b;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcb/o$b;->e:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcb/o$b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcb/o$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "Cannot remove between a call to hasNext() and next()."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
