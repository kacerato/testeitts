.class public Ld6/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/c;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Ld6/c;


# direct methods
.method public constructor <init>(Ld6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld6/c$a;->c:Ld6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ld6/c$a;->a:I

    iput-boolean p1, p0, Ld6/c$a;->b:Z

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 3

    iget-boolean v0, p0, Ld6/c$a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ld6/c$a;->b:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ld6/c$a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Ld6/c$a;->a:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Ld6/c$a;->c:Ld6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
