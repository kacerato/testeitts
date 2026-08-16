.class public Lz6/c$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/c$c$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz6/c$c$a$a;


# direct methods
.method public constructor <init>(Lz6/c$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lz6/c$c$a$a$a;->a:Lz6/c$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-static {}, Ld8/j;->v0()V

    iget-object v0, p0, Lz6/c$c$a$a$a;->a:Lz6/c$c$a$a;

    iget-object v0, v0, Lz6/c$c$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
