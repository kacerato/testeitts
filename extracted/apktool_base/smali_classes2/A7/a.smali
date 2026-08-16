.class public final synthetic LA7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LA7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;)V

    return-void
.end method
