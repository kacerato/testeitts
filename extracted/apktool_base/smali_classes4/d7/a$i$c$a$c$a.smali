.class public Ld7/a$i$c$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c$a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$a$c;


# direct methods
.method public constructor <init>(Ld7/a$i$c$a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$a$c$a;->a:Ld7/a$i$c$a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "EDITOR_TOP_BAR_CREATE_NEW_BACKUP_BUTTON"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ld7/a$i$c$a$c$a$a;

    invoke-direct {v0, p0}, Ld7/a$i$c$a$c$a$a;-><init>(Ld7/a$i$c$a$c$a;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->g0(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;)V

    return-void
.end method
