.class public LW3/a$d;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW3/a;->y(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LW3/a;


# direct methods
.method public constructor <init>(LW3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW3/a$d;->a:LW3/a;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->codeCompletion:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    iget-object p1, p0, LW3/a$d;->a:LW3/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->B()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;

    invoke-virtual {p0, p1}, LW3/a$d;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$a;)V

    return-void
.end method
