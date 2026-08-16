.class LJAVARuntime/TextScriptingExtension$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/Language;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TextScriptingExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/TextScriptingExtension;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$2;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Custom language"

    return-object v0
.end method

.method public getParser()Lorg/blacksquircle/ui/language/base/parser/LanguageParser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$2;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-static {v0}, LJAVARuntime/TextScriptingExtension;->access$400(LJAVARuntime/TextScriptingExtension;)Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$2;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-static {v0}, LJAVARuntime/TextScriptingExtension;->access$500(LJAVARuntime/TextScriptingExtension;)Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;

    move-result-object v0

    return-object v0
.end method
