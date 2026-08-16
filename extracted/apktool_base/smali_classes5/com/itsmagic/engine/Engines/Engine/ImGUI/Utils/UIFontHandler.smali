.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler$b;
    }
.end annotation


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static j:[I


# instance fields
.field public a:Ltb/a;

.field public b:Ltb/a;

.field public c:Ljava/lang/String;

.field public transient d:Ljava/lang/Runnable;

.field private fontFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private resolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x30

    const/16 v1, 0x40

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x20

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->c:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;ILF5/c$s0;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "value",
            "listener"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler$a;

    invoke-direct {v1, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler$a;-><init>(LF5/c$s0;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    return-object v0
.end method

.method public final c()Ltb/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltb/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    return-object v0
.end method

.method public d(LIc/h;)LIc/k;
    .locals 2
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

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public e()Ltb/a;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->c()Ltb/a;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->c()Ltb/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltb/a;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    return v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public j(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIFontHandler: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public k(Ltb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "font"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltb/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    return-void
.end method

.method public m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionID"
        }
    .end annotation

    if-ltz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid resolution ID"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onRequestDrawRunnable"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->d:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltb/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->resolutionID:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->j:[I

    aget p1, v0, p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    const-string v2, "/"

    const-string v3, ""

    const-string v4, "@@ASSET@@"

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, LP9/a;->p:Ltb/b;

    invoke-virtual {v2, v0, p1}, Ltb/b;->c(Ljava/lang/String;I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    goto :goto_0

    :cond_2
    sget-object v0, LP9/a;->p:Ltb/b;

    invoke-virtual {v0, p1}, Ltb/b;->a(I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    if-eqz v1, :cond_c

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_3
    sget-object v0, LP9/a;->p:Ltb/b;

    invoke-virtual {v0, p1}, Ltb/b;->a(I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v1}, Ltb/a;->e()I

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    invoke-virtual {v0}, Ltb/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->fontFile:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    sget-object v3, LP9/a;->p:Ltb/b;

    invoke-virtual {v3, v0, p1}, Ltb/b;->c(Ljava/lang/String;I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    if-eq p1, v2, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    sget-object v2, LP9/a;->p:Ltb/b;

    invoke-virtual {v2, p1}, Ltb/b;->a(I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    :cond_8
    :goto_2
    if-eqz v1, :cond_c

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    sget-object v1, LP9/a;->p:Ltb/b;

    invoke-virtual {v1, p1}, Ltb/b;->a(I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    if-eq p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a:Ltb/a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltb/a;->e()I

    move-result v0

    if-eq v0, p1, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    sget-object v1, LP9/a;->p:Ltb/b;

    invoke-virtual {v1, p1}, Ltb/b;->a(I)Ltb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b:Ltb/a;

    if-eq p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->i()V

    :cond_c
    :goto_4
    return-void
.end method
