.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistic"
.end annotation


# instance fields
.field private downloads:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private purchases:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sizeInKBs:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;->downloads:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;->id:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;->purchases:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;->sizeInKBs:J

    return-wide v0
.end method
