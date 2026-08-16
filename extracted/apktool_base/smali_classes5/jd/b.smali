.class public Ljd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljd/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljd/b$a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljd/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

.field public f:Ljava/lang/Object;

.field public g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljd/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 3
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljd/b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Ljd/b;->p()V

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
            "path",
            "name"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 8
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Ljd/b;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Ljd/b;->p()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "name",
            "settings"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 13
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Ljd/b;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    .line 16
    invoke-virtual {p0}, Ljd/b;->p()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;Ljd/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "name",
            "settings",
            "type"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 24
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Ljd/b;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    .line 27
    iput-object p4, p0, Ljd/b;->c:Ljd/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;Ljd/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "name",
            "files",
            "settings",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljd/b;",
            ">;",
            "Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;",
            "Ljd/b$a;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 38
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Ljd/b;->d:Ljava/util/List;

    .line 40
    iput-object p2, p0, Ljd/b;->b:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    .line 42
    iput-object p5, p0, Ljd/b;->c:Ljd/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "name",
            "files",
            "settings",
            "isDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljd/b;",
            ">;",
            "Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;",
            "Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 30
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Ljd/b;->d:Ljava/util/List;

    .line 32
    iput-object p2, p0, Ljd/b;->b:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    if-eqz p5, :cond_0

    .line 34
    sget-object p1, Ljd/b$a;->Directory:Ljd/b$a;

    iput-object p1, p0, Ljd/b;->c:Ljd/b$a;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljd/b;->p()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljd/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "name",
            "type"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Ljd/b;->g:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 19
    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Ljd/b;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Ljd/b;->c:Ljd/b$a;

    return-void
.end method

.method public static l(Landroid/widget/ImageView;Ljd/b;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "o",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LIc/l;->k(Landroid/widget/ImageView;Ljd/b;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljd/b;
    .locals 7

    new-instance v6, Ljd/b;

    iget-object v1, p0, Ljd/b;->a:Ljava/lang/String;

    iget-object v2, p0, Ljd/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljd/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljd/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->a()Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    move-result-object v4

    iget-object v5, p0, Ljd/b;->c:Ljd/b$a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljd/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;Ljd/b$a;)V

    return-object v6
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ljd/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljd/b;->d:Ljava/util/List;

    iput-object v0, p0, Ljd/b;->a:Ljava/lang/String;

    iput-object v0, p0, Ljd/b;->c:Ljd/b$a;

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljd/b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljd/b;->a()Ljd/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljd/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljd/b;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Ljd/b;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ljd/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljd/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljd/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;
    .locals 2

    iget-object v0, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;-><init>(IZ)V

    iput-object v0, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    :cond_0
    iget-object v0, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    return-object v0
.end method

.method public h()Ljd/b$a;
    .locals 1

    iget-object v0, p0, Ljd/b;->c:Ljd/b$a;

    return-object v0
.end method

.method public i()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Ljd/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljd/b;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Ljd/b;->d:Ljava/util/List;

    invoke-virtual {p0}, Ljd/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljd/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljd/b;->i()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    iput-object p1, p0, Ljd/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljd/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljd/b;->d:Ljava/util/List;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Ljd/b;->b:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iput-object p1, p0, Ljd/b;->a:Ljava/lang/String;

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settings"
        }
    .end annotation

    iput-object p1, p0, Ljd/b;->e:Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    return-void
.end method

.method public p()V
    .locals 0

    invoke-static {p0}, LIc/l;->f(Ljd/b;)V

    return-void
.end method

.method public q(Ljd/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Ljd/b;->c:Ljd/b$a;

    return-void
.end method

.method public r()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljd/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljd/b;->c:Ljd/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
