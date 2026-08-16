.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;
.super LIc/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lcc/d;

.field public c:Lec/h;

.field public d:Lec/i;


# direct methods
.method public constructor <init>(Lcc/d;Lec/h;Lec/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderConstructor",
            "forwardShader",
            "variance"
        }
    .end annotation

    invoke-direct {p0}, LIc/m;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->b:Lcc/d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->c:Lec/h;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->d:Lec/i;

    return-void
.end method
