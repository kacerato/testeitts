.class Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondaryRepairInfo"
.end annotation


# instance fields
.field public bufferPosition:I

.field public code:I

.field public distance:I

.field public numDeletions:I

.field recoveryOnNextStack:Z

.field public stackPosition:I

.field public symbol:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
