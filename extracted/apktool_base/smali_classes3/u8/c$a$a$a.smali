.class public Lu8/c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/c$a$a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/c$a$a;


# direct methods
.method public constructor <init>(Lu8/c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lu8/c$a$a$a;->a:Lu8/c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lu8/c$a$a$a;->a:Lu8/c$a$a;

    iget-object v0, v0, Lu8/c$a$a;->a:LZ6/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ops! keystore upload failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ops!"

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p1, p0, Lu8/c$a$a$a;->a:Lu8/c$a$a;

    iget-object p1, p1, Lu8/c$a$a;->a:LZ6/g;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Lu8/c$a$a$a;->a:Lu8/c$a$a;

    iget-object p1, p1, Lu8/c$a$a;->b:Lu8/c$a;

    iget-object v0, p1, Lu8/c$a;->c:Lu8/c;

    iget-object p1, p1, Lu8/c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lu8/c;->a(Ljava/lang/String;)V

    return-void
.end method
