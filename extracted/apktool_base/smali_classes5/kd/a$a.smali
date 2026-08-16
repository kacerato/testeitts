.class public Lkd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkd/a;->a(ILkd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkd/b;

.field public final synthetic c:Lkd/a;


# direct methods
.method public constructor <init>(Lkd/a;Lkd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lkd/a$a;->c:Lkd/a;

    iput-object p2, p0, Lkd/a$a;->b:Lkd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lkd/a$a;->b:Lkd/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkd/b;->run()V

    :cond_0
    return-void
.end method
