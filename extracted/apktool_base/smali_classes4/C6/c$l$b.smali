.class public LC6/c$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c$l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC6/c$l;


# direct methods
.method public constructor <init>(LC6/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC6/c$l$b;->b:LC6/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LC6/c$l$b;->b:LC6/c$l;

    iget-object v0, v0, LC6/c$l;->a:LC6/c;

    invoke-static {v0}, LC6/c;->w(LC6/c;)V

    return-void
.end method
