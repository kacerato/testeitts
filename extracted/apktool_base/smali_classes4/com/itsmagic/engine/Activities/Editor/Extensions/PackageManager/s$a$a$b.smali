.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;->b:LZ6/g;

    invoke-virtual {v0}, LZ6/g;->q1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUCCESS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_PUBLISH_SUCCESS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZ6/h;->y1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->K1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->K1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$f;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$a$a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$f;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;)V

    :cond_0
    return-void
.end method
