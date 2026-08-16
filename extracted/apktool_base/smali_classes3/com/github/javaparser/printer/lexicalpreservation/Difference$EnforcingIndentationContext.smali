.class Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/Difference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnforcingIndentationContext"
.end annotation


# instance fields
.field extraCharacters:I

.field start:I

.field final synthetic this$0:Lcom/github/javaparser/printer/lexicalpreservation/Difference;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/Difference;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "start"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/Difference;II)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/Difference;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "start",
            "extraCharacters"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->this$0:Lcom/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->start:I

    .line 4
    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->extraCharacters:I

    return-void
.end method
