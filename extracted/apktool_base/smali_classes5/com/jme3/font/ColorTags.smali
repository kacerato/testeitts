.class Lcom/jme3/font/ColorTags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/font/ColorTags$Range;
    }
.end annotation


# static fields
.field private static final colorPattern:Ljava/util/regex/Pattern;


# instance fields
.field private baseAlpha:F

.field private final colors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/font/ColorTags$Range;",
            ">;"
        }
    .end annotation
.end field

.field private original:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\\\#([0-9a-fA-F]{8})#|\\\\#([0-9a-fA-F]{6})#|\\\\#([0-9a-fA-F]{4})#|\\\\#([0-9a-fA-F]{3})#"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jme3/font/ColorTags;->colorPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/jme3/font/ColorTags;->baseAlpha:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lcom/jme3/font/ColorTags;->baseAlpha:F

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/font/ColorTags;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/font/ColorTags;)F
    .locals 0

    iget p0, p0, Lcom/jme3/font/ColorTags;->baseAlpha:F

    return p0
.end method


# virtual methods
.method public getPlainText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/ColorTags;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/jme3/font/ColorTags$Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setBaseAlpha(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/font/ColorTags;->baseAlpha:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/jme3/font/ColorTags;->original:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jme3/font/ColorTags;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/ColorTags$Range;

    iget-object v1, v1, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    iput p1, v1, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBaseColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/ColorTags$Range;

    iput-object p1, v1, Lcom/jme3/font/ColorTags$Range;->color:Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/jme3/font/ColorTags;->original:Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/font/ColorTags;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-gt v3, v5, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/jme3/font/ColorTags$Range;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-direct {v2, p0, v3, v4}, Lcom/jme3/font/ColorTags$Range;-><init>(Lcom/jme3/font/ColorTags;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget-object v4, p0, Lcom/jme3/font/ColorTags;->colors:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/font/ColorTags;->text:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/jme3/font/ColorTags;->text:Ljava/lang/String;

    :goto_2
    return-void
.end method
