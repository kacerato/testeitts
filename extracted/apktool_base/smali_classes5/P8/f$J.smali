.class public LP8/f$J;
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

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/reflect/Field;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LP8/p;

.field public final synthetic f:Ljava/lang/Class;


# direct methods
.method public constructor <init>([Ljava/lang/Object;ILjava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V
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
            "val$finalI",
            "val$field",
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

    iput-object p1, p0, LP8/f$J;->a:[Ljava/lang/Object;

    iput p2, p0, LP8/f$J;->b:I

    iput-object p3, p0, LP8/f$J;->c:Ljava/lang/reflect/Field;

    iput-object p4, p0, LP8/f$J;->d:Ljava/lang/Object;

    iput-object p5, p0, LP8/f$J;->e:LP8/p;

    iput-object p6, p0, LP8/f$J;->f:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, LP8/f$J;->a:[Ljava/lang/Object;

    iget v1, p0, LP8/f$J;->b:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$J;->a:[Ljava/lang/Object;

    iget v1, p0, LP8/f$J;->b:I

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    aput-object p1, v0, v1

    iget-object p1, p0, LP8/f$J;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$J;->d:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, LP8/f;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object p1, p0, LP8/f$J;->e:LP8/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$J;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$J;->d:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$J;->f:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
