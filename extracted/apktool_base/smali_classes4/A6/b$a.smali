.class public LA6/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA6/b;->execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LA6/b;


# direct methods
.method public constructor <init>(LA6/b;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$source",
            "val$highlightSpans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LA6/b$a;->c:LA6/b;

    iput-object p2, p0, LA6/b$a;->a:Ljava/lang/String;

    iput-object p3, p0, LA6/b$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, LA6/b$a;->c:LA6/b;

    iget-object v2, v1, LA6/b;->a:LJAVARuntime/TextScriptingStyler;

    iget-object v3, p0, LA6/b$a;->a:Ljava/lang/String;

    invoke-static {v1}, LA6/b;->a(LA6/b;)LA6/c;

    move-result-object v1

    invoke-interface {v1}, LA6/c;->getTheme()LJAVARuntime/TextScriptingTheme;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, LJAVARuntime/TextScriptingStyler;->execute(Ljava/lang/String;LJAVARuntime/TextScriptingTheme;Ljava/util/List;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/TextScriptingSyntaxHighlightSpan;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->getSpan()LJAVARuntime/TextScriptingStyleSpan;

    move-result-object v3

    new-instance v4, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    invoke-virtual {v3}, LJAVARuntime/TextScriptingStyleSpan;->convertInternal()Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    move-result-object v3

    iget v5, v2, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->start:I

    iget v2, v2, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->end:I

    invoke-direct {v4, v3, v5, v2}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    iget-object v2, p0, LA6/b$a;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
