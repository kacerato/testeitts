.class public final Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

.field public final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "face",
            "bitmap"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;->b:Landroid/graphics/Bitmap;

    return-void
.end method
