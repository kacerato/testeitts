.class final Lorg/google/googlejavaformat/Doc$Space;
.super Lorg/google/googlejavaformat/Doc;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Space"
.end annotation


# static fields
.field private static final SPACE:Lorg/google/googlejavaformat/Doc$Space;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/google/googlejavaformat/Doc$Space;

    invoke-direct {v0}, Lorg/google/googlejavaformat/Doc$Space;-><init>()V

    sput-object v0, Lorg/google/googlejavaformat/Doc$Space;->SPACE:Lorg/google/googlejavaformat/Doc$Space;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/google/googlejavaformat/Doc;-><init>()V

    return-void
.end method

.method public static make()Lorg/google/googlejavaformat/Doc$Space;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/Doc$Space;->SPACE:Lorg/google/googlejavaformat/Doc$Space;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/DocBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/google/googlejavaformat/DocBuilder;->add(Lorg/google/googlejavaformat/Doc;)V

    return-void
.end method

.method public computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentsHelper",
            "maxWidth",
            "state"
        }
    .end annotation

    iget p1, p3, Lorg/google/googlejavaformat/Doc$State;->column:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1
.end method

.method public computeFlat()Ljava/lang/String;
    .locals 1

    const-string v0, " "

    return-object v0
.end method

.method public computeRange()Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0
.end method

.method public computeWidth()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/google/googlejavaformat/Output;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    const-string v0, " "

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/j2;)V

    return-void
.end method
