.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;
.super LIc/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

.field public final j:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

.field public k:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

.field public final synthetic l:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "absolutePath",
            "parent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-direct {p0}, LIc/m;-><init>()V

    .line 2
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->e:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->g:Ljava/util/Set;

    .line 4
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    .line 5
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->d:Z

    .line 8
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->q1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "absolutePath",
            "directory",
            "parent"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-direct {p0}, LIc/m;-><init>()V

    .line 12
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->e:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->g:Ljava/util/Set;

    .line 14
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    .line 15
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->b:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->d:Z

    .line 17
    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    .line 18
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->q1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v2

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->d:Z

    return v0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->r1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->n()V

    :cond_1
    return-void
.end method

.method public o(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v3

    iput-boolean p1, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->o(Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public p(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->b:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->p(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
