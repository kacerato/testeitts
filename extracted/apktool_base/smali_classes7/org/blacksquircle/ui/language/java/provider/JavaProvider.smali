.class public final Lorg/blacksquircle/ui/language/java/provider/JavaProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static javaProvider:Lorg/blacksquircle/ui/language/java/provider/JavaProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final wordsManager:Lorg/blacksquircle/ui/language/base/utils/WordsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->Companion:Lorg/blacksquircle/ui/language/java/provider/JavaProvider$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-direct {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->wordsManager:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJavaProvider$cp()Lorg/blacksquircle/ui/language/java/provider/JavaProvider;
    .locals 1

    sget-object v0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->javaProvider:Lorg/blacksquircle/ui/language/java/provider/JavaProvider;

    return-object v0
.end method

.method public static final synthetic access$setJavaProvider$cp(Lorg/blacksquircle/ui/language/java/provider/JavaProvider;)V
    .locals 0

    sput-object p0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->javaProvider:Lorg/blacksquircle/ui/language/java/provider/JavaProvider;

    return-void
.end method


# virtual methods
.method public clearLines()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->wordsManager:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->clearLines()V

    return-void
.end method

.method public deleteLine(I)V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->wordsManager:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->deleteLine(I)V

    return-void
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->wordsManager:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->getWords()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public processLine(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/language/java/provider/JavaProvider;->wordsManager:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1, p2}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->processLine(ILjava/lang/String;)V

    return-void
.end method
