.class public Le6/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/l;->S1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

.field public final synthetic b:Le6/l;


# direct methods
.method public constructor <init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$attribute"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/l$c;->b:Le6/l;

    iput-object p2, p0, Le6/l$c;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

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

    iget-object v0, p0, Le6/l$c;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v0, :cond_1

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

    iget-object p1, p0, Le6/l$c;->b:Le6/l;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le6/l;->C1(Le6/l;Z)V

    iget-object p1, p0, Le6/l$c;->b:Le6/l;

    invoke-static {p1}, Le6/l;->D1(Le6/l;)V

    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
