.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->askPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/karumi/dexter/Dexter;->withContext(Landroid/content/Context;)Lcom/karumi/dexter/DexterBuilder$Permission;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v1, v2}, Lcom/karumi/dexter/DexterBuilder$Permission;->withPermission(Ljava/lang/String;)Lcom/karumi/dexter/DexterBuilder$SinglePermissionListener;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$b$a;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$b;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/karumi/dexter/DexterBuilder$SinglePermissionListener;->withListener(Lcom/karumi/dexter/listener/single/PermissionListener;)Lcom/karumi/dexter/DexterBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/karumi/dexter/DexterBuilder;->check()V

    return-void
.end method
