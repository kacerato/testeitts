.class public Lorg/google/googlejavaformat/FormattingError;
.super Ljava/lang/Error;
.source "SourceFile"


# instance fields
.field private final diagnostics:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diagnostics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-static {v1}, Lw2/y;->p(Ljava/lang/String;)Lw2/y;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw2/y;->k(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/FormattingError;->diagnostics:Lcom/google/common/collect/g1;

    return-void
.end method

.method public constructor <init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diagnostic"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/FormattingError;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public diagnostics()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/FormatterDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/FormattingError;->diagnostics:Lcom/google/common/collect/g1;

    return-object v0
.end method
