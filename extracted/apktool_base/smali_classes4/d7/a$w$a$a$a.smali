.class public Ld7/a$w$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$w$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld7/a$w$a$a;


# direct methods
.method public constructor <init>(Ld7/a$w$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$w$a$a$a;->b:Ld7/a$w$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ld7/a$w$a$a$a;->b:Ld7/a$w$a$a;

    iget-object v0, v0, Ld7/a$w$a$a;->b:Ld7/a$w$a;

    iget-object v0, v0, Ld7/a$w$a;->a:Ld7/a$w;

    iget-object v0, v0, Ld7/a$w;->a:Ld7/a;

    invoke-static {v0}, Ld7/a;->g(Ld7/a;)V

    return-void
.end method
