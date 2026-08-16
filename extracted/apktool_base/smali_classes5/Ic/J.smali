.class public LIc/J;
.super LLb/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    invoke-direct {p0}, LLb/c;-><init>()V

    iput-object p1, p0, LIc/J;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method
