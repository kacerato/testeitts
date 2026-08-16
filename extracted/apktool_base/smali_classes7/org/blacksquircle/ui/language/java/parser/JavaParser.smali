.class public final Lorg/blacksquircle/ui/language/java/parser/JavaParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/parser/LanguageParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static javaParser:Lorg/blacksquircle/ui/language/java/parser/JavaParser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->Companion:Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/language/java/parser/JavaParser;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJavaParser$cp()Lorg/blacksquircle/ui/language/java/parser/JavaParser;
    .locals 1

    sget-object v0, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->javaParser:Lorg/blacksquircle/ui/language/java/parser/JavaParser;

    return-object v0
.end method

.method public static final synthetic access$setJavaParser$cp(Lorg/blacksquircle/ui/language/java/parser/JavaParser;)V
    .locals 0

    sput-object p0, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->javaParser:Lorg/blacksquircle/ui/language/java/parser/JavaParser;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)Lorg/blacksquircle/ui/language/base/model/ParseResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lorg/blacksquircle/ui/language/base/exception/ParseException;

    const-string p2, "Unable to parse unsupported language"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Lorg/blacksquircle/ui/language/base/exception/ParseException;-><init>(Ljava/lang/String;II)V

    new-instance p2, Lorg/blacksquircle/ui/language/base/model/ParseResult;

    invoke-direct {p2, p1}, Lorg/blacksquircle/ui/language/base/model/ParseResult;-><init>(Lorg/blacksquircle/ui/language/base/exception/ParseException;)V

    return-object p2
.end method
