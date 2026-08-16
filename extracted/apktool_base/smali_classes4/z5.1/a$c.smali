.class public Lz5/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz5/a;


# direct methods
.method public constructor <init>(Lz5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$c;->a:Lz5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lz5/a$c$a;

    invoke-direct {v0, p0}, Lz5/a$c$a;-><init>(Lz5/a$c;)V

    invoke-static {v0}, LN7/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lz5/a$c$b;

    invoke-direct {v0, p0}, Lz5/a$c$b;-><init>(Lz5/a$c;)V

    invoke-static {v0}, LN7/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method
