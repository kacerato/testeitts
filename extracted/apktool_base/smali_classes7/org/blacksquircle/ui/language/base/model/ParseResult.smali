.class public final Lorg/blacksquircle/ui/language/base/model/ParseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/blacksquircle/ui/language/base/exception/ParseException;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/language/base/exception/ParseException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    return-void
.end method

.method public static synthetic copy$default(Lorg/blacksquircle/ui/language/base/model/ParseResult;Lorg/blacksquircle/ui/language/base/exception/ParseException;ILjava/lang/Object;)Lorg/blacksquircle/ui/language/base/model/ParseResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/language/base/model/ParseResult;->copy(Lorg/blacksquircle/ui/language/base/exception/ParseException;)Lorg/blacksquircle/ui/language/base/model/ParseResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/blacksquircle/ui/language/base/exception/ParseException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    return-object v0
.end method

.method public final copy(Lorg/blacksquircle/ui/language/base/exception/ParseException;)Lorg/blacksquircle/ui/language/base/model/ParseResult;
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/exception/ParseException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ParseResult;

    invoke-direct {v0, p1}, Lorg/blacksquircle/ui/language/base/model/ParseResult;-><init>(Lorg/blacksquircle/ui/language/base/exception/ParseException;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/blacksquircle/ui/language/base/model/ParseResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/blacksquircle/ui/language/base/model/ParseResult;

    iget-object v1, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    iget-object p1, p1, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getException()Lorg/blacksquircle/ui/language/base/exception/ParseException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseResult(exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/blacksquircle/ui/language/base/model/ParseResult;->exception:Lorg/blacksquircle/ui/language/base/exception/ParseException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
