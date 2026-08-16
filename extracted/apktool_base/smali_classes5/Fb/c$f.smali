.class public LFb/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFb/c;->s(Ljava/io/File;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LFb/c$g;


# direct methods
.method public constructor <init>(LFb/c$g;)V
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

    iput-object p1, p0, LFb/c$f;->a:LFb/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LFb/c$f;->a:LFb/c$g;

    invoke-interface {v0, p1}, LFb/c$g;->setProgress(F)V

    return-void
.end method
