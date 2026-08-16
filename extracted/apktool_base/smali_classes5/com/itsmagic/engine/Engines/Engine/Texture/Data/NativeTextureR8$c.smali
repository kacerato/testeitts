.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->S(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->c:I

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
