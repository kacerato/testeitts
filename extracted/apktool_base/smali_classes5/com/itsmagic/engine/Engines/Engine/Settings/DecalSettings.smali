.class public Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;
    }
.end annotation


# instance fields
.field private final decals:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;",
            ">;"
        }
    .end annotation
.end field

.field private maxDecals:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private resolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private textures:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->resolutionID:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    const/16 v0, 0x10

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->maxDecals:I

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->resolutionID:I

    return p1
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->maxDecals:I

    return p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->maxDecals:I

    return p1
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->p(ILjava/lang/String;)V

    return-void
.end method

.method public g(LIc/h;)LIc/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public h(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->resolutionID:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)V

    const-string v2, "Resolution"

    invoke-static {v2, p1, v1}, LF5/c;->v(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string p2, "Max decals"

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const/4 v3, 0x0

    invoke-direct {p1, v1, p2, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->maxDecals:I

    if-ge v3, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Decal ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->c(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    if-le p2, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->r(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    invoke-direct {v4, p0, p1, p2, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f0c00fb

    invoke-direct {v2, v4, p1, v1}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, LC5/b;

    const-string p2, "All textures are resized to the resolution of the decals due to the packaging method.\nTexture filter settings are not preserved; use the decalPixel method on shaders if you want."

    const/16 v1, 0xc

    invoke-direct {p1, p2, v1}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->maxDecals:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->resolutionID:I

    return v0
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->textures:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->textures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    invoke-direct {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->textures:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public l(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLACING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->b(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public n(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDecals"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->maxDecals:I

    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionID"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->resolutionID:I

    return-void
.end method

.method public p(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "ipp"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->b(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public q(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "name"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->d(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public r(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$Decal;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->decals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
