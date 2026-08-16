.class public Ld7/a$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$l;->c(LM7/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM7/g;

.field public final synthetic c:Ld7/a$l;


# direct methods
.method public constructor <init>(Ld7/a$l;LM7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tbElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$l$b;->c:Ld7/a$l;

    iput-object p2, p0, Ld7/a$l$b;->b:LM7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld7/a$l$b;->c:Ld7/a$l;

    iget-object v0, v0, Ld7/a$l;->b:Ld7/a;

    invoke-static {v0}, Ld7/a;->c(Ld7/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ld7/a$l$b;->b:LM7/g;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld7/a$l$b;->c:Ld7/a$l;

    iget-object v0, v0, Ld7/a$l;->b:Ld7/a;

    invoke-static {v0}, Ld7/a;->c(Ld7/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ld7/a$l$b;->b:LM7/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld7/a$l$b;->c:Ld7/a$l;

    iget-object v0, v0, Ld7/a$l;->b:Ld7/a;

    iget-object v1, p0, Ld7/a$l$b;->b:LM7/g;

    invoke-static {v0, v1}, Ld7/a;->d(Ld7/a;LM7/g;)V

    :cond_0
    return-void
.end method
