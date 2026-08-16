.class Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$1;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;->initializeScanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;ZZZJJ[[C[[CZ)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$1;->this$1:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    return-void
.end method


# virtual methods
.method public updateScanContext(I)V
    .locals 1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->updateScanContext(I)V

    :cond_0
    return-void
.end method
