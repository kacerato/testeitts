.class public Lu8/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/c;->f(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;Lu8/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/d;

.field public final synthetic b:Lu8/c;


# direct methods
.method public constructor <init>(Lu8/c;Lu8/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$serviceListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/c$c;->b:Lu8/c;

    iput-object p2, p0, Lu8/c$c;->a:Lu8/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0x0005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu8/c$c;->a:Lu8/d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lu8/d;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu8/c$c;->a:Lu8/d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lu8/d;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p1, p0, Lu8/c$c;->a:Lu8/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lu8/d;->onSuccess()V

    :cond_0
    return-void
.end method
