.class public Lj6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/d;->h(Lj6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj6/b;

.field public final synthetic c:Lj6/d;


# direct methods
.method public constructor <init>(Lj6/d;Lj6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lj6/d$a;->c:Lj6/d;

    iput-object p2, p0, Lj6/d$a;->b:Lj6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj6/d$a;->c:Lj6/d;

    invoke-static {v0}, Lj6/d;->a(Lj6/d;)Lj6/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Lj6/d$a;->b:Lj6/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lj6/d$a;->c:Lj6/d;

    invoke-static {v1}, Lj6/d;->a(Lj6/d;)Lj6/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lj6/a;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method
