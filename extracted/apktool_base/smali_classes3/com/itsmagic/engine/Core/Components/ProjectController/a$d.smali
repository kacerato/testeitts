.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a;->o0(Ljava/lang/String;LI5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI5/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LI5/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$fileTable",
            "val$projectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$d;->b:LI5/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$d;->b:LI5/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->b(LI5/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lc4/a;->k(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
