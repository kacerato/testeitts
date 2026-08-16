.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Sound/Imported/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

.field public final b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Imported/b;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "header",
            "pcmOffsetBytes"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->c:I

    return-void
.end method
