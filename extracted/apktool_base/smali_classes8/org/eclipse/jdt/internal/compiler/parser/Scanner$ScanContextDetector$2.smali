.class Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$2;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;->getScanContext([CI)Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;I[II)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector$2;->this$1:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;-><init>(I[II)V

    return-void
.end method


# virtual methods
.method public hasBeenReached(II)Z
    .locals 0

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
