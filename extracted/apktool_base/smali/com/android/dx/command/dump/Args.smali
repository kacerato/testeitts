.class Lcom/android/dx/command/dump/Args;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field basicBlocks:Z

.field debug:Z

.field dotDump:Z

.field method:Ljava/lang/String;

.field optimize:Z

.field rawBytes:Z

.field ropBlocks:Z

.field ssaBlocks:Z

.field ssaStep:Ljava/lang/String;

.field strictParse:Z

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->debug:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->rawBytes:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->basicBlocks:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->ropBlocks:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->ssaBlocks:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->optimize:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->strictParse:Z

    iput v0, p0, Lcom/android/dx/command/dump/Args;->width:I

    iput-boolean v0, p0, Lcom/android/dx/command/dump/Args;->dotDump:Z

    return-void
.end method
