.class public LZ3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Miscellaneous"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    new-instance v0, LZ3/b;

    invoke-direct {v0}, LZ3/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->v(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    return-void
.end method
