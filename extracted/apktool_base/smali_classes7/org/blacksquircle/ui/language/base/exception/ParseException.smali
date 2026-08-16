.class public final Lorg/blacksquircle/ui/language/base/exception/ParseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/blacksquircle/ui/language/base/exception/ParseException;->lineNumber:I

    iput p3, p0, Lorg/blacksquircle/ui/language/base/exception/ParseException;->columnNumber:I

    return-void
.end method


# virtual methods
.method public final getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/exception/ParseException;->columnNumber:I

    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/exception/ParseException;->lineNumber:I

    return v0
.end method
