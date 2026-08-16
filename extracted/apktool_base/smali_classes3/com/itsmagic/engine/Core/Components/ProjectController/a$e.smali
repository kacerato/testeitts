.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a;->g0(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$projectName",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;Landroid/content/Context;Lq7/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
