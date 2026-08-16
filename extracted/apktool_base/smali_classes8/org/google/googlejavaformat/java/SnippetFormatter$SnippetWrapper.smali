.class Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/SnippetFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnippetWrapper"
.end annotation


# instance fields
.field final contents:Ljava/lang/StringBuilder;

.field offset:I

.field final synthetic this$0:Lorg/google/googlejavaformat/java/SnippetFormatter;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/java/SnippetFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->this$0:Lorg/google/googlejavaformat/java/SnippetFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/google/googlejavaformat/java/SnippetFormatter;Lorg/google/googlejavaformat/java/SnippetFormatter$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lorg/google/googlejavaformat/java/SnippetFormatter;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendSource(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    iget-object v0, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public closeBraces(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialIndent"
        }
    .end annotation

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->this$0:Lorg/google/googlejavaformat/java/SnippetFormatter;

    invoke-virtual {v1, p1}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method
