.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->S(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$w",
            "val$h",
            "val$extractCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;->c:I

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
