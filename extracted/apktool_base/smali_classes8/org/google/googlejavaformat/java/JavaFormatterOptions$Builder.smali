.class public Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaFormatterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/google/googlejavaformat/java/JavaFormatterOptions;
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;-><init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;Lorg/google/googlejavaformat/java/JavaFormatterOptions$1;)V

    return-object v0
.end method

.method public style(Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;)Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    return-object p0
.end method
