.class public LP8/f$L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Field;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:[Ljava/lang/Object;

.field public final synthetic d:LP8/p;

.field public final synthetic e:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$field",
            "val$instance",
            "val$array",
            "val$listener",
            "val$classAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$L;->a:Ljava/lang/reflect/Field;

    iput-object p2, p0, LP8/f$L;->b:Ljava/lang/Object;

    iput-object p3, p0, LP8/f$L;->c:[Ljava/lang/Object;

    iput-object p4, p0, LP8/f$L;->d:LP8/p;

    iput-object p5, p0, LP8/f$L;->e:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object p1, p0, LP8/f$L;->a:Ljava/lang/reflect/Field;

    iget-object v0, p0, LP8/f$L;->b:Ljava/lang/Object;

    iget-object v1, p0, LP8/f$L;->c:[Ljava/lang/Object;

    invoke-static {p1, v0, v1}, LP8/f;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object p1, p0, LP8/f$L;->d:LP8/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$L;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$L;->b:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$L;->e:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
