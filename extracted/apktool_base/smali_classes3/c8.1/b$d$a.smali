.class public Lc8/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc8/b$d;


# direct methods
.method public constructor <init>(Lc8/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lc8/b$d$a;->a:Lc8/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public onSuccess()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lc8/b;->h:Ljava/lang/String;

    invoke-static {}, Lc8/b;->f()V

    new-instance v0, Lc8/b$d$a$a;

    invoke-direct {v0, p0}, Lc8/b$d$a$a;-><init>(Lc8/b$d$a;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
