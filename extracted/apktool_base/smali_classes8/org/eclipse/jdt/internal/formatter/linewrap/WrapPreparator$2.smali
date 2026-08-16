.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->preserveExistingLineBreaks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field join_wrapped_lines:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;->join_wrapped_lines:Z

    return-void
.end method


# virtual methods
.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->importsStart:I

    const/4 v2, 0x1

    if-le p2, v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->importsEnd:I

    if-ge p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getPrevious()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->getLineBreaksToPreserve(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;Z)I

    move-result v0

    if-gt v0, v2, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;->join_wrapped_lines:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    :cond_3
    return v2
.end method
