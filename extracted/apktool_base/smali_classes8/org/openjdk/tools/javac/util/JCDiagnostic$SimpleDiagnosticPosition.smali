.class public Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleDiagnosticPosition"
.end annotation


# instance fields
.field private final pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return-void
.end method


# virtual methods
.method public getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I
    .locals 0

    iget p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return p1
.end method

.method public getPreferredPosition()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return v0
.end method

.method public getTree()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
