.class public Lw6/b$c$a$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$c$a$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw6/b$c$a$c$a;


# direct methods
.method public constructor <init>(Lw6/b$c$a$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$c$a$c$a$a;->b:Lw6/b$c$a$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lw6/b$c$a$c$a$a;->b:Lw6/b$c$a$c$a;

    iget-object v0, v0, Lw6/b$c$a$c$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
