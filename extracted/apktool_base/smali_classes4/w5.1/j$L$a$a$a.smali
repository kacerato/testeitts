.class public Lw5/j$L$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$L$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$L$a$a;


# direct methods
.method public constructor <init>(Lw5/j$L$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$L$a$a$a;->a:Lw5/j$L$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lw5/j$L$a$a$a$b;

    invoke-direct {v0, p0}, Lw5/j$L$a$a$a$b;-><init>(Lw5/j$L$a$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lw5/j$L$a$a$a$a;

    invoke-direct {v0, p0}, Lw5/j$L$a$a$a$a;-><init>(Lw5/j$L$a$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
