.class Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateInfo"
.end annotation


# instance fields
.field next:I

.field state:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;->state:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;->next:I

    return-void
.end method
