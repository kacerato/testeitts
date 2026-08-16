.class Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/CRTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRTEntry"
.end annotation


# instance fields
.field endPc:I

.field flags:I

.field startPc:I

.field tree:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->tree:Ljava/lang/Object;

    iput p2, p0, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->flags:I

    iput p3, p0, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->startPc:I

    iput p4, p0, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->endPc:I

    return-void
.end method
