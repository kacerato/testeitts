.class final Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BestResourceFile"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRank(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TIME_LAST_SCANNED:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p1

    return-wide p1
.end method
