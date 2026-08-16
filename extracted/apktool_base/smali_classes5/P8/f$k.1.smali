.class public LP8/f$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/reflect/Field;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LP8/p;

.field public final synthetic f:Ljava/lang/Class;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$array",
            "val$field",
            "val$gameObject",
            "val$instance",
            "val$listener",
            "val$classAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$k;->a:[Ljava/lang/Object;

    iput-object p2, p0, LP8/f$k;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, LP8/f$k;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p4, p0, LP8/f$k;->d:Ljava/lang/Object;

    iput-object p5, p0, LP8/f$k;->e:LP8/p;

    iput-object p6, p0, LP8/f$k;->f:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LP8/f$k;->a:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    iget-object v1, p0, LP8/f$k;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_7

    :try_start_0
    iget-object v0, p0, LP8/f$k;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_1
    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    new-array v1, p1, [Ljava/lang/Object;

    if-lez p1, :cond_6

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, p1, :cond_6

    iget-object v4, p0, LP8/f$k;->a:[Ljava/lang/Object;

    array-length v5, v4

    if-le v5, v3, :cond_0

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    goto/16 :goto_7

    :cond_0
    invoke-static {v0}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_5

    const-class v5, LJAVARuntime/Component;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_1
    new-instance v5, LP8/q;

    iget-object v6, p0, LP8/f$k;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v5, v6}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_3
    const/4 v9, 0x1

    if-ge v8, v7, :cond_2

    aget-object v10, v6, v8

    iget-object v11, v10, LP8/h;->a:LP8/i;

    invoke-interface {v11, v0, v5}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v6, v10, LP8/h;->a:LP8/i;

    invoke-interface {v6, v5}, LP8/i;->newInstance(LP8/q;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    move v5, v9

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_6

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_4
    if-nez v5, :cond_3

    invoke-static {v0}, Ld8/j;->i0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    aput-object v6, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v9

    :cond_3
    if-nez v5, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_3
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    move v9, v5

    :goto_5
    if-nez v9, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v4

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, LP8/f$k;->b:Ljava/lang/reflect/Field;

    iget-object v0, p0, LP8/f$k;->d:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, LP8/f;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object p1, p0, LP8/f$k;->e:LP8/p;

    if-eqz p1, :cond_7

    iget-object v0, p0, LP8/f$k;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$k;->d:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$k;->f:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object p1, p0, LP8/f$k;->e:LP8/p;

    invoke-interface {p1}, LP8/p;->b()V

    :cond_7
    return-void
.end method
