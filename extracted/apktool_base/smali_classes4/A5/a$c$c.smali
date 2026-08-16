.class public LA5/a$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA5/a$c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LA5/a$c;


# direct methods
.method public constructor <init>(LA5/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LA5/a$c$c;->b:LA5/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LA5/a$c$c;->b:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA5/a$c$c;->b:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    invoke-virtual {v0}, LB5/a;->c()V

    :cond_0
    return-void
.end method
