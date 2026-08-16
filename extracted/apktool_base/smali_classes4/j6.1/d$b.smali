.class public Lj6/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/d;->i(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lj6/d;


# direct methods
.method public constructor <init>(Lj6/d;Ljava/util/List;)V
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

    iput-object p1, p0, Lj6/d$b;->c:Lj6/d;

    iput-object p2, p0, Lj6/d$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj6/d$b;->c:Lj6/d;

    invoke-static {v0}, Lj6/d;->a(Lj6/d;)Lj6/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj6/d$b;->c:Lj6/d;

    invoke-static {v0}, Lj6/d;->a(Lj6/d;)Lj6/a;

    move-result-object v0

    iget-object v1, p0, Lj6/d$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lj6/a;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method
