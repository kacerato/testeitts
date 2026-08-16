.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->H1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:Ljava/io/File;

.field public final synthetic h:Ljava/io/File;

.field public final synthetic i:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$objFile",
            "val$prompt",
            "val$gameObject",
            "val$normalTexture",
            "val$metallicTexture",
            "val$roughnessTexture",
            "val$textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->i:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->e:Ljava/io/File;

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->f:Ljava/io/File;

    iput-object p7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->g:Ljava/io/File;

    iput-object p8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->h:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;Lq7/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
