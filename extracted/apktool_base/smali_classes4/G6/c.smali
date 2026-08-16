.class public LG6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/parser/LanguageParser;


# instance fields
.field public a:LF6/b;


# direct methods
.method public constructor <init>(LF6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageConnector"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG6/c;->a:LF6/b;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)Lorg/blacksquircle/ui/language/base/model/ParseResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "source"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
