.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation


# instance fields
.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private language:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private text:Ljava/lang/String;
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

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;->id:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;->language:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;->text:Ljava/lang/String;

    return-object v0
.end method
