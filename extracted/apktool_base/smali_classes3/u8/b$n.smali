.class public Lu8/b$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$n;->a:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    new-instance v0, Lu8/b$n$a;

    invoke-direct {v0, p0}, Lu8/b$n$a;-><init>(Lu8/b$n;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lu8/b$n;->a:Lu8/b;

    invoke-virtual {v0}, Lu8/b;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lu8/b$n$b;

    invoke-direct {v0, p0}, Lu8/b$n$b;-><init>(Lu8/b$n;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
