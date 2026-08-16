.class public Li6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li6/a;


# direct methods
.method public constructor <init>(Li6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li6/a$a;->a:Li6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    invoke-static {v0}, Li6/a;->p1(Li6/a;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj6/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    invoke-virtual {v0, p1}, Li6/a;->B1(Ljava/util/List;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    invoke-virtual {v0}, Li6/a;->C1()V

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    invoke-static {v0}, Li6/a;->q1(Li6/a;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method
