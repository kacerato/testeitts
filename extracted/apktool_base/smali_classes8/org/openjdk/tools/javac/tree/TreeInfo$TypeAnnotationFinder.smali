.class Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/TreeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeAnnotationFinder"
.end annotation


# instance fields
.field public foundTypeAnno:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;->foundTypeAnno:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/tree/TreeInfo$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;->foundTypeAnno:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;->foundTypeAnno:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPE_ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;->foundTypeAnno:Z

    return-void
.end method
