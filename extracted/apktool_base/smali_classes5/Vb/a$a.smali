.class public LVb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVb/a;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LVb/a$g;

.field public final synthetic c:I

.field public final synthetic d:Loc/b;


# direct methods
.method public constructor <init>(LVb/a$g;ILoc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$pending",
            "val$hash",
            "val$sceneVFXShader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVb/a$a;->b:LVb/a$g;

    iput p2, p0, LVb/a$a;->c:I

    iput-object p3, p0, LVb/a$a;->d:Loc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LVb/a$a;->b:LVb/a$g;

    iget-object v0, v0, LVb/a$g;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, LVb/a$a;->c:I

    invoke-static {v0}, LVb/a;->a(I)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, LVb/a$a;->b:LVb/a$g;

    iget-object v2, v1, LVb/a$g;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    iput-object v0, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iget-object v0, v1, LVb/a$g;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object v0, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v0, v1, LVb/a$g;->d:Ljava/util/Map;

    iget-object v1, p0, LVb/a$a;->d:Loc/b;

    invoke-static {v0, v1}, LVb/a;->b(Ljava/util/Map;Loc/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->f:Ljava/util/List;

    iget-object v0, p0, LVb/a$a;->b:LVb/a$g;

    iget-object v0, v0, LVb/a$g;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iget-object v1, p0, LVb/a$a;->d:Loc/b;

    invoke-static {v1}, LVb/a;->c(Loc/b;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d(J)V

    :cond_2
    return-void
.end method
