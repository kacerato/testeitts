.class public Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x7


# instance fields
.field public version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;->version:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;->version:I

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;->version:I

    return-void
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;->version:I

    return-void
.end method
