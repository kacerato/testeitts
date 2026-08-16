.class public LK5/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/c$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LK5/c$a;


# direct methods
.method public constructor <init>(LK5/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LK5/c$a$a;->b:LK5/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Ops!"

    const-string v1, "Unable to download additional content:no ethernet"

    invoke-static {v0, v1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LK5/c$a$a;->b:LK5/c$a;

    iget-object v0, v0, LK5/c$a;->c:LK5/c;

    invoke-virtual {v0}, LJ5/b;->b()V

    return-void
.end method
