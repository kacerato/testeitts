.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SFile"
.end annotation


# instance fields
.field final files:Ljava/util/List;
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

.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field originalPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "originalPath"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->files:Ljava/util/List;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->originalPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)V
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

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

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

.method public b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$a;)V
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

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

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

.method public c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->originalPath:Ljava/lang/String;

    return-object v0
.end method
