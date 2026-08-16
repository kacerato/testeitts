.class public LP8/f$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJAVARuntime/InspectorMemory;

.field public final synthetic b:Ljava/lang/reflect/Field;

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;


# direct methods
.method public constructor <init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$inspectorMemory",
            "val$field",
            "val$finalX1",
            "val$finalelementEditor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$l;->a:LJAVARuntime/InspectorMemory;

    iput-object p2, p0, LP8/f$l;->b:Ljava/lang/reflect/Field;

    iput p3, p0, LP8/f$l;->c:I

    iput-object p4, p0, LP8/f$l;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    iget-object p1, p0, LP8/f$l;->a:LJAVARuntime/InspectorMemory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LP8/f$l;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LP8/f$l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, LP8/f$l;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LJAVARuntime/InspectorMemory;->store(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
