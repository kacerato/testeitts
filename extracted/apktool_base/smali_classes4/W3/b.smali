.class public LW3/b;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Scripting"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    new-instance v0, LW3/a;

    invoke-direct {v0}, LW3/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->v(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    return-void
.end method
