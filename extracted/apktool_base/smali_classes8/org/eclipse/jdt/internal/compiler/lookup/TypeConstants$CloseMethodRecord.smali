.class public Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$CloseMethodRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseMethodRecord"
.end annotation


# instance fields
.field public numCloseableArgs:I

.field public selector:[C

.field public typeName:[[C


# direct methods
.method public constructor <init>([[C[CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$CloseMethodRecord;->typeName:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$CloseMethodRecord;->selector:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$CloseMethodRecord;->numCloseableArgs:I

    return-void
.end method
