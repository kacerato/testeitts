.class public Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)"

.field public static final l:C = '\ue000'

.field public static final m:C = '\ue001'


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTc/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LTc/c;

.field public d:Z

.field public e:I

.field public f:Ljava/lang/String;

.field public final g:Ljava/util/regex/Pattern;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    .line 3
    new-instance p1, LTc/c;

    const-string v0, "\\!\\!"

    const/4 v1, 0x0

    const-string v2, "\\!tap="

    invoke-direct {p1, v2, v0, v1}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->c:LTc/c;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    .line 6
    const-string v0, "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->g:Ljava/util/regex/Pattern;

    .line 7
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h:Z

    .line 8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    .line 11
    new-instance p1, LTc/c;

    const-string p2, "\\!\\!"

    const/4 v0, 0x0

    const-string v1, "\\!tap="

    invoke-direct {p1, v1, p2, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->c:LTc/c;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    .line 14
    const-string p2, "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)"

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->g:Ljava/util/regex/Pattern;

    .line 15
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h:Z

    .line 16
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    .line 19
    new-instance p1, LTc/c;

    const-string p2, "\\!\\!"

    const/4 p3, 0x0

    const-string v0, "\\!tap="

    invoke-direct {p1, v0, p2, p3}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->c:LTc/c;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    .line 22
    const-string p2, "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)"

    const/4 p3, 0x2

    invoke-static {p2, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->g:Ljava/util/regex/Pattern;

    .line 23
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h:Z

    .line 24
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    .line 27
    new-instance p1, LTc/c;

    const-string p2, "\\!\\!"

    const/4 p3, 0x0

    const-string p4, "\\!tap="

    invoke-direct {p1, p4, p2, p3}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->c:LTc/c;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    const/4 p2, -0x1

    .line 29
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    .line 30
    const-string p2, "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)"

    const/4 p3, 0x2

    invoke-static {p2, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->g:Ljava/util/regex/Pattern;

    .line 31
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h:Z

    .line 32
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->j:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;

    return-object p0
.end method

.method public static f(Landroid/text/Spanned;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spanned"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "<u>(.*?)</u>"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v2

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v2, p0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "c"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "tag"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!tap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(LTc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTc/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public varargs d([LTc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ssb",
            "tokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :cond_0
    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V

    const/16 v1, 0x21

    invoke-virtual {p1, v4, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getEffectiveText()Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLinksColor()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    return v0
.end method

.method public getTapListener()Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->j:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "tokensOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<br>"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->c:LTc/c;

    invoke-virtual {v3}, LTc/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(.*?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->c:LTc/c;

    invoke-virtual {v3}, LTc/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    :try_start_0
    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ue000TAP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v3, 0xe001

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$b;

    invoke-direct {v8, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V

    invoke-direct {v6, v4, v8}, Lcom/itsmagic/engine/Activities/Editor/Utils/n;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/b;)V

    iput-boolean v2, v6, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->e:Z

    iput-object v5, v6, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d:Ljava/lang/String;

    const/4 v5, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    invoke-static {v4, v8}, LTc/b;->S(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "\r"

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->i(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f(Landroid/text/Spanned;)Landroid/text/SpannableStringBuilder;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v5

    :goto_2
    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

    invoke-direct {v5, v3, v6, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/n;Ljava/lang/CharSequence;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "html"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const-string v0, "www.youtube.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x3f

    const/16 v2, 0x26

    const/4 v3, 0x0

    if-nez v0, :cond_4

    const-string v0, "youtube.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "youtu.be/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Utils/Media/YoutubeUtils$InvalidYoutubeLinkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid youtube link"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Utils/Media/YoutubeUtils$InvalidYoutubeLinkException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const-string v0, "watch?v="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/itsmagic/engine/Utils/Media/YoutubeUtils$InvalidYoutubeLinkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid youtube link:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Utils/Media/YoutubeUtils$InvalidYoutubeLinkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setAllowLinkClicks(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowLinkClicks"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLinksColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linksColor"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTapListener(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tapListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->j:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "type"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h:Z

    const-string v1, ""

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->i:Ljava/lang/String;

    return-void

    :cond_1
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    invoke-static {p1, v0}, LTc/b;->S(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->b:Ljava/util/List;

    invoke-static {p1, v0}, LTc/b;->S(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_4

    if-nez v4, :cond_4

    const-string v5, "&nbsp;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v2, "<br>"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->d:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e(Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_6
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    :cond_7
    :goto_4
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tf"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tf",
            "style"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
