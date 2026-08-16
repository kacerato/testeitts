.class public final Lorg/blacksquircle/ui/language/java/JavaLanguage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/Language;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/language/java/JavaLanguage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/language/java/JavaLanguage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FILE_EXTENSION:Ljava/lang/String; = ".java"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/language/java/JavaLanguage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/language/java/JavaLanguage$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/language/java/JavaLanguage;->Companion:Lorg/blacksquircle/ui/language/java/JavaLanguage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "java"

    return-object v0
.end method

.method public getParser()Lorg/blacksquircle/ui/language/base/parser/LanguageParser;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->Companion:Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;->getInstance()Lorg/blacksquircle/ui/language/java/parser/JavaParser;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->Companion:Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;->getInstance()Lorg/blacksquircle/ui/language/java/provider/JavaProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/language/java/styler/JavaStyler;->Companion:Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/java/styler/JavaStyler$Companion;->getInstance()Lorg/blacksquircle/ui/language/java/styler/JavaStyler;

    move-result-object v0

    return-object v0
.end method
