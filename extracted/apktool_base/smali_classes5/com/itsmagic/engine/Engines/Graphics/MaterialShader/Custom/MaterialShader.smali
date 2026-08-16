.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient a:Z

.field public transient b:Ljava/lang/String;

.field public transient c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public transient d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public transient e:J

.field public transient f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation
.end field

.field public final transient g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVb/b;",
            ">;"
        }
    .end annotation
.end field

.field private ipp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->e:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->ipp:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compiledSceneVFXShaderHash"
        }
    .end annotation

    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->e:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->ipp:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->name:Ljava/lang/String;

    return-void
.end method
