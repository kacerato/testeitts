.class Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRank(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method
