.class Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimaryRepairInfo"
.end annotation


# instance fields
.field public bufferPosition:I

.field public code:I

.field public distance:I

.field public misspellIndex:I

.field public symbol:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    return-object v0
.end method
