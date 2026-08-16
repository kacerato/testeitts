.class public Lw5/j$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw5/j$c$a;


# direct methods
.method public constructor <init>(Lw5/j$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$c$a$a;->b:Lw5/j$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lw5/j$c$a$a;->b:Lw5/j$c$a;

    iget-object v0, v0, Lw5/j$c$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
