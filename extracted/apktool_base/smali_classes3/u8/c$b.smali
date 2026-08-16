.class public Lu8/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/c;->e(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;Lu8/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

.field public final synthetic b:Lu8/d;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lu8/c;


# direct methods
.method public constructor <init>(Lu8/c;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;Lu8/d;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pendingCompilation",
            "val$serviceListener",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/c$b;->d:Lu8/c;

    iput-object p2, p0, Lu8/c$b;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    iput-object p3, p0, Lu8/c$b;->b:Lu8/d;

    iput-object p4, p0, Lu8/c$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageBuilder upload error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lu8/c$b;->b:Lu8/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lu8/d;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p1, p0, Lu8/c$b;->d:Lu8/c;

    iget-object v0, p0, Lu8/c$b;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    iget-object v1, p0, Lu8/c$b;->b:Lu8/d;

    iget-object v2, p0, Lu8/c$b;->c:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, v2}, Lu8/c;->f(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;Lu8/d;Landroid/content/Context;)V

    return-void
.end method
