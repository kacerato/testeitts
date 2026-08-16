.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = ".ipm"


# instance fields
.field private final importedFiles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private packID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->importedFiles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "name",
            "version"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->importedFiles:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->packID:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->name:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->version:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
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
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;",
            ">;)V"
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

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->importedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->h()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "filter"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->h()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 2
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
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    invoke-interface {p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->importedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    return-object p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->importedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->packID:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->version:I

    return v0
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->name:Ljava/lang/String;

    return-void
.end method

.method public n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->version:I

    return-void
.end method
