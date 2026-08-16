.class public Lorg/google/googlejavaformat/java/JavaFormatterOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/java/javadoc/JavadocOptions;


# annotations
.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;,
        Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_MAX_LINE_LENGTH:I = 0x2710


# instance fields
.field private final style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;Lorg/google/googlejavaformat/java/JavaFormatterOptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;-><init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;)V

    return-void
.end method

.method public static builder()Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;
    .locals 2

    new-instance v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;-><init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions$1;)V

    return-object v0
.end method

.method public static defaultOptions()Lorg/google/googlejavaformat/java/JavaFormatterOptions;
    .locals 1

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->builder()Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;->build()Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public indentationMultiplier()I
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->indentationMultiplier()I

    move-result v0

    return v0
.end method

.method public maxLineLength()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method
