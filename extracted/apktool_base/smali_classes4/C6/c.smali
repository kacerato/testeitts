.class public LC6/c;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/text/TextWatcher;

.field public f:Landroid/widget/PopupWindow;

.field public g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

.field public h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Z

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public final p:LK6/a;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LC6/c;->e:Landroid/text/TextWatcher;

    iput-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    iput-object v0, p0, LC6/c;->g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    iput-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, LC6/c;->i:Z

    iput-boolean v0, p0, LC6/c;->j:Z

    iput-boolean v0, p0, LC6/c;->k:Z

    const-string v1, ""

    iput-object v1, p0, LC6/c;->l:Ljava/lang/String;

    iput v0, p0, LC6/c;->m:I

    iput v0, p0, LC6/c;->n:I

    iput v0, p0, LC6/c;->o:I

    new-instance v1, LK6/a;

    invoke-direct {v1}, LK6/a;-><init>()V

    iput-object v1, p0, LC6/c;->p:LK6/a;

    iput v0, p0, LC6/c;->q:I

    iput v0, p0, LC6/c;->r:I

    return-void
.end method

.method public static synthetic A(LC6/c;I)I
    .locals 0

    iput p1, p0, LC6/c;->m:I

    return p1
.end method

.method public static synthetic B(LC6/c;)I
    .locals 0

    iget p0, p0, LC6/c;->n:I

    return p0
.end method

.method public static synthetic C(LC6/c;I)I
    .locals 0

    iput p1, p0, LC6/c;->n:I

    return p1
.end method

.method public static synthetic D(LC6/c;)I
    .locals 0

    iget p0, p0, LC6/c;->o:I

    return p0
.end method

.method public static synthetic E(LC6/c;I)I
    .locals 0

    iput p1, p0, LC6/c;->o:I

    return p1
.end method

.method public static synthetic F(LC6/c;)Z
    .locals 0

    iget-boolean p0, p0, LC6/c;->j:Z

    return p0
.end method

.method public static synthetic G(LC6/c;)Z
    .locals 0

    iget-boolean p0, p0, LC6/c;->i:Z

    return p0
.end method

.method public static synthetic H(LC6/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LC6/c;->i:Z

    return p1
.end method

.method public static synthetic I(LC6/c;)V
    .locals 0

    invoke-virtual {p0}, LC6/c;->R()V

    return-void
.end method

.method public static synthetic J(LC6/c;)LK6/a;
    .locals 0

    iget-object p0, p0, LC6/c;->p:LK6/a;

    return-object p0
.end method

.method private X()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LC6/d;

    new-instance v2, LC6/c$r;

    invoke-direct {v2, p0}, LC6/c$r;-><init>(LC6/c;)V

    invoke-direct {v1, v2}, LC6/d;-><init>(LF6/b;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setDefaultConfigs()V

    invoke-direct {p0}, LC6/c;->b0()V

    invoke-virtual {p0}, LC6/c;->c0()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    new-instance v0, LC6/c$s;

    invoke-direct {v0, p0}, LC6/c$s;-><init>(LC6/c;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setOnTextChangeListener(Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;)V

    return-void
.end method

.method private b0()V
    .locals 1

    new-instance v0, LC6/c$j;

    invoke-direct {v0, p0}, LC6/c$j;-><init>(LC6/c;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setRequestLineTips(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;)V

    return-void
.end method

.method public static synthetic o(LC6/c;Z)V
    .locals 0

    invoke-virtual {p0, p1}, LC6/c;->Y(Z)V

    return-void
.end method

.method public static synthetic p(LC6/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LC6/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(LC6/c;)Z
    .locals 0

    iget-boolean p0, p0, LC6/c;->k:Z

    return p0
.end method

.method public static synthetic r(LC6/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LC6/c;->k:Z

    return p1
.end method

.method public static synthetic s(LC6/c;)V
    .locals 0

    invoke-virtual {p0}, LC6/c;->a0()V

    return-void
.end method

.method public static synthetic t(LC6/c;)V
    .locals 0

    invoke-virtual {p0}, LC6/c;->f0()V

    return-void
.end method

.method public static synthetic u(LC6/c;)V
    .locals 0

    invoke-virtual {p0}, LC6/c;->Z()V

    return-void
.end method

.method public static synthetic v(LC6/c;IIIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LC6/c;->e0(IIIZ)V

    return-void
.end method

.method public static synthetic w(LC6/c;)V
    .locals 0

    invoke-virtual {p0}, LC6/c;->d0()V

    return-void
.end method

.method public static synthetic x(LC6/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LC6/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic y(LC6/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LC6/c;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic z(LC6/c;)I
    .locals 0

    iget p0, p0, LC6/c;->m:I

    return p0
.end method


# virtual methods
.method public final K(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "editorView"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_1

    new-instance v0, LC6/c$c;

    invoke-direct {v0, p0}, LC6/c$c;-><init>(LC6/c;)V

    iput-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    return-void
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1, v1}, LC6/c;->U(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0, p1, v1}, LC6/c;->P(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v1, :cond_4

    return-object p1

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-eq v3, v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final M(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    const/4 v0, -0x1

    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p1, 0x0

    :goto_0
    array-length v3, v0

    if-ge p1, v3, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v3, v0, p1

    invoke-virtual {p0, v3}, LC6/c;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorView"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LC6/c;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 1

    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method public final P(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "annotationStart"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, LC6/c;->Q(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_3
    return p2

    :cond_4
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public final Q(Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "openIndex"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_2

    :cond_0
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    if-ne v4, v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_2
    const/16 v6, 0x22

    if-eq v4, v6, :cond_5

    const/16 v6, 0x27

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0x28

    if-ne v4, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/16 v6, 0x29

    if-ne v4, v6, :cond_6

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_6

    add-int/2addr p2, v5

    return p2

    :cond_5
    :goto_1
    move v1, v4

    :cond_6
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method public final R()V
    .locals 13

    const-string v0, "\n"

    const-string v1, "// @IMPORT@// "

    const-string v2, "import "

    const-string v3, ""

    :try_start_0
    const-string v4, "/*~@@_-CURSOR-_@@~*/"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCursorPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v6, p0, LC6/c;->d:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v8}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interface "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v8, v7

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object v3, v5

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "public class REFACTOR{\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n}"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/google/googlejavaformat/java/Formatter;

    invoke-direct {v6}, Lorg/google/googlejavaformat/java/Formatter;-><init>()V

    invoke-virtual {v6, v5}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v8, :cond_7

    const/16 v8, 0x17

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v8, v7

    move v10, v8

    move-object v7, v3

    :goto_2
    array-length v11, v6

    if-ge v8, v11, :cond_6

    aget-object v11, v6, v8

    if-ge v8, v9, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_4
    if-lez v10, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move-object v6, v7

    :cond_7
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LC6/c;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setCursorPosition(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_4
    move-object v3, v6

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAILED CODE:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 2

    iget-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    iget-object v1, p0, LC6/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    :cond_0
    iget-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, LC6/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LC6/c;->d:Ljava/lang/String;

    invoke-static {v0}, Ld8/j;->J(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iput-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v0, :cond_1

    new-instance v1, LC6/c$l;

    invoke-direct {v1, p0}, LC6/c$l;-><init>(LC6/c;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Failed to find JavaMetaInfo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    return-object v0
.end method

.method public final T(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LM7/g;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LM7/m;

    new-instance v1, LC6/c$d;

    invoke-direct {v1, p0}, LC6/c$d;-><init>(LC6/c;)V

    const v2, 0x7f0700d9

    const-string v3, "Copy"

    invoke-direct {v0, v2, v3, v1, p1}, LM7/m;-><init>(ILjava/lang/String;LM7/n;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/m;

    new-instance v1, LC6/c$e;

    invoke-direct {v1, p0}, LC6/c$e;-><init>(LC6/c;)V

    const v2, 0x7f070214

    const-string v3, "Cut"

    invoke-direct {v0, v2, v3, v1, p1}, LM7/m;-><init>(ILjava/lang/String;LM7/n;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v2}, LM7/k;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v2, LC6/c$f;

    invoke-direct {v2, p0}, LC6/c$f;-><init>(LC6/c;)V

    sget-object v3, LM7/c$b;->Disconnected:LM7/c$b;

    const v4, 0x7f07021a

    invoke-direct {v0, v4, v2, v3, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {v0, v4}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v4, LC6/c$g;

    invoke-direct {v4, p0}, LC6/c$g;-><init>(LC6/c;)V

    const v5, 0x7f07021b

    invoke-direct {v0, v5, v4, v3, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v0, v2}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/m;

    new-instance v2, LC6/c$h;

    invoke-direct {v2, p0}, LC6/c$h;-><init>(LC6/c;)V

    const v3, 0x7f070219

    const-string v4, "Select all"

    invoke-direct {v0, v3, v4, v2, p1}, LM7/m;-><init>(ILjava/lang/String;LM7/n;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/k;

    invoke-static {v1, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/m;

    new-instance v1, LC6/c$i;

    invoke-direct {v1, p0}, LC6/c$i;-><init>(LC6/c;)V

    const v2, 0x7f0701d4

    invoke-direct {v0, v2, v1, p1}, LM7/m;-><init>(ILM7/n;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final U(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "annotationStart"
        }
    .end annotation

    add-int/lit8 v0, p2, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    const-string v1, "@interface"

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq v0, p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public V(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, LC6/c;->init()V

    invoke-virtual {p0}, LC6/c;->unload()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LC6/c;->d:Ljava/lang/String;

    sget-object v1, LW7/b;->j:Ld8/j;

    sget-boolean v1, Ld8/j;->B:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, LC6/c;->unload()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->upperCommunication:Ly6/f;

    sget-object v0, Ly6/c$l;->MissingJava:Ly6/c$l;

    invoke-interface {p1, v0}, Ly6/f;->a(Ly6/c$l;)Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, LC6/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p1, "//"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LC6/c;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, LC6/c;->W()V

    :goto_0
    return-void
.end method

.method public final W()V
    .locals 2

    iget-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    :cond_0
    iput-object v1, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v0, p0, LC6/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, LC6/c;->d0()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->recompileWhenOpenScript:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LC6/c;->Y(Z)V

    :cond_1
    new-instance v0, LC6/d;

    new-instance v1, LC6/c$n;

    invoke-direct {v1, p0}, LC6/c$n;-><init>(LC6/c;)V

    invoke-direct {v0, v1}, LC6/d;-><init>(LF6/b;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    invoke-direct {p0}, LC6/c;->b0()V

    iget-object v0, p0, LC6/c;->e:Landroid/text/TextWatcher;

    if-nez v0, :cond_2

    new-instance v0, LC6/c$o;

    invoke-direct {v0, p0}, LC6/c$o;-><init>(LC6/c;)V

    iput-object v0, p0, LC6/c;->e:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->addTextWatcher(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public final Y(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "save"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, LC6/c$p;

    invoke-direct {p1, p0}, LC6/c$p;-><init>(LC6/c;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LC6/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LC6/c$q;

    invoke-direct {v1, p0, p1}, LC6/c$q;-><init>(LC6/c;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-static {}, LVc/g;->a()V

    :goto_0
    return-void
.end method

.method public final Z()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v1, :cond_4

    if-ltz v0, :cond_4

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LC6/c;->g0()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, LC6/c;->f0()V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, LC6/c;->O()V

    return-void
.end method

.method public final a0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LC6/c$b;

    invoke-direct {v1, p0}, LC6/c$b;-><init>(LC6/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c0()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LC6/c;->g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    if-nez v1, :cond_1

    new-instance v1, LC6/c$t;

    const-string v2, "java-selection-popup"

    invoke-direct {v1, p0, v2}, LC6/c$t;-><init>(LC6/c;Ljava/lang/String;)V

    iput-object v1, p0, LC6/c;->g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->installPlugin(Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V

    :cond_1
    new-instance v1, LC6/c$a;

    invoke-direct {v1, p0, v0}, LC6/c$a;-><init>(LC6/c;Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public final d0()V
    .locals 3

    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8/e;

    invoke-virtual {v1}, Ld8/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Ld8/e;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->addError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public duplicate()LF6/d;
    .locals 1

    new-instance v0, LC6/c;

    invoke-direct {v0}, LC6/c;-><init>()V

    return-object v0
.end method

.method public final e0(IIIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "x",
            "y",
            "isLatest"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "\n"

    const-string v2, ""

    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p4

    iget-object p4, p4, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld8/e;

    iget v4, v3, Ld8/e;->c:I

    add-int/lit8 v5, p1, -0x2

    if-lt v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ld8/e;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    const/4 p4, 0x0

    if-gt p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lbd/a;

    const-string v3, "The first line of the script displays all errors and alerts"

    const-string v4, "A primeira linha do script exibe todos os erros e alertas"

    invoke-direct {v0, v3, v4}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld8/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ld8/e;->j(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld8/e;

    iget v4, v3, Ld8/e;->c:I

    add-int/lit8 v5, p1, -0x2

    if-lt v4, v5, :cond_3

    if-gt v4, p1, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ld8/e;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, LC6/c;->d:Ljava/lang/String;

    invoke-static {p2, p3, v2, p1}, LJ6/a;->A1(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f0()V
    .locals 5

    invoke-virtual {p0}, LC6/c;->O()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, LM7/h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, LC6/c;->T(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, LM7/h;->g(Ljava/util/List;)V

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, LC6/c;->h0(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    iget v3, p0, LC6/c;->q:I

    iget v4, p0, LC6/c;->r:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {p0, v0}, LC6/c;->K(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    return-void
.end method

.method public final g0()V
    .locals 4

    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LC6/c;->h0(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, LC6/c;->f:Landroid/widget/PopupWindow;

    iget v1, p0, LC6/c;->q:I

    iget v2, p0, LC6/c;->r:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getOpenFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LC6/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h0(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "rootView"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getScreenPositionOfCursor()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    if-nez v1, :cond_1

    iput v0, p0, LC6/c;->q:I

    iput v0, p0, LC6/c;->r:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, LNc/b;->k0(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p2, v1, v0

    sub-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, LC6/c;->q:I

    const/4 p2, 0x1

    aget p2, v1, p2

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LC6/c;->r:I

    :cond_2
    :goto_0
    return-void
.end method

.method public hasScript()Z
    .locals 1

    iget-object v0, p0, LC6/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LC6/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public inflateTopBarElements(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LM7/g;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LM7/c;

    new-instance v1, LC6/c$m;

    invoke-direct {v1, p0}, LC6/c$m;-><init>(LC6/c;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v3, 0x7f070212

    invoke-direct {v0, v3, v1, v2, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->inflateTopBarElements(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->init()V

    invoke-direct {p0}, LC6/c;->X()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->config:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$Config;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$Config;->a:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {p0, v0}, LC6/c;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    return-void
.end method

.method public onClose(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, LC6/c;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, LC6/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v6

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, LC6/c$k;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, LC6/c$k;-><init>(LC6/c;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {p0}, LC6/c;->unload()V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->onClose(Landroid/content/Context;)V

    return-void
.end method

.method public openScript(Ljd/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "script",
            "context"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->openScript(Ljd/b;Landroid/content/Context;)V

    iget-object p1, p1, Ljd/b;->a:Ljava/lang/String;

    iput-object p1, p0, LC6/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LC6/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public replaceScript(Ljd/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newScript",
            "context"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->replaceScript(Ljd/b;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, LC6/c;->saveScript(Landroid/content/Context;)Z

    iget-object p1, p1, Ljd/b;->a:Ljava/lang/String;

    iput-object p1, p0, LC6/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LC6/c;->V(Ljava/lang/String;)V

    return-void
.end method

.method public saveScript(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->saveScript(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LC6/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorTheme"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    invoke-direct {p0}, LC6/c;->X()V

    return-void
.end method

.method public supportFile(Ljd/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".java"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unload()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->unload()V

    invoke-virtual {p0}, LC6/c;->O()V

    iget-object v0, p0, LC6/c;->g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LC6/c;->N(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    iget-object v2, p0, LC6/c;->g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->uninstallPlugin(Ljava/lang/String;)V

    :cond_0
    iput-object v1, p0, LC6/c;->g:Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    :cond_1
    iget-object v0, p0, LC6/c;->e:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->removeTextWatcher(Landroid/text/TextWatcher;)V

    iput-object v1, p0, LC6/c;->e:Landroid/text/TextWatcher;

    :cond_2
    iget-object v0, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v0, :cond_3

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    :cond_3
    iput-object v1, p0, LC6/c;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iput-object v1, p0, LC6/c;->a:Ljava/lang/String;

    iput-object v1, p0, LC6/c;->c:Ljava/lang/String;

    iput-object v1, p0, LC6/c;->d:Ljava/lang/String;

    return-void
.end method
