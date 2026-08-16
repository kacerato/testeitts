.class LJAVARuntime/Map2$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Map2$1;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Map2$1;

.field final synthetic val$classInstance:Ljava/lang/Object;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$finalI:I

.field final synthetic val$finalMap:LJAVARuntime/Map2;


# direct methods
.method public constructor <init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalMap",
            "val$finalI",
            "val$field",
            "val$classInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Map2$1$3;->this$0:LJAVARuntime/Map2$1;

    iput-object p2, p0, LJAVARuntime/Map2$1$3;->val$finalMap:LJAVARuntime/Map2;

    iput p3, p0, LJAVARuntime/Map2$1$3;->val$finalI:I

    iput-object p4, p0, LJAVARuntime/Map2$1$3;->val$field:Ljava/lang/reflect/Field;

    iput-object p5, p0, LJAVARuntime/Map2$1$3;->val$classInstance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LJAVARuntime/Map2$1$3;->val$finalMap:LJAVARuntime/Map2;

    invoke-static {v2}, LJAVARuntime/Map2;->access$100(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, LJAVARuntime/Map2$1$3;->val$finalI:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Map2$1$3;->val$finalMap:LJAVARuntime/Map2;

    invoke-static {v0}, LJAVARuntime/Map2;->access$100(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, LJAVARuntime/Map2$1$3;->val$finalI:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, LJAVARuntime/Map2$1$3;->val$field:Ljava/lang/reflect/Field;

    iget-object v0, p0, LJAVARuntime/Map2$1$3;->val$classInstance:Ljava/lang/Object;

    iget-object v1, p0, LJAVARuntime/Map2$1$3;->val$finalMap:LJAVARuntime/Map2;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
