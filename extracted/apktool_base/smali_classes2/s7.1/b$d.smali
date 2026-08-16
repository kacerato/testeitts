.class public Ls7/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/b;->u1(Ls7/c;)Ls7/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls7/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls7/c;

.field public final synthetic b:Ls7/b;


# direct methods
.method public constructor <init>(Ls7/b;Ls7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls7/b$d;->b:Ls7/b;

    iput-object p2, p0, Ls7/b$d;->a:Ls7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ls7/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls7/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ls7/b$d;->b:Ls7/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ls7/b$d;->b:Ls7/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object v0, p0, Ls7/b$d;->a:Ls7/c;

    invoke-virtual {v0, p1}, Ls7/c;->e(Ljava/lang/String;)Ls7/c;

    move-result-object p1

    iget-object v0, p0, Ls7/b$d;->b:Ls7/b;

    invoke-static {v0, p1}, Ls7/b;->s1(Ls7/b;Ls7/c;)V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Ls7/b$d;->b:Ls7/b;

    invoke-static {v0}, Ls7/b;->p1(Ls7/b;)Lpf/m;

    move-result-object v0

    invoke-virtual {v0}, Lpf/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls7/b$d;->b:Ls7/b;

    invoke-static {v0}, Ls7/b;->p1(Ls7/b;)Lpf/m;

    move-result-object v1

    iget-object v2, p0, Ls7/b$d;->b:Ls7/b;

    invoke-static {v2}, Ls7/b;->p1(Ls7/b;)Lpf/m;

    move-result-object v2

    invoke-virtual {v2}, Lpf/h;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lpf/h;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls7/c;

    invoke-static {v0, v1}, Ls7/b;->q1(Ls7/b;Ls7/c;)V

    :cond_0
    return-void
.end method

.method public e(Ls7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    iget-object v0, p0, Ls7/b$d;->b:Ls7/b;

    invoke-static {v0, p1}, Ls7/b;->s1(Ls7/b;Ls7/c;)V

    return-void
.end method
