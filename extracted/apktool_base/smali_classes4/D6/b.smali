.class public LD6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/Language;


# instance fields
.field public a:LD6/d;

.field public b:LD6/c;

.field public c:LD6/e;

.field public d:LF6/b;


# direct methods
.method public constructor <init>(LF6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageConnector"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD6/d;

    invoke-direct {v0, p1}, LD6/d;-><init>(LF6/b;)V

    iput-object v0, p0, LD6/b;->a:LD6/d;

    new-instance v0, LD6/c;

    invoke-direct {v0, p1}, LD6/c;-><init>(LF6/b;)V

    iput-object v0, p0, LD6/b;->b:LD6/c;

    new-instance p1, LD6/e;

    invoke-direct {p1}, LD6/e;-><init>()V

    iput-object p1, p0, LD6/b;->c:LD6/e;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "lua"

    return-object v0
.end method

.method public getParser()Lorg/blacksquircle/ui/language/base/parser/LanguageParser;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LD6/b;->b:LD6/c;

    return-object v0
.end method

.method public getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LD6/b;->a:LD6/d;

    return-object v0
.end method

.method public getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LD6/b;->c:LD6/e;

    return-object v0
.end method
