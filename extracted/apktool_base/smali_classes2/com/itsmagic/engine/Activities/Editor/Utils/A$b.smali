.class public Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/A;->b(Landroid/content/Context;Landroid/view/View;LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG8/a;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/B;


# direct methods
.method public constructor <init>(LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$shader",
            "val$callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;->a:LG8/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/B;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;->a:LG8/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LG8/a;->j()LG8/a$a;

    move-result-object p1

    sget-object v0, LG8/a$a;->Folder:LG8/a$a;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/B;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;->a:LG8/a;

    invoke-virtual {v0}, LG8/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/B;->onSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
