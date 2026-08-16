.class Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputsInfo"
.end annotation


# instance fields
.field outputCount:I

.field paths:[Lorg/eclipse/core/runtime/IPath;

.field traverseModes:[I


# direct methods
.method public constructor <init>([Lorg/eclipse/core/runtime/IPath;[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->paths:[Lorg/eclipse/core/runtime/IPath;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->traverseModes:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->outputCount:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->paths:[Lorg/eclipse/core/runtime/IPath;

    if-nez v0, :cond_0

    const-string v0, "<none>"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->outputCount:I

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v2, "path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->paths:[Lorg/eclipse/core/runtime/IPath;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n->traverse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->traverseModes:[I

    aget v2, v2, v1

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v2, "BINARY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string v2, "SOURCE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v2, "IGNORE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->outputCount:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
