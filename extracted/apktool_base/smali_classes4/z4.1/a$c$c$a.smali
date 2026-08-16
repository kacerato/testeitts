.class public Lz4/a$c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/a$c$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz4/a$c$c;


# direct methods
.method public constructor <init>(Lz4/a$c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lz4/a$c$c$a;->a:Lz4/a$c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lz4/a$c$c$a;->a:Lz4/a$c$c;

    iget-object v0, v0, Lz4/a$c$c;->a:Lz4/a$c;

    iget-object v0, v0, Lz4/a$c;->e:Lz4/a;

    invoke-static {v0}, Lz4/a;->i(Lz4/a;)Lz4/a$e;

    move-result-object v0

    iget-object v1, p0, Lz4/a$c$c$a;->a:Lz4/a$c$c;

    iget-object v1, v1, Lz4/a$c$c;->a:Lz4/a$c;

    iget-object v1, v1, Lz4/a$c;->d:LA4/c;

    invoke-interface {v0, v1}, Lz4/a$e;->a(LA4/c;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
