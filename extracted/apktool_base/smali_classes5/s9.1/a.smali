.class public final synthetic Ls9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

    iput p2, p0, Ls9/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

    iget v1, p0, Ls9/a;->c:I

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;I)V

    return-void
.end method
