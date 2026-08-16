.class public final Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LF6/c;
.end annotation


# instance fields
.field private final color:I

.field private lineNumber:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;->lineNumber:I

    .line 3
    iput p2, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;->color:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, -0x10000

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;->color:I

    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;->lineNumber:I

    return v0
.end method

.method public final setLineNumber(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorEntry;->lineNumber:I

    return-void
.end method
