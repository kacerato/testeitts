.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Sound/Imported/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preparedAudio",
            "pcmData"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method
