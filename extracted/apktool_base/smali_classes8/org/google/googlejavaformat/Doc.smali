.class public abstract Lorg/google/googlejavaformat/Doc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/Doc$Tok;,
        Lorg/google/googlejavaformat/Doc$Break;,
        Lorg/google/googlejavaformat/Doc$Space;,
        Lorg/google/googlejavaformat/Doc$Token;,
        Lorg/google/googlejavaformat/Doc$Level;,
        Lorg/google/googlejavaformat/Doc$State;,
        Lorg/google/googlejavaformat/Doc$FillMode;
    }
.end annotation


# static fields
.field private static final EMPTY_RANGE:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGERS:Lcom/google/common/collect/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/W<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flat:Ljava/lang/String;

.field private flatComputed:Z

.field private range:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rangeComputed:Z

.field private width:F

.field private widthComputed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/Doc;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/Doc;->INTEGERS:Lcom/google/common/collect/W;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->widthComputed:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/google/googlejavaformat/Doc;->width:F

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->flatComputed:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/google/googlejavaformat/Doc;->flat:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->rangeComputed:Z

    sget-object v0, Lorg/google/googlejavaformat/Doc;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    iput-object v0, p0, Lorg/google/googlejavaformat/Doc;->range:Lcom/google/common/collect/j2;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/common/collect/j2;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/Doc;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/google/common/collect/W;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/Doc;->INTEGERS:Lcom/google/common/collect/W;

    return-object v0
.end method


# virtual methods
.method public abstract computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
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
.end method

.method public abstract computeFlat()Ljava/lang/String;
.end method

.method public abstract computeRange()Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract computeWidth()F
.end method

.method public final getFlat()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->flatComputed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->computeFlat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/Doc;->flat:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->flatComputed:Z

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc;->flat:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    iget-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->widthComputed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->computeWidth()F

    move-result v0

    iput v0, p0, Lorg/google/googlejavaformat/Doc;->width:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->widthComputed:Z

    :cond_0
    iget v0, p0, Lorg/google/googlejavaformat/Doc;->width:F

    return v0
.end method

.method public final range()Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->rangeComputed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->computeRange()Lcom/google/common/collect/j2;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/Doc;->range:Lcom/google/common/collect/j2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc;->rangeComputed:Z

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc;->range:Lcom/google/common/collect/j2;

    return-object v0
.end method

.method public abstract write(Lorg/google/googlejavaformat/Output;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation
.end method
