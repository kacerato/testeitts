.class public LG8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG8/a$a;
    }
.end annotation


# instance fields
.field public a:LG8/a$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LG8/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:LG8/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LG8/a;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(LG8/a$a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "tittle"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LG8/a;->d:Ljava/util/List;

    .line 5
    iput-object p1, p0, LG8/a;->a:LG8/a$a;

    .line 6
    iput-object p2, p0, LG8/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "totalTittle"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LG8/a;->d:Ljava/util/List;

    .line 9
    sget-object v0, LG8/a$a;->Shader:LG8/a$a;

    iput-object v0, p0, LG8/a;->a:LG8/a$a;

    .line 10
    iput-object p1, p0, LG8/a;->b:Ljava/lang/String;

    .line 11
    iput-object p2, p0, LG8/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LG8/a;)LG8/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    iget-object v0, p0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, LG8/a;->e:LG8/a;

    return-object p0
.end method

.method public b(Ljava/util/List;)LG8/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LG8/a;",
            ">;)",
            "LG8/a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG8/a;

    invoke-virtual {p0, v0}, LG8/a;->a(LG8/a;)LG8/a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c(I)LG8/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG8/a;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LG8/a;->e()LG8/a;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()LG8/a;
    .locals 4

    new-instance v0, LG8/a;

    invoke-direct {v0}, LG8/a;-><init>()V

    iget-object v1, p0, LG8/a;->a:LG8/a$a;

    iput-object v1, v0, LG8/a;->a:LG8/a$a;

    iget-object v1, p0, LG8/a;->b:Ljava/lang/String;

    iput-object v1, v0, LG8/a;->b:Ljava/lang/String;

    iget-object v1, p0, LG8/a;->c:Ljava/lang/String;

    iput-object v1, v0, LG8/a;->c:Ljava/lang/String;

    iget-object v1, p0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG8/a;

    invoke-virtual {v2}, LG8/a;->e()LG8/a;

    move-result-object v2

    iput-object v0, v2, LG8/a;->e:LG8/a;

    iget-object v3, v0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LG8/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LG8/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()LG8/a;
    .locals 1

    iget-object v0, p0, LG8/a;->e:LG8/a;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG8/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LG8/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, LG8/a;->e:LG8/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LG8/a;->e:LG8/a;

    invoke-virtual {v1}, LG8/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LG8/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG8/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG8/a;->b:Ljava/lang/String;

    iput-object v0, p0, LG8/a;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, LG8/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()LG8/a$a;
    .locals 1

    iget-object v0, p0, LG8/a;->a:LG8/a$a;

    return-object v0
.end method

.method public k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "children"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LG8/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LG8/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public l(LG8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    iput-object p1, p0, LG8/a;->e:LG8/a;

    return-void
.end method
