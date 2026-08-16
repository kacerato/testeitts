.class public interface abstract Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionUpdate"
.end annotation


# static fields
.field public static final NONE:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate$1;

    invoke-direct {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate$1;-><init>()V

    sput-object v0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->NONE:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-void
.end method


# virtual methods
.method public transform(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Position;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p1, Lcom/github/javaparser/Position;->line:I

    iget p1, p1, Lcom/github/javaparser/Position;->column:I

    invoke-interface {p0, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->transformLine(I)I

    move-result v0

    invoke-interface {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->transformColumn(I)I

    move-result p1

    new-instance v1, Lcom/github/javaparser/Position;

    invoke-direct {v1, v0, p1}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v1
.end method

.method public abstract transformColumn(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation
.end method

.method public abstract transformLine(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation
.end method
