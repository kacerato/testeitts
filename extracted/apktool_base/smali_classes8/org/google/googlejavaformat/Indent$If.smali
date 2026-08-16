.class public final Lorg/google/googlejavaformat/Indent$If;
.super Lorg/google/googlejavaformat/Indent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Indent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "If"
.end annotation


# instance fields
.field private final condition:Lorg/google/googlejavaformat/Output$BreakTag;

.field private final elseIndent:Lorg/google/googlejavaformat/Indent;

.field private final thenIndent:Lorg/google/googlejavaformat/Indent;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "condition",
            "thenIndent",
            "elseIndent"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Indent;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/Indent$If;->condition:Lorg/google/googlejavaformat/Output$BreakTag;

    iput-object p2, p0, Lorg/google/googlejavaformat/Indent$If;->thenIndent:Lorg/google/googlejavaformat/Indent;

    iput-object p3, p0, Lorg/google/googlejavaformat/Indent$If;->elseIndent:Lorg/google/googlejavaformat/Indent;

    return-void
.end method

.method public static make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "condition",
            "thenIndent",
            "elseIndent"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Indent$If;

    invoke-direct {v0, p0, p1, p2}, Lorg/google/googlejavaformat/Indent$If;-><init>(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)V

    return-object v0
.end method


# virtual methods
.method public eval()I
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Indent$If;->condition:Lorg/google/googlejavaformat/Output$BreakTag;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Output$BreakTag;->wasBreakTaken()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/Indent$If;->thenIndent:Lorg/google/googlejavaformat/Indent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Indent$If;->elseIndent:Lorg/google/googlejavaformat/Indent;

    :goto_0
    invoke-virtual {v0}, Lorg/google/googlejavaformat/Indent;->eval()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "condition"

    iget-object v2, p0, Lorg/google/googlejavaformat/Indent$If;->condition:Lorg/google/googlejavaformat/Output$BreakTag;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "thenIndent"

    iget-object v2, p0, Lorg/google/googlejavaformat/Indent$If;->thenIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "elseIndent"

    iget-object v2, p0, Lorg/google/googlejavaformat/Indent$If;->elseIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
