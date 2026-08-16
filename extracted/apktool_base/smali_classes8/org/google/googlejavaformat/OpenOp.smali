.class public final Lorg/google/googlejavaformat/OpenOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Op;


# instance fields
.field private final plusIndent:Lorg/google/googlejavaformat/Indent;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/Indent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/OpenOp;->plusIndent:Lorg/google/googlejavaformat/Indent;

    return-void
.end method

.method public static make(Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Op;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/OpenOp;

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/OpenOp;-><init>(Lorg/google/googlejavaformat/Indent;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/DocBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpenOp;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/DocBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "plusIndent"

    iget-object v2, p0, Lorg/google/googlejavaformat/OpenOp;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
