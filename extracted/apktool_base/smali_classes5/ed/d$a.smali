.class public Led/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led/d;->d(Lhd/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lhd/e;

.field public final synthetic c:Led/d;


# direct methods
.method public constructor <init>(Led/d;Lhd/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Led/d$a;->c:Led/d;

    iput-object p2, p0, Led/d$a;->b:Lhd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Led/d$a;->c:Led/d;

    iget-object v1, p0, Led/d$a;->b:Lhd/e;

    filled-new-array {v1}, [Lhd/e;

    move-result-object v1

    invoke-static {v0, v1}, Led/d;->a(Led/d;[Lhd/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Led/d$a$a;

    invoke-direct {v1, p0, v0}, Led/d$a$a;-><init>(Led/d$a;Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
