.class public LP6/c$l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c$l$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP6/c$l$a;


# direct methods
.method public constructor <init>(LP6/c$l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LP6/c$l$a$a;->b:LP6/c$l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LP6/c$l$a$a;->b:LP6/c$l$a;

    iget-object v0, v0, LP6/c$l$a;->b:LP6/c$l;

    iget-object v0, v0, LP6/c$l;->c:LP6/c;

    invoke-static {v0}, LP6/c;->s1(LP6/c;)V

    return-void
.end method
