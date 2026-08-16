.class public Lq/b;
.super Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/b$d;
    }
.end annotation


# static fields
.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/lang/String; = "CodeView"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public final i:Landroid/os/Handler;

.field public j:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field public final k:F

.field public final l:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Runnable;

.field public final p:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(^.+$)+"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq/b;->q:Ljava/util/regex/Pattern;

    const-string v0, "[\\t ]+$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq/b;->r:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1f4

    .line 2
    iput p1, p0, Lq/b;->d:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lq/b;->f:Z

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lq/b;->i:Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lq/b;->k:F

    .line 6
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lq/b;->l:Ljava/util/SortedMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lq/b;->m:Ljava/util/Map;

    const/16 p1, 0x7b

    .line 8
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 p1, 0x2b

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 p1, 0x2d

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 p1, 0x2a

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 p1, 0x2f

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 p1, 0x3d

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Character;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/b;->n:Ljava/util/List;

    .line 9
    new-instance p1, Lq/b$b;

    invoke-direct {p1, p0}, Lq/b$b;-><init>(Lq/b;)V

    iput-object p1, p0, Lq/b;->o:Ljava/lang/Runnable;

    .line 10
    new-instance p1, Lq/b$c;

    invoke-direct {p1, p0}, Lq/b$c;-><init>(Lq/b;)V

    iput-object p1, p0, Lq/b;->p:Landroid/text/TextWatcher;

    .line 11
    invoke-virtual {p0}, Lq/b;->x()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1f4

    .line 13
    iput p1, p0, Lq/b;->d:I

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lq/b;->f:Z

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lq/b;->i:Landroid/os/Handler;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lq/b;->k:F

    .line 17
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lq/b;->l:Ljava/util/SortedMap;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lq/b;->m:Ljava/util/Map;

    const/16 p1, 0x7b

    .line 19
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 p1, 0x2b

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 p1, 0x2d

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 p1, 0x2a

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 p1, 0x2f

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 p1, 0x3d

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Character;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/b;->n:Ljava/util/List;

    .line 20
    new-instance p1, Lq/b$b;

    invoke-direct {p1, p0}, Lq/b$b;-><init>(Lq/b;)V

    iput-object p1, p0, Lq/b;->o:Ljava/lang/Runnable;

    .line 21
    new-instance p1, Lq/b$c;

    invoke-direct {p1, p0}, Lq/b$c;-><init>(Lq/b;)V

    iput-object p1, p0, Lq/b;->p:Landroid/text/TextWatcher;

    .line 22
    invoke-virtual {p0}, Lq/b;->x()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1f4

    .line 24
    iput p1, p0, Lq/b;->d:I

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lq/b;->f:Z

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lq/b;->i:Landroid/os/Handler;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lq/b;->k:F

    .line 28
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lq/b;->l:Ljava/util/SortedMap;

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lq/b;->m:Ljava/util/Map;

    const/16 p1, 0x7b

    .line 30
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 p1, 0x2b

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 p1, 0x2d

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 p1, 0x2a

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 p1, 0x2f

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 p1, 0x3d

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Character;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/b;->n:Ljava/util/List;

    .line 31
    new-instance p1, Lq/b$b;

    invoke-direct {p1, p0}, Lq/b$b;-><init>(Lq/b;)V

    iput-object p1, p0, Lq/b;->o:Ljava/lang/Runnable;

    .line 32
    new-instance p1, Lq/b$c;

    invoke-direct {p1, p0}, Lq/b$c;-><init>(Lq/b;)V

    iput-object p1, p0, Lq/b;->p:Landroid/text/TextWatcher;

    .line 33
    invoke-virtual {p0}, Lq/b;->x()V

    return-void
.end method

.method public static synthetic a(Lq/b;)Z
    .locals 0

    iget-boolean p0, p0, Lq/b;->f:Z

    return p0
.end method

.method public static synthetic b(Lq/b;Ljava/lang/CharSequence;Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lq/b;->m(Ljava/lang/CharSequence;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lq/b;)I
    .locals 0

    iget p0, p0, Lq/b;->b:I

    return p0
.end method

.method public static synthetic d(Lq/b;Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lq/b;->w(Landroid/text/Editable;)V

    return-void
.end method

.method public static synthetic e(Lq/b;Landroid/text/Editable;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lq/b;->q(Landroid/text/Editable;II)V

    return-void
.end method

.method public static synthetic f(Lq/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lq/b;->e:Z

    return p1
.end method

.method public static synthetic g(Lq/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lq/b;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic h(Lq/b;)I
    .locals 0

    iget p0, p0, Lq/b;->d:I

    return p0
.end method

.method public static synthetic i(Lq/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lq/b;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic j(Lq/b;)Z
    .locals 0

    iget-boolean p0, p0, Lq/b;->h:Z

    return p0
.end method


# virtual methods
.method public A()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq/b;->v(Landroid/text/Editable;)V

    return-void
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/b;->g:Z

    return-void
.end method

.method public C(Ljava/util/regex/Pattern;)V
    .locals 1

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAutoIndentCharacterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq/b;->n:Ljava/util/List;

    return-object v0
.end method

.method public getErrorsSize()I
    .locals 1

    iget-object v0, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSyntaxPatternsSize()I
    .locals 1

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getTextWithoutTrailingSpace()Ljava/lang/String;
    .locals 2

    sget-object v0, Lq/b;->r:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateDelayTime()I
    .locals 1

    iget v0, p0, Lq/b;->d:I

    return v0
.end method

.method public k(II)V
    .locals 1

    iget-object v0, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/b;->g:Z

    return-void
.end method

.method public l(Ljava/util/regex/Pattern;I)V
    .locals 1

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    const-string v0, "CodeView"

    const-string v1, "autoIndent: Auto Indent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    const/16 v4, 0x20

    const/16 v5, 0xa

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-le v0, v6, :cond_5

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_0

    goto :goto_2

    :cond_0
    if-eq v8, v4, :cond_4

    if-eq v8, v3, :cond_4

    if-nez v2, :cond_2

    iget-object v2, p0, Lq/b;->n:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    move v2, v7

    :cond_2
    const/16 v3, 0x28

    if-ne v8, v3, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0x29

    if-ne v8, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    const-string v2, ""

    if-le v0, v6, :cond_9

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    add-int/2addr v0, v7

    move v6, v0

    :goto_3
    if-ge v6, p4, :cond_8

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq p3, v5, :cond_6

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    if-ge v8, p4, :cond_6

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_6

    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    :cond_6
    if-eq v7, v4, :cond_7

    if-eq v7, v3, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-gez v1, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\t"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lq/b;->i:Landroid/os/Handler;

    iget-object v1, p0, Lq/b;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lq/b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final p(Landroid/text/Editable;)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_0

    aget-object v3, v1, v4

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_0
    const-class v1, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    array-length v1, v0

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    aget-object v1, v0, v2

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final q(Landroid/text/Editable;II)V
    .locals 4

    iget v0, p0, Lq/b;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr p3, p2

    :goto_0
    const-string v1, "\t"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, -0x1

    if-le p2, v1, :cond_1

    if-ge p2, p3, :cond_1

    new-instance v1, Lq/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lq/b$d;-><init>(Lq/b;Lq/b$a;)V

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x21

    invoke-interface {p1, v1, p2, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(Landroid/text/Editable;Ljava/util/regex/Matcher;I)V
    .locals 2

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result p3

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    const/16 v1, 0x21

    invoke-interface {p1, v0, p3, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public removeErrorLine(I)V
    .locals 1

    iget-object v0, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lq/b;->g:Z

    return-void
.end method

.method public final s(Landroid/text/Editable;Ljava/util/regex/Matcher;I)V
    .locals 2

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result p3

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    const/16 v1, 0x21

    invoke-interface {p1, v0, p3, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public setAutoCompleteTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0

    iput-object p1, p0, Lq/b;->j:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-void
.end method

.method public setAutoIndentCharacterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq/b;->n:Ljava/util/List;

    return-void
.end method

.method public setRemoveErrorsWhenTextChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lq/b;->h:Z

    return-void
.end method

.method public setSyntaxPatternsMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setTabWidth(I)V
    .locals 2

    iget v0, p0, Lq/b;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lq/b;->c:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lq/b;->b:I

    return-void
.end method

.method public setTextHighlighted(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0}, Lq/b;->n()V

    invoke-virtual {p0}, Lq/b;->B()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/b;->e:Z

    iput-boolean v0, p0, Lq/b;->f:Z

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lq/b;->t(Landroid/text/Editable;)Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/b;->f:Z

    return-void
.end method

.method public setUpdateDelayTime(I)V
    .locals 0

    iput p1, p0, Lq/b;->d:I

    return-void
.end method

.method public showDropDown()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x8c

    add-int/lit16 v2, v2, 0x2ee

    int-to-float v2, v2

    iget v3, p0, Lq/b;->k:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    iget v1, p0, Lq/b;->k:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method

.method public final t(Landroid/text/Editable;)Landroid/text/Editable;
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lq/b;->p(Landroid/text/Editable;)V

    invoke-virtual {p0, p1}, Lq/b;->u(Landroid/text/Editable;)V

    invoke-virtual {p0, p1}, Lq/b;->v(Landroid/text/Editable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Highlighter Error Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method public final u(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lq/b;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lq/b;->l:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v1, v3}, Lq/b;->r(Landroid/text/Editable;Ljava/util/regex/Matcher;I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_1

    :cond_3
    return-void
.end method

.method public final v(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    iget-object v2, p0, Lq/b;->m:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v1, v2}, Lq/b;->s(Landroid/text/Editable;Ljava/util/regex/Matcher;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final w(Landroid/text/Editable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/b;->f:Z

    invoke-virtual {p0, p1}, Lq/b;->t(Landroid/text/Editable;)Landroid/text/Editable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/b;->f:Z

    return-void
.end method

.method public final x()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lq/b;->j:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v1, :cond_0

    new-instance v1, Lq/c;

    invoke-direct {v1}, Lq/c;-><init>()V

    iput-object v1, p0, Lq/b;->j:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    :cond_0
    iget-object v1, p0, Lq/b;->j:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    new-instance v1, Lq/b$a;

    invoke-direct {v1, p0}, Lq/b$a;-><init>(Lq/b;)V

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lq/b;->p:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lq/b;->g:Z

    return v0
.end method

.method public z()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq/b;->u(Landroid/text/Editable;)V

    return-void
.end method
