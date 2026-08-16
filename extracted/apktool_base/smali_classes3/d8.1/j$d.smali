.class public Ld8/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j;->F0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lo8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo8/a;


# direct methods
.method public constructor <init>(Lo8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld8/j$d;->a:Lo8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object v0, p0, Ld8/j$d;->a:Lo8/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo8/a;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
