.class public Le6/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/l;->Q1(Landroid/view/View;Lga/H;Lga/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lga/H;

.field public final synthetic b:Lga/H;

.field public final synthetic c:Le6/l;


# direct methods
.method public constructor <init>(Le6/l;Lga/H;Lga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$listItemType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/l$a;->c:Le6/l;

    iput-object p2, p0, Le6/l$a;->a:Lga/H;

    iput-object p3, p0, Le6/l$a;->b:Lga/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Attribute"

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    iget-object p1, p0, Le6/l$a;->a:Lga/H;

    iget-object v1, p0, Le6/l$a;->b:Lga/H;

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->i(Lga/H;Lga/H;)V

    iget-object p1, p0, Le6/l$a;->c:Le6/l;

    invoke-static {p1}, Le6/l;->A1(Le6/l;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    iget-object p1, p0, Le6/l$a;->c:Le6/l;

    invoke-static {p1}, Le6/l;->B1(Le6/l;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Le6/l$a;->c:Le6/l;

    invoke-static {p1, v1}, Le6/l;->C1(Le6/l;Z)V

    iget-object p1, p0, Le6/l$a;->c:Le6/l;

    invoke-static {p1}, Le6/l;->D1(Le6/l;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
