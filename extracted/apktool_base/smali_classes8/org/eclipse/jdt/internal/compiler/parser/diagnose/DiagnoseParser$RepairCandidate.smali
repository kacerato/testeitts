.class Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepairCandidate"
.end annotation


# instance fields
.field public location:I

.field public symbol:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    return-void
.end method
