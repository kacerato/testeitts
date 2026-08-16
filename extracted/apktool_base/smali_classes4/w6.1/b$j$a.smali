.class public Lw6/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw6/b$j;


# direct methods
.method public constructor <init>(Lw6/b$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$j$a;->a:Lw6/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw6/b$j$a$a;

    invoke-direct {v1, p0, p1}, Lw6/b$j$a$a;-><init>(Lw6/b$j$a;Lq7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
