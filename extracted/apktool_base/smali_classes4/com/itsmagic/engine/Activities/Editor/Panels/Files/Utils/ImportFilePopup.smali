.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;
    }
.end annotation


# static fields
.field public static a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LG4/e;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->c(LG4/e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    return-object v0
.end method

.method public static c(LG4/e;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LG4/e;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v5, "x"

    if-ge v3, v2, :cond_0

    aget v6, v1, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$m;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$m;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget v6, v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->maxResolutionID:I

    aget v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget v5, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->maxResolutionID:I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v6, "Texture resolution"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$n;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$n;-><init>()V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Auto generate normal maps"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$o;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$o;-><init>()V

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    const-string v5, "Normal map bias"

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$p;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$p;-><init>()V

    const-string v5, "Scale"

    sget-object v6, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$q;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$q;-><init>()V

    const-string v5, "Set static if not animated"

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$r;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$r;-><init>(LG4/e;)V

    const-string v5, "Explode pack"

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->explodePack:Z

    if-nez v1, :cond_1

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$s;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$s;-><init>()V

    const-string v5, "Generate bake collision if not animated"

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$t;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$t;-><init>()V

    const-string v5, "Delete identity objects"

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TRANSPARENCY_MODE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->transparencyMode:Lec/a;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$a;

    invoke-direct {v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$a;-><init>()V

    const-class v6, Lec/a;

    invoke-static {v1, v6, v2, v5}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXTURE_FILTER:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$b;

    invoke-direct {v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$b;-><init>()V

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-static {v1, v6, v2, v5}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BONE_CORRECTION_MODE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->boneCorrectionMode:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$c;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$c;-><init>(LG4/e;)V

    const-class p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;

    invoke-static {v1, p0, v2, v5}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->boneCorrectionMode:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;->Split:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;

    if-ne p0, v1, :cond_2

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$d;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$d;-><init>()V

    const-string v2, "Max bones per chunk"

    invoke-direct {p0, v1, v2, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$e;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$e;-><init>()V

    const-string v2, "Import material files"

    invoke-direct {p0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$f;-><init>()V

    const-string v2, "Import anim files"

    invoke-direct {p0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$g;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$g;-><init>()V

    const-string v2, "Import object files"

    invoke-direct {p0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$h;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$h;-><init>()V

    const-string v2, "Import vertex files"

    invoke-direct {p0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$i;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$i;-><init>()V

    const-string v2, "Import texture files"

    invoke-direct {p0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$j;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$j;-><init>()V

    const-string v2, "Ignore unused files"

    invoke-direct {p0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "listener"
        }
    .end annotation

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;-><init>()V

    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$k;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V

    const-string p1, "Import 3d model"

    const/16 p2, 0x118

    const/16 v0, 0x15e

    invoke-static {p1, p2, v0, p0}, LG4/e;->x1(Ljava/lang/String;IILG4/f;)LG4/e;

    return-void
.end method
