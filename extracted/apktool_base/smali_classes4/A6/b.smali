.class public LA6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;


# instance fields
.field public a:LJAVARuntime/TextScriptingStyler;

.field public b:LA6/c;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingStyler;LA6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textScriptingStyler",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA6/b;->a:LJAVARuntime/TextScriptingStyler;

    iput-object p2, p0, LA6/b;->b:LA6/c;

    return-void
.end method

.method public static synthetic a(LA6/b;)LA6/c;
    .locals 0

    iget-object p0, p0, LA6/b;->b:LA6/c;

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "scheme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/blacksquircle/ui/language/base/model/ColorScheme;",
            ")",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, LA6/b;->a:LJAVARuntime/TextScriptingStyler;

    if-eqz v0, :cond_0

    new-instance v0, LA6/b$a;

    invoke-direct {v0, p0, p1, p2}, LA6/b$a;-><init>(LA6/b;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    :cond_0
    return-object p2
.end method
